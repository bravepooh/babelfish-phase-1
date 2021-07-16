pragma solidity 0.5.16;
pragma experimental ABIEncoderV2;

import { SafeMath } from "@openzeppelin/contracts/math/SafeMath.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IERC777Recipient } from "@openzeppelin/contracts/token/ERC777/IERC777Recipient.sol";
import { IERC1820Registry } from "@openzeppelin/contracts/introspection/IERC1820Registry.sol";
import { InitializableOwnable } from "../helpers/InitializableOwnable.sol";
import { InitializableReentrancyGuard } from "../helpers/InitializableReentrancyGuard.sol";
import { IBridge } from "./IBridge.sol";
import { BasketManagerV3 } from "./BasketManagerV3.sol";
import { Vault } from "./Vault.sol";
import "./Token.sol";

contract MassetV3 is IERC777Recipient, InitializableOwnable, InitializableReentrancyGuard {

    using SafeMath for uint256;

    // Events

    event Minted(
        address indexed minter,
        address indexed recipient,
        uint256 massetQuantity,
        address bAsset,
        uint256 bassetQuantity
    );

    event Redeemed(
        address indexed redeemer,
        address indexed recipient,
        uint256 massetQuantity,
        address bAsset,
        uint256 bassetQuantity
    );

    event onTokensReceivedCalled(
        address operator,
        address from,
        address to,
        uint amount,
        bytes userData,
        bytes operatorData
    );

    event onTokensMintedCalled(
        address indexed sender,
        uint256 orderAmount,
        address tokenAddress,
        bytes userData
    );

    // state

    uint256 constant FEE_PRECISION = 1000;

    string private version;
    uint256 private feeAmount;
    address private vaultAddress;
    BasketManagerV3 private basketManager;
    Token private token;

    // internal

    function registerAsERC777Recipient() internal {
        IERC1820Registry ERC1820 = IERC1820Registry(0x1820a4B7618BdE71Dce8cdc73aAB6C95905faD24);
        ERC1820.setInterfaceImplementer(address(this), keccak256("ERC777TokensRecipient"), address(this));
    }

    /**
     * @dev Calculate and return fee amount based on massetAmount
     * @param massetAmount  amount of masset to deposit / withdraw
     * @return fee          calculated   amount of fee
     */
    function calculateFee(uint256 massetAmount) internal view returns(uint256 fee) {
        return (massetAmount * feeAmount) / FEE_PRECISION;
    }

    // public

    function initialize(
        address _basketManagerAddress,
        address _tokenAddress,
        bool _registerAsERC777RecipientFlag) public {

        require(address(basketManager) == address(0) && address(token) == address(0), "already initialized");
        require(_basketManagerAddress != address(0), "invalid basket manager");
        require(_tokenAddress != address(0), "invalid token");

        InitializableOwnable._initialize();
        InitializableReentrancyGuard._initialize();

        basketManager = BasketManagerV3(_basketManagerAddress);
        token = Token(_tokenAddress);
        if(_registerAsERC777RecipientFlag) {
            registerAsERC777Recipient();
        }

        version = "1.0";
    }

    /***************************************
                MINTING (PUBLIC)
    ****************************************/

    /**
     * @dev Mint a single bAsset, at a 1:1 ratio with the bAsset. This contract
     *      must have approval to spend the senders bAsset
     * @param _bAsset         Address of the bAsset to mint
     * @param _bAssetQuantity Quantity in bAsset units
     * @return massetMinted   Number of newly minted mAssets
     */
    function mint(
        address _bAsset,
        uint256 _bAssetQuantity
    )
    external
    nonReentrant
    returns (uint256 massetMinted)
    {
        return _mintTo(_bAsset, _bAssetQuantity, msg.sender);
    }

    /**
     * @dev Mint a single bAsset, at a 1:1 ratio with the bAsset. This contract
     *      must have approval to spend the senders bAsset
     * @param _bAsset         Address of the bAsset to mint
     * @param _bAssetQuantity Quantity in bAsset units
     * @param _recipient receipient of the newly minted mAsset tokens
     * @return massetMinted   Number of newly minted mAssets
     */
    function mintTo(
        address _bAsset,
        uint256 _bAssetQuantity,
        address _recipient
    )
    external
    nonReentrant
    returns (uint256 massetMinted)
    {
        return _mintTo(_bAsset, _bAssetQuantity, _recipient);
    }

    /***************************************
              MINTING (INTERNAL)
    ****************************************/

    function _mintTo(
        address _basset,
        uint256 _bassetQuantity,
        address _recipient
    )
    internal
    returns (uint256 massetMinted)
    {
        require(_recipient != address(0), "must be a valid recipient");
        require(_bassetQuantity > 0, "quantity must not be 0");

        require(basketManager.isValidBasset(_basset), "invalid basset");
        require(basketManager.checkBasketBalanceForDeposit(_basset, _bassetQuantity), "invalid basket");

        uint256 massetQuantity = basketManager.convertBassetToMassetQuantity(_basset, _bassetQuantity);

        IERC20(_basset).transferFrom(msg.sender, address(this), _bassetQuantity);

        uint256 massetsToMint = _mintAndCalulateFee(massetQuantity);
        token.mint(_recipient, massetsToMint);

        emit Minted(msg.sender, _recipient, massetsToMint, _basset, _bassetQuantity);

        return massetQuantity;
    }

    /**
     * @dev mint calculated fee
     * @param massetQuantity    amount of massets
     * @return massetsToMint    amount of massets that is left to mint for user
     */
    function _mintAndCalulateFee(uint256 massetQuantity) internal returns (uint256 massetsToMint) {
        uint256 fee = calculateFee(massetQuantity);
        massetsToMint = massetQuantity.sub(fee);

        token.mint(vaultAddress, fee);

        return massetsToMint;
    }

    /***************************************
              REDEMPTION (PUBLIC)
    ****************************************/

    /**
     * @dev Credits the sender with a certain quantity of selected bAsset, in exchange for burning the
     *      relative mAsset quantity from the sender. Sender also incurs a small mAsset fee, if any.
     * @param _bAsset           Address of the bAsset to redeem
     * @param _massetQuantity   Units of the masset to redeem
     * @return massetMinted     Relative number of mAsset units burned to pay for the bAssets
     */
    function redeem(
        address _bAsset,
        uint256 _massetQuantity
    ) external nonReentrant returns (uint256 massetRedeemed) {
        return _redeemTo(_bAsset, _massetQuantity, msg.sender, false);
    }

    /**
     * @dev Credits a recipient with a certain quantity of selected bAsset, in exchange for burning the
     *      relative Masset quantity from the sender. Sender also incurs a small fee, if any.
     * @param _bAsset           Address of the bAsset to redeem
     * @param _massetQuantity   Units of the masset to redeem
     * @param _recipient        Address to credit with withdrawn bAssets
     * @return massetMinted     Relative number of mAsset units burned to pay for the bAssets
     */
    function redeemTo(
        address _bAsset,
        uint256 _massetQuantity,
        address _recipient
    ) external nonReentrant returns (uint256 massetRedeemed) {
        return _redeemTo(_bAsset, _massetQuantity, _recipient, false);
    }

    /***************************************
              REDEMPTION (INTERNAL)
    ****************************************/

    function _redeemTo(
        address _basset,
        uint256 _massetQuantity,
        address _recipient,
        bool bridgeFlag
    ) internal returns (uint256 massetRedeemed) {
        require(_recipient != address(0), "must be a valid recipient");
        require(_massetQuantity > 0, "masset quantity must be greater than 0");
        require(basketManager.isValidBasset(_basset), "invalid basset");

        uint256 massetsToBurn = _transferAndCalulateFee(_massetQuantity, msg.sender);
        uint256 bassetQuantity = basketManager.convertMassetToBassetQuantity(_basset, massetsToBurn);

        require(basketManager.checkBasketBalanceForWithdrawal(_basset, bassetQuantity), "invalid basket");

        if(bridgeFlag) {
            address bridgeAddress = basketManager.getBridge(_basset);
            require(bridgeAddress != address(0), "invalid bridge");
            IERC20(_basset).approve(bridgeAddress, bassetQuantity);
            require(
                IBridge(bridgeAddress).receiveTokensAt(_basset, bassetQuantity, _recipient, bytes("")),
                "call to bridge failed");
        } else {
            IERC20(_basset).transfer(_recipient, bassetQuantity);
        }

        token.burn(msg.sender, massetsToBurn);
        emit Redeemed(msg.sender, _recipient, massetsToBurn, _basset, bassetQuantity);

        return _massetQuantity;
    }

    /**
     * @dev transfers calculated fee
     *      must have approval to spend the senders Masset
     * @param massetQuantity        amount of massets to withdraw
     * @param sender                owner of massets
     * @return massetsToBurn        amount of massets that is left to burn
     */
    function _transferAndCalulateFee(uint256 massetQuantity, address sender) internal returns (uint256 massetsToBurn) {
        uint256 fee = calculateFee(massetQuantity);
        massetsToBurn = massetQuantity.sub(fee);

        require(token.transferFrom(sender, vaultAddress, fee), "fee transfer failed");

        return massetsToBurn;
    }

    // For the BRIDGE

    /**
     * @dev Credits a recipient with a certain quantity of selected bAsset, in exchange for burning the
     *      relative Masset quantity from the sender. Sender also incurs a small fee, if any.
     *      This function is designed to also call the bridge in order to have the basset tokens sent to
     *      another blockchain.
     * @param _basset           Address of the bAsset to redeem
     * @param _massetQuantity   Units of the masset to redeem
     * @param _recipient        Address to credit with withdrawn bAssets
     * @param _bridgeAddress    This is ignored and is left here for backward compatibility with the FE
     * @return massetMinted     Relative number of mAsset units burned to pay for the bAssets
     */
    function redeemToBridge(
        address _basset,
        uint256 _massetQuantity,
        address _recipient,
        address _bridgeAddress // IGNORED! for backward compatibility
    ) external nonReentrant returns (uint256 massetRedeemed) {
        return _redeemTo(_basset, _massetQuantity, _recipient, true);
    }

    /**
     * @dev Credits a recipient with a certain quantity of selected bAsset, in exchange for burning the
     *      relative Masset quantity from the sender. Sender also incurs a small fee, if any.
     *      This function is designed to also call the bridge in order to have the basset tokens sent to
     *      another blockchain.
     * @param _basset           Address of the bAsset to redeem
     * @param _massetQuantity   Units of the masset to redeem
     * @param _recipient        Address to credit with withdrawn bAssets
     * @return massetMinted     Relative number of mAsset units burned to pay for the bAssets
     */
    function redeemToBridge(
        address _basset,
        uint256 _massetQuantity,
        address _recipient
    ) external nonReentrant returns (uint256 massetRedeemed) {
        return _redeemTo(_basset, _massetQuantity, _recipient, true);
    }

    function _decodeAddress(bytes memory data) private pure returns (address) {
        address addr = abi.decode(data, (address));
        require(addr != address(0), "Converter: Error decoding extraData");
        return addr;
    }

    function _encodeAddress(address _address) private pure returns (bytes memory) {
        require(_address != address(0), "Converter: Error encoding extraData");
        return abi.encode(_address);
    }

    function tokensReceived(
        address _operator,
        address _from,
        address _to,
        uint _amount,
        bytes calldata _userData,
        bytes calldata _operatorData
    ) external {
        emit onTokensReceivedCalled(
            _operator,
            _from,
            _to,
            _amount,
            _userData,
            _operatorData
        );
    }

    /**
     * @dev This is called by the bridge to let us know the user has sent tokens through it and
     *      into the masset.
     * @param _orderAmount      Units of the masset to redeem
     * @param _tokenAddress     Address of the bAsset to redeem
     * @param _userData         Address of the final recipient as ABI encoded bytes
     */
    function onTokensMinted(
        uint256 _orderAmount,
        address _tokenAddress,
        bytes calldata _userData
    ) external nonReentrant {
        emit onTokensMintedCalled(msg.sender, _orderAmount, _tokenAddress, _userData);

        require(_orderAmount > 0, "amount must be > 0");

        address recipient =  _decodeAddress(_userData);
        address basset = _tokenAddress;

        address bridgeAddress = basketManager.getBridge(basset);
        require(msg.sender == bridgeAddress, "only bridge may call");

        require(basketManager.isValidBasset(basset), "invalid basset");
        require(basketManager.checkBasketBalanceForDeposit(basset, _orderAmount), "basket out of balance");

        uint256 massetQuantity = basketManager.convertBassetToMassetQuantity(basset, _orderAmount);
        uint256 massetsToMint = _mintAndCalulateFee(massetQuantity);
        token.mint(recipient, massetsToMint);

        emit Minted(msg.sender, recipient, massetsToMint, basset, _orderAmount);
    }

    // Getters

    function getVersion() external view returns (string memory) {
        return version;
    }

    function getToken() external view returns (address) {
        return address(token);
    }

    function getBasketManager() external view returns (address) {
        return address(basketManager);
    }

    function getFeeAmount () external view returns(uint256) {
        return feeAmount;
    }

    // Admin methods

    function setFeeAmount (uint256 amount) public onlyOwner {
        require(amount > 0, "fee amount should be greater than zero");
        feeAmount = amount;
    }

    // Temporary migration
    function upgradeToV3(
        address _basketManagerAddress,
        address _tokenAddress,
        uint256 _feeAmount,
        address _vaultAddress
    ) external {
        require(
            keccak256(bytes(version)) == keccak256(bytes("1.0")) ||
            keccak256(bytes(version)) == keccak256(bytes("2.0")), "wrong version (1)");
        require(keccak256(bytes(BasketManagerV3(_basketManagerAddress).getVersion())) == keccak256(bytes("3.0")), "wrong version (2)");
        require(_vaultAddress != address(0), "invalid vault address");

        InitializableReentrancyGuard._initialize();

        setFeeAmount(_feeAmount);

        vaultAddress = _vaultAddress;
        basketManager = BasketManagerV3(_basketManagerAddress);
        token = Token(_tokenAddress);
        version = "3.0";
    }
}
