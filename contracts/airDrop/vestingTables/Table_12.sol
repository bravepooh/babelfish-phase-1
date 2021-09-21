pragma solidity ^0.5.16;
    
import { Table } from "../Table.sol";

contract Table_12 is Table {
    address[] public addresses = [
        0x40C27Db976Bd2638Ee690D621d2eec7202DBBDc1,
0x40c7A2eF710aBbC699798e24B23a09C82013aD22,
0x40cb16980deC30Df798E7d34336BA6Da4de510F6,
0x40Db8365d1252bcb06598927698238a99D39228E,
0x40e7361fEF10f39012Aa701b33812765469486F2,
0x4102968b5eAE824D21f4aeaAB30974D1C257f90b,
0x41051aA6BE8591F0bECF8F8c3CbD3FEB15b1571E,
0x4121c2305b9894760a3E0bae2B5684f5cd768fF7,
0x4126458E2d3ec5a4AF3F9d1557924E292eaDDDb4,
0x412d25207e74724BE264165f42cce5b67Af2948f,
0x41320D3D256e4b9fc59aa6689a67C91C333851F7,
0x4132c96cC50910656E5e0f23fDB70568cB1443bd,
0x413E9C80dD1d9bEB06ee4c55442d8EEd8074397D,
0x41400f3A5e2Bae822718e0ba4cd65DE1270BBCb6,
0x4145CaA615753dBA5C2Cc831FD1b77a85cc32b5E,
0x414848190B5c4F68a9D853845Ca4079F0779058C,
0x414c2bb8CCb50a707584C4565c044bC66269F746,
0x41526D476B02BB6bA04f1FFa40114dDf21272f2E,
0x415ab9058CA9CE1Dc1BA34d7966D71f85Ef33Ed2,
0x415e5EFB2052C6cB0b88545117A8A67b481F3F45,
0x4161AEf7204c0d4053112A1f0F13570626DB6Bd4,
0x416e4807932412aA1f53eE4C0F7EA45A4771c00b,
0x416F10c4B7cCeDC5B0813f6851a2bE13fC4Bd8b8,
0x4178466FD56f3593B3E1b11a54e4014491F3599A,
0x418595CE6f6658F9f63585cb2f32261241Bd7efF,
0x41B18AF506B68EFa58f1ed6Ca92c879Bac5819b9,
0x41B4a5Cb62aeBb7edc1ad06Fd550E72B006E21FF,
0x41B98E8a2a208Be3eBB2c94A585EC8D1A6a0aADE,
0x41Bc838b602fc0Fa93D88ba8f9e901884b92078c,
0x41CE33475d2fa561f787dbcAad4e732606f03433,
0x41cfCEC5e7B765500b00776A5A0B9f78914e9100,
0x41de0fF7e391b304ED0033819E91046853e14656,
0x41FE06dD98949eD42F203Bc44C9f114d015F6aba,
0x4238C9012fC4B310867fcc3b35291cCfFA4874EA,
0x42429DE5Db805FE7d684332A118a7F871a2D1411,
0x4270dE12D4D511C63eAB63292A5fc2F1055Dd5f3,
0x427160BBFF3D90aE7164686441F414C9243A7030,
0x4273C8eAC63F38fBF6Ea5b73A5Eca218D43A2181,
0x427Bb6b3499d2545887DFb929F126D6E60c03358,
0x427cadBC380834c84503423510d78E07827A8E93,
0x4293bD3df03f61085A7c119fe54e95EDa8220E94,
0x42ADCEB3E5C2f6DFc33B84f0f22d8a1e502caFB5,
0x42C600DC13D0C89F1D0fe3B8a319A02B70fC1778,
0x42c632548a80274415Ce6CDAfF03863931570cdC,
0x42c7bd8Dce584EfFcD0aF2086e3b04b658D85506,
0x4302BEC64B1C587576897F06E858850Da51B2E76,
0x4317c9D3FdC7df6040a3894d30E2C5325791FD0C,
0x431b5DDB0AcE97eBC3d936403ea25831BaD832B6,
0x433825a84b49BedfbdAd9525c9C57b0c4529B0FB,
0x434d6501972B208bA6F7f394eC835773C2c29982,
0x436AF8Dfc3B0296F79eECC67A8AF9342e83289Fc,
0x436Ddb682545A78028C67C661CC87b77e2Ec7805,
0x4374e011174527E3deDa61D4643B7746C7D0b874,
0x43763d32a9dF8A4311925259658b4c25C158a806,
0x437f4E26704c4f376686c7f08AF4D9005D1Cd356,
0x43910E8E7553747FCBdfd504bbdF1da7E9c084d2,
0x43a0dD279e3ac8989C53106E959334F6F8Ff0043,
0x43ac15Ef091Fb8737f0A57DB7d22B4CFEC366F35,
0x43b6C9590615B4CBF639342f2114144E7C57C647,
0x43B971bacBEa57820DF880e7F40746A89F4f1d65,
0x43c3558D4dD06E14689EDf4686A2Dc2621b8c004,
0x43DF11674F07a607Ce054685B4A4D8623CF3ff41,
0x43ebb5151c0258D64CE44b51682A232883317599,
0x440634C90240aB8b35aBB041CD6B8FAbeD06B8f9,
0x4425488c66D3e607Cc967d10a847131608CcD705,
0x44272957A10CfF6Ff3B02481B94e93b14376a320,
0x442bfb5Ff048955940093fF9c9B28Eae3786c592,
0x4434c4683e93bB73F34B026df385125E80069c1F,
0x4435b94720BF6857c650A9E753975aA8B1613DbB,
0x44392e10b6F672E00350F166e1e6573710EbaBa1,
0x443e6a5c2E6A219ab22855ef3B1e2388042422c4,
0x444a52988A40355f6f55cEf439bc2A5F816B2c00,
0x444bcC1f0B7b7eF99D92352715b533C3825F9d73,
0x44525940eD474B6a5F3bA0F7EA5190AFfD09e76d,
0x4454e3d4040217F4DB2C28CF32D084C820b78552,
0x445BBe2828545E6Bb2D93A9e126300F982014656,
0x445D03F84D0B4e50D7A76CF57D32650E25890019,
0x445e1De62B1ff2ad6EBd73EeCa904f1606EA1797,
0x448d0Bef967C0BA9Eee9d5660ED3AcB6E45eCa19,
0x448dBA9a7728251DCaC914B380552187D19F9e4D,
0x44990b25177DA9716fa6DD1D9A4fF475eA977f16,
0x44a6582D8f32E6AB83aEB134190b478Bb6269573,
0x44aC0C2a2AAd09512452A96BD04e8d538948A107,
0x44Ac27C2C14BD7cB54ce31b17886A1e05684fE9D,
0x44aF8BFd575Ba95B91211242B74222DD5802E6Fd,
0x44eB9755FB6C003fAc5C30bb9DF7661555E5D653,
0x44Fbef86239Debd8e68a22a9BA58Cd7aB6BE6947,
0x450398Fe0CAc750A7F35Bff298A87EE01a184355,
0x4521AB720d810E3399cb2eD0c440FFC15A74A0A7,
0x4527578619A32b0D06D3414018d6E6fBfd1edd76,
0x452eEF5b538e3FEd4fCa31326678a0a51e0E335D,
0x4548f0acB17eC004322b427db78649b0878BA3f3,
0x454F1fC4007dc5dE55692D858F82cD3818B3504F,
0x45504D8f0DE9E12169Bc1C6ae572fF200BE1e69B,
0x456f188BdE5F9F726e2Bee2ada41058C83BD4894,
0x4574b835024f9b159a7FaB6C64a03A1fe885Fbf3,
0x457B84Bd58672bdB385c9bB3e266978cD78c1514,
0x45911d3a245B8060bE613c35d2A84C8FeC23f8e8,
0x45912e7beBA956F5f0DC42831A10138D77c31d31,
0x459b6ef18F6a44bE23FAE0B81D040EB0C804ac98
    ];

    uint256[] public amounts = [
        187961062864014972000,
73838399523966000,
801407566513742244000,
246932406807660294000,
922245897241974816000,
71848384390845804000,
3196793401162326000,
8615107537487388000,
7227794615717340000,
24512052544730142000,
239135840694351636000,
767813255158084800000,
142316786394563718000,
69960505446224316000,
229353982344878664000,
40677932667565200000,
635174242591438200000,
58725831252703608000,
19783225081555320000,
9291344164114908000,
268158506216313300000,
52717475817506136000,
497430544603681332000,
2245023467620679172000,
157766413527922542000,
0,
16473422450179800000,
7493279107495020000,
362772205277293518000,
154397737382847126000,
0,
111046679902755450000,
6409891711372296000,
33694857380085300000,
209409510569802858000,
3009439478146456404000,
22422972270716262000,
3874138550352966000,
1911283186206240000,
25125118593565116000,
3321153991975227870000,
7188034439141850000,
39623810748933600000,
298956042337887858000,
5070469300191816318000,
53219165043006564000,
180429424681519818000,
657135909139394160000,
64603806240080016000,
21775944710902872000,
1201759774950042000,
1585597443822126000,
42858933699344742000,
7906358054588700000,
265967025498400506000,
3582625458430200000,
5802964363489356000,
262368944550541206000,
271042298089290000,
171211424542046028000,
5211220003368834000,
7491431510812830000,
354958942557169566000,
17130011951826900000,
17940816746644932000,
17627242314305400000,
121378427545634700000,
2223205128738451200000,
41317864097711670000,
0,
8014706799082200000,
624161218805336142000,
944282968860021042000,
7196522766288870000,
311332209072023874000,
32724733658344266000,
110268576019527324000,
32696302140073992000,
7740840477318270000,
27099259449880842000,
16733896277526540000,
34946881211046000000,
34434477566748000000,
27702428250493500000,
50595864930290400000,
228902365995626736000,
2507837820901738500000,
351118290734783670000,
6060309038988120000,
67501125710617200000,
63575059834916910000,
37498828326197532000,
3678162137322550500000,
61252544705664900000,
74385766791831810000,
363526817096772000,
83494099649505174000,
1355211490446450000,
13702938380914902000,
51332443051325898000
    ];

    uint256 public totalLength;

    constructor () public {
        totalLength = addresses.length;
    }

    function getRecipentInfo(uint256 index) public view returns(address, uint256, bool) {
        return (addresses[index], amounts[index], index == totalLength -1);
    } 

    function getSize() public view returns(uint256 size) {
        return totalLength;
    }

    function destroy() public onlyOwner {
        selfdestruct(msg.sender);
    }
}