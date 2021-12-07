pragma solidity ^0.5.17;

import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/ownership/Ownable.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "./BaseRelayRecipient.sol";
import "./IApproveAndCall.sol";

/**
 * @title Token
 * @dev Implementation of masset Token.
 * Inherits from ERC20 and ERC20Detailed with implemented
 * mint and burn functions.
 */

contract Token is ERC20, ERC20Detailed, Ownable, BaseRelayRecipient {
    using Address for address;

    /**
     * @param newPaymaster Address of the paymaster that will replace the old one.
     * @param endGracePeriod Timestamp from when the update will be able to be executed.
     */
    struct PaymasterUpdate {
        address newPaymaster;
        uint256 endGracePeriod;
    }

    // Address of the paymaster which will be able to bypass the allowance check
    // for transferFrom
    address public paymaster;
    // Struct containing the infos about the update await to be executed
    PaymasterUpdate public paymasterUpdate;
    // Track account which disallowed allowance check bypass for paymaster
    mapping(address => bool) public paymasterRevoked;

    event PaymasterUpdateLaunched(address indexed newPaymaster, uint256 endGracePeriod);
    event PaymasterUpdateExecuted(address indexed newPaymaster);
    event PaymasterRevoked(address indexed account, bool revoked);

    /**
     * @notice Constructor called on deployment, initiates the contract.
     * @param _name The name of the token.
     * @param _symbol The symbol of the token.
     * @param _decimals The decimals of the token.
     * @param _forwarder The address of the gsn forwarder.
     * */
    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals,
        address _forwarder
    ) public
    ERC20Detailed(_name, _symbol, _decimals) {
        _trustedForwarder = _forwarder;
    }

    /**
     * @notice Create a timelocked update that needs 1 week to be executed.
     * @dev Only executable by owner.
     * @param newPaymaster Address of the paymaster that will replace the old one.
     */
    function launchPaymasterUpdate(address newPaymaster) external onlyOwner {
        require(paymasterUpdate.newPaymaster == address(0), "current update has to be executed");
        require(newPaymaster.isContract(), "address provided is not a contract");

        uint256 endGracePeriod = block.timestamp + 1 weeks;
        paymasterUpdate = PaymasterUpdate(newPaymaster, endGracePeriod);

        emit PaymasterUpdateLaunched(newPaymaster, endGracePeriod);
    }

    /**
     * @notice Execute the current update if grace period has finished and replaces
     * the paymaster address.
     * @dev Only executable by owner.
     */
    function executePaymasterUpdate() external onlyOwner {
        require(paymasterUpdate.newPaymaster != address(0), "update already executed");
        require(
            paymasterUpdate.endGracePeriod <= block.timestamp,
            "grace period has not finished"
        );

        paymaster = paymasterUpdate.newPaymaster;
        emit PaymasterUpdateExecuted(paymasterUpdate.newPaymaster);
        
        delete paymasterUpdate;
    }

    /**
     * @notice Creates new tokens and sends them to the recipient.
     * @param _account The recipient address to get the minted tokens.
     * @param _amount The amount of tokens to be minted.
     * */
    function mint(address _account, uint256 _amount) public onlyOwner {
        _mint(_account, _amount);
    }

    /**
     * @notice Burns tokens for the given account.
     * @param _account The recipient address to get the minted tokens.
     * @param _amount The amount of tokens to be minted.
     * */
    function burn(address _account, uint256 _amount) public onlyOwner {
        _burn(_account, _amount);
    }

    /**
	 * @notice Approves and then calls the receiving contract.
	 * Useful to encapsulate sending tokens to a contract in one call.
	 * Solidity has no native way to send tokens to contracts.
	 * ERC-20 tokens require approval to be spent by third parties, such as a contract in this case.
	 * @param _spender The contract address to spend the tokens.
	 * @param _amount The amount of tokens to be sent.
	 * @param _data Parameters for the contract call, such as endpoint signature.
	 * */
	function approveAndCall(
		address _spender,
		uint256 _amount,
		bytes memory _data
	) public {
		approve(_spender, _amount);
		IApproveAndCall(_spender).receiveApproval(msg.sender, _amount, address(this), _data);
	}

    /**
     * @dev Overrides the original transferFrom function to implement the bypass logic for paymaster
     */
    function transferFrom(address sender, address recipient, uint256 amount) public returns (bool) {
        if (msg.sender == paymaster && !paymasterRevoked[sender]) {
            _transfer(sender, recipient, amount);
        } else {
            super.transferFrom(sender, recipient, amount);
        }
        return true;
    }

    /**
     * @notice Enable users to disable the bypass for paymaster transferFrom.
     * @param revoke Use true to disable the paymaster and false to enable
     * it to transfer tokens without allowance.
     */
    function revokePaymaster(bool revoke) external {
        paymasterRevoked[_msgSender()] = revoke;
        emit PaymasterRevoked(_msgSender(), revoke);
    }

    /**
     * @dev Sets the global implementation of _msgSender() to the BaseRelayRecipient one.
     */
    function _msgSender() internal view returns (address payable ret) {
        return BaseRelayRecipient._msgSender();
    }
}
