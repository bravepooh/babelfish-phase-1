pragma solidity 0.5.16;

import { SafeMath } from "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { InitializableOwnable } from "../helpers/InitializableOwnable.sol";

contract BasketManagerV3 is InitializableOwnable {

    using SafeMath for uint256;

    uint256 constant MAX_VALUE = 1000;

    // state
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
        require(isValidBasset(_basset), "invalid basset");
        _;
    }

    // Initializer

    function initialize(address _masset) external {
        require(masset == address(0), "already initialized");
        masset = _masset;
    }

    // Methods for Masset logic

    function checkBasketBalanceForDeposit(
        address _basset,
        uint256 _bassetQuantity) public view validBasset(_basset) notPaused(_bassset) returns(bool) {

        uint256 massetQuantity = convertBassetToMassetQuantity(_basset, _bassetQuantity);
        uint256 balance = IERC20(_basset).balanceOf(masset).add(massetQuantity);
        uint256 total = getTotalMassetBalance().add(massetQuantity);
        uint256 ratio = balance.mul(MAX_VALUE).div(total);
        uint256 max = maxMap[_basset];
        return ratio <= max;
    }

    function checkBasketBalanceForWithdrawal(
        address _basset,
        uint256 _bassetQuantity) public view validBasset(_basset) notPaused(_bassset) returns(bool) {

        uint256 massetQuantity = convertBassetToMassetQuantity(_basset, _bassetQuantity);
        uint256 balance = IERC20(_basset).balanceOf(masset).sub(massetQuantity);
        uint256 total = getTotalMassetBalance().sub(massetQuantity);
        uint256 ratio = balance.mul(MAX_VALUE).div(total);
        uint256 min = minMap[_basset];
        return ratio >= min;
    }

    function convertBassetToMassetQuantity(
        address _basset,
        uint256 _bassetQuantity) public view validBasset(_basset) returns(uint256) {

        int256 factor = factorMap[_basset];
        if(factor > 0) {
            return _bassetQuantity.div(uint256(factor));
        }
        return _bassetQuantity.mul(uint256(-factor));
    }

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

    function getTotalMassetBalance() public view returns (uint256 total) {
        for(uint i=0; i<bassetsArray.length; i++) {
            address basset = bassetsArray[i];
            uint256 balance = IERC20(basset).balanceOf(masset);
            total += convertBassetToMassetQuantity(basset, balance);
        }
    }

    function getBassetBalance(address _basset) public returns (uint256) {
        return IERC20(_basset).balanceOf(masset);
    }

    function getVersion() external pure returns(string memory) {
        return "3.0";
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

    function addBasset(address _basset, int256 _factor, address _bridge, uint256 _min, uint256 _max, bool _paused) public onlyOwner {
        require(_basset != address(0), "invalid basset address");
        require(!isValidBasset(_basset), "basset already exists");

        bassetsArray.push(_basset);
        bassetsMap[_basset] = true;

        setFactor(_basset, _factor);
        setRange(_basset, _min, _max);
        setBridge(_basset, _bridge);
        setPaused(_basset, _paused);
    }

    function addBassets(
        address[] _bassets, int256[] _factors, address[] _bridges, uint256[] _mins, uint256[] _maxs, bool[] _pausedFlags)
            public onlyOwner {

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
    }

    function setFactor(address _basset, int256 _factor) public validBasset(_basset) onlyOwner {
        require(_factor != 0, "invalid factor");
        factorMap[_basset] = _factor;
    }

    function setBridge(address _basset, address _bridge) public validBasset(_basset) onlyOwner {
        bridgeMap[_basset] = _bridge;
    }

    function setPaused(address _basset, bool _flag) public validBasset(_basset) onlyOwner {
        pausedMap[_basset] == _flag;
    }

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
    }
}
