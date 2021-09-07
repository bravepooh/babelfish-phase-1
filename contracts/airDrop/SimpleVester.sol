pragma solidity ^0.5.16;

import "../fish/interfaces/IERC20.sol";
import "./LockedFund.sol";

contract SimpleVester {

    IERC20 public token;
    LockedFund public lockedFund;

    address public constant MULTISIG = 0x26712A09D40F11f34e6C14633eD2C7C34c903eF0;

    constructor(address _token, address _lockedFund) public {
        token = IERC20(_token);
        lockedFund = LockedFund(_lockedFund);
    }

    function vest(address _userAddress, uint256 _amount) internal {
        require(token.approve(address(lockedFund), _amount), "approve failed");
        lockedFund.depositVested(_userAddress, _amount, 6, 36, 0, 0);
    }

    function sendBack(uint256 _amount) public {
        require(token.transfer(MULTISIG, _amount), "transfer failed");
    }

    function doIt() public {
        vest(0xe7CfD1ab4B2d83E09aE8351983F785a0941994DD, 504000000000000000000000);
        vest(0x71cd4FC6ecDc64b9E8E16c8c185c3093A4D6D806, 3654000000000000000000000);
        vest(0x88395Db68A14D7e3918a784DCF8d29eB2AA91416, 840000000000000000000000);
        vest(0x49e997346b16aFe4D6A27eBf87C6C22F3731DF7a, 3360000000000000000000000);
        vest(0x7cCF0C20BB9AC8ED98b41d47288625521626f7E2, 504000000000000000000000);
        vest(0x7Ae13ABAeff24c74c32e1D8482864fBc4c7F9D7C, 462000000000000000000000);
        vest(0xB568fCAdBe9cab82bf4c895120717c4B5b148496, 2940000000000000000000000);
        vest(0x784B2B7eB7D2F4E4F6324a782B2dE4E4c363117c, 2982000000000000000000000);
        vest(0x9991c3868ba154916f458e97876D35D92C0a32cf, 3276000000000000000000000);
        vest(0x810eBfeAb4F5380C88651d786Ea553bD3A95223a, 2478000000000000000000000);
        vest(0xF776186d9A91a8F1750e6caeD993C9Ddf6787e96, 966000000000000000000000);
        vest(0x579953d7C25C338f20E9a65099e8E9ad079d87f0, 420000000000000000000000);
        vest(0x9580c09B18B42e7182CDFDA6b60b42a14c9c69A9, 1176000000000000000000000);
        vest(0x629A88F6C839B6E1e7B5eF6c81aE30aa4c238DbE, 504000000000000000000000);
        vest(0x94741a643bea6FcC9794cE5DbA5084D441088666, 210000000000000000000000);
        vest(0x4B23124B95024D942E853a022261fb08C111A0f5, 840000000000000000000000);
        vest(0x913A3AC5Fc08B70ef91E776cBbB6a5c1a49b0B22, 1260000000000000000000000);
        vest(0x971b72CF891a4a3933a04B9BB0439819F68e2a0c, 1470000000000000000000000);
        vest(0xFEc1098B6664E035B8274f59a86C82056AB9d495, 1554000000000000000000000);
        vest(0x1487e206Bd40aCfcE5468CFA0679dfd515B96b18, 3108000000000000000000000);
        vest(0xc93f79B87aC015F0e3F2AEc92af3FD64fB43Bf84, 1806000000000000000000000);
        vest(0x590914d85A7924166361204D82Ce8Fc7d091D4e6, 4074000000000000000000000);
        vest(0xB3d4977cc8499f64262a9Da4963a9BB0F7B6252D, 3150000000000000000000000);
        vest(0x67DcBaCbD68bf26bB71B3BD9D67d6FC436e53a24, 3360000000000000000000000);
        vest(0xaC539B9156ac9ab4496215f4A563929134f155C5, 2100000000000000000000000);
        vest(0x853EC54979eC150C6898F47f738316f5Eb2cC486, 1050000000000000000000000);
        vest(0xda484173F2BC398C3BFCf01Dfb64284e807a4766, 2352000000000000000000000);
        vest(0x21e1AaCb6aadF9c6F28896329EF9423aE5c67416, 4200000000000000000000000);
        vest(0x428A80f48aB417E17A12Ec81A2671c4846BdB2be, 2100000000000000000000000);
        vest(0x3e6C9d9a60F7B606e0717A3D17290941fA1ec829, 2814000000000000000000000);
        vest(0x263390d8cCFE9E3E17cE678f687fD7513e2d56AA, 3696000000000000000000000);
        vest(0x0b39eD4668f2c99Bf2350F0ca6Ecc77079A1a794, 3150000000000000000000000);
        vest(0x66333DB117bF41578DEEc55d398460385DACcBCc, 3570000000000000000000000);
        vest(0x10380E8E2AfD85E3C30AD5FFa5a0Af1ccbBf6952, 1050000000000000000000000);
        vest(0x1fc5a803546224d125F10560A6B947B294fe57B0, 1890000000000000000000000);
        vest(0x7B660E0A69b0810A8d7bF894d9b0B7622cc87FfD, 504000000000000000000000);
        vest(0xbEE63c7833dFceb5EdF8e9E1c4ECD3D7b02726c4, 2226000000000000000000000);
        vest(0x8D8353731f248cb933E8d8915B92c3Fd244E39C2, 4200000000000000000000000);
    }
}
