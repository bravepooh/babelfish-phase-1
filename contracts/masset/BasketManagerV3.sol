pragma solidity 0.5.16;

import { SafeMath } from "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { InitializableOwnable } from "../helpers/InitializableOwnable.sol";

contract BasketManagerV3 is InitializableOwnable {

    using SafeMath for uint256;

    // Events

    event BassetAdded (address basset);
    event BassetRemoved (address basset);
    event FactorChanged (address basset, int256 factor);
    event BridgeChanged (address basset, address bridge);
    event RangeChanged (address basset, uint256 min, uint256 max);
    event PausedChanged (address basset, bool paused);

    uint256 constant MAX_VALUE = 1000;

    // state
    string version;
    address masset;
    address[] private bassetsArray;
    mapping(address => bool) private bassetsMap;
    mapping(address => int256) private factorMap;
    mapping(address => address) private bridgeMap;
    mapping(address => uint256) private minMap;
    mapping(address => uint256) private maxMap;
    mapping(address => bool) private pausedMap;

    // Modifiers

    modifier notPaused(address _basset) {
        require(!pausedMap[_basset], "basset is paused");
        _;
    }

    modifier validBasset(address _basset) {
        require(bassetsMap[_basset], "invalid basset");
        _;
    }

    // Initializer

    function initialize(address _masset) external {
        require(masset == address(0), "already initialized");
        _initialize();
        masset = _masset;
        version = "3.0";
    }

    // Methods for Masset logic

    /**
     * @dev Checks if bAasset is valid by checking its presence in the bassets list
     */
    function isValidBasset(address _basset) public view returns(bool) {
        return bassetsMap[_basset];
    }

    /**
     * @dev Checks if ratio of bAssets in basket is appropriate to make a deposit of specific asset
     * @param _basset           address of bAsset to deposit
     * @param _bassetQuantity   amount of bAssets to deposit
     * @return Flag indicating whether a deposit can be made
     */
    function checkBasketBalanceForDeposit(
        address _basset,
        uint256 _bassetQuantity) public view validBasset(_basset) notPaused(_basset) returns(bool) {

        uint256 massetQuantity = convertBassetToMassetQuantity(_basset, _bassetQuantity);
        uint256 bassetBalance = IERC20(_basset).balanceOf(masset);

        uint256 totalBassetBalanceInMasset = convertBassetToMassetQuantity(_basset, bassetBalance);

        uint256 balance = totalBassetBalanceInMasset.add(massetQuantity);
        uint256 total = getTotalMassetBalance().add(massetQuantity);
        uint256 ratio = balance.mul(MAX_VALUE).div(total);
        uint256 max = maxMap[_basset];
        return ratio <= max;
    }

    /**
     * @dev Checks if ratio of bAssets in basket is appropriate to make a withdrawal of specific asset
     * @param _basset           address of bAsset to redeem
     * @param _bassetQuantity   amount of bAssets to redeem
     * @return Flag indicating whether a withdrawal can be made
     */
    function checkBasketBalanceForWithdrawal(
        address _basset,
        uint256 _bassetQuantity) public view validBasset(_basset) notPaused(_basset) returns(bool) {

        uint256 massetQuantity = convertBassetToMassetQuantity(_basset, _bassetQuantity);
        uint256 bassetBalance = IERC20(_basset).balanceOf(masset);
        uint256 totalBassetBalanceInMasset = convertBassetToMassetQuantity(_basset, bassetBalance);

        require(totalBassetBalanceInMasset >= massetQuantity, "basset balance is not sufficient");

        uint256 balance = totalBassetBalanceInMasset.sub(massetQuantity);
        uint256 total = getTotalMassetBalance().sub(massetQuantity);

        uint256 min = minMap[_basset];
        if (total == 0) return min == 0;

        uint256 ratio = balance.mul(MAX_VALUE).div(total);
        return ratio >= min;
    }

    /**
     * @dev Converts bAsset to mAsset quantity. This is used to adjust precisions.
     *      Despite bAssets and mAssets are in 1:1 ratio, they may have diffrent factors
     * @param _basset           address of bAsset
     * @param _bassetQuantity   amount of bAssets to check
     * @return Calculated amount of mAssets
     */
    function convertBassetToMassetQuantity(
        address _basset,
        uint256 _bassetQuantity) public view validBasset(_basset) returns(uint256) {

        int256 factor = factorMap[_basset];
        if(factor > 0) {
            return _bassetQuantity.div(uint256(factor));
        }
        return _bassetQuantity.mul(uint256(-factor));
    }

    /**
     * @dev Converts mAsset to bAsset quantity. This is used to adjust precisions.
     *      Despite bAssets and mAssets are in 1:1 ratio, they may have diffrent factors
     * @param _basset           address of bAsset
     * @param _massetQuantity   amount of mAssets to check
     * @return Calculated amount of bAssets
     */
    function convertMassetToBassetQuantity(
        address _basset,
        uint256 _massetQuantity) public view validBasset(_basset) returns(uint256) {

        int256 factor = factorMap[_basset];
        if(factor > 0) {
            return _massetQuantity.mul(uint256(factor));
        }
        return _massetQuantity.div(uint256(-factor));
    }

    // Getters

    /**
     * @dev Calculates total mAsset balance
     * @return Calculated total balance
     */
    function getTotalMassetBalance() public view returns (uint256 total) {
        for(uint i=0; i<bassetsArray.length; i++) {
            address basset = bassetsArray[i];
            uint256 balance = IERC20(basset).balanceOf(masset);
            total += convertBassetToMassetQuantity(basset, balance);
        }
    }

    function getBassetBalance(address _basset) public view returns (uint256) {
        return IERC20(_basset).balanceOf(masset);
    }

    function getVersion() external view returns(string memory) {
        return version;
    }

    function getBassets() public view returns(address[] memory) {
        return bassetsArray;
    }

    function getFactor(address _basset) public view validBasset(_basset) returns(int256) {
        return factorMap[_basset];
    }

    function getBridge(address _basset) public view validBasset(_basset) returns(address) {
        return bridgeMap[_basset];
    }

    function getRange(address _basset) public view validBasset(_basset) returns(uint256 min, uint256 max) {
        min = minMap[_basset];
        max = maxMap[_basset];
    }

    function getPaused(address _basset) public view validBasset(_basset) returns(bool) {
        return pausedMap[_basset];
    }

    // Admin methods

    /**
     * @dev Adds a new bAsset
     * @param _basset       address of bAsset
     * @param _factor       factor  amount
     * @param _bridge       address of bridge
     * @param _min          minimum ratio in basket
     * @param _max          maximum ratio in basket
     * @param _paused       flag to determine if basset should be paused
     */
    function addBasset(address _basset, int256 _factor, address _bridge, uint256 _min, uint256 _max, bool _paused) public onlyOwner {
        require(_basset != address(0), "invalid basset address");
        require(!bassetsMap[_basset], "basset already exists");

        bassetsArray.push(_basset);
        bassetsMap[_basset] = true;

        setFactor(_basset, _factor);
        setRange(_basset, _min, _max);
        setBridge(_basset, _bridge);
        setPaused(_basset, _paused);

        emit BassetAdded(_basset);
    }

    /**
     * @dev Adds multiple bAssets
     * @notice All parameters must be arrays with proper order
     */
    function addBassets(
        address[] memory _bassets, int256[] memory _factors, address[] memory _bridges,
        uint256[] memory _mins, uint256[] memory _maxs, bool[] memory _pausedFlags) public onlyOwner {

        uint length = _bassets.length;
        require(
            _factors.length == length &&
            _bridges.length == length &&
            _mins.length == length &&
            _maxs.length == length &&
            _pausedFlags.length == length, "invalid lengths");

        for(uint i=0; i<length; i++) {
            addBasset(_bassets[i], _factors[i], _bridges[i], _mins[i], _maxs[i], _pausedFlags[i]);
        }
    }

    function setRange(address _basset, uint256 _min, uint256 _max) public validBasset(_basset) onlyOwner {
        require(_min <= MAX_VALUE, "invalid minimum");
        require(_max <= MAX_VALUE, "invalid maximum");
        require(_max >= _min, "invalid range");
        minMap[_basset] = _min;
        maxMap[_basset] = _max;

        emit RangeChanged(_basset, _min, _max);
    }

    function isPowerOfTen(int256 x) public pure returns (bool result) {
        uint256 number;

        if (x < 0) number = uint256(-x);
        else number = uint256(x);

        while (number >= 10 && number % 10 == 0) {
            number /= 10;
        }

        result = number == 1;
    }

    function setFactor(address _basset, int256 _factor) public validBasset(_basset) onlyOwner {
        require(_factor != 0, "invalid factor");
        require(_factor == 1 || isPowerOfTen(_factor), "factor must be power of 10");
        factorMap[_basset] = _factor;

        emit FactorChanged(_basset, _factor);
    }

    function setBridge(address _basset, address _bridge) public validBasset(_basset) onlyOwner {
        bridgeMap[_basset] = _bridge;

        emit BridgeChanged(_basset, _bridge);
    }

    function setPaused(address _basset, bool _flag) public validBasset(_basset) onlyOwner {
        pausedMap[_basset] = _flag;

        emit PausedChanged(_basset, _flag);
    }

    /**
     * @dev Removes bAsset
     * @param _basset       Address of bAsset to remove
     */
    function removeBasset(address _basset) public validBasset(_basset) onlyOwner {
        require(getBassetBalance(_basset) == 0, "balance not zero");
        bassetsMap[_basset] = false;
        bool flag;
        for(uint i = 0; i < bassetsArray.length - 1; i++) {
            flag = flag || bassetsArray[i] == _basset;
            if (flag) {
                bassetsArray[i] = bassetsArray[i + 1];
            }
        }
        bassetsArray.length--;

        emit BassetRemoved(_basset);
    }
}
