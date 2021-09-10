pragma solidity ^0.5.16;
import { Table } from "../Table.sol";

contract Table_49 is Table {
    address[] public addresses = [
        0xFcEaC8f15BD957043F923E564b56bf0b49921053,
0xFd319A77659674141e665649a5334ea4270da987,
0xfD448F3d6C0B718AC58a7B6EdF559f07a3F4a803,
0xfd88C1C6B3562f74b72229e076F991cE5Fec630A,
0xFd99A0579F3E3Aad213EaDa1E7057aDc14b502C2,
0xfda15E84A68C88075bde73885C6984b659e60EFD,
0xfDAF8Ad8296Ff2fa8406f5A78816c03270Cfab19,
0xfDb3469bdb79Dec77721f84bC199682045Af5840,
0xFdc4A83b16b971D92A46bb18D7a788F07b5a400a,
0xFdE6bdaDcC0c46b902Bf815ac040523BF950C42d,
0xFDedC0a5B5052913b5D026FD58Db1f0C5210c090,
0xfdFb9d3c410B7c908885b7F4841053230F80B48A,
0xfdff93e51e84dD47B8D5b60818B4D09914bF5330,
0xFE08BB41029b176A0aeD0Ad10eC894a9c93acCeF,
0xFE172B1DC4BE8683b9800Eda185a624031B16fC7,
0xfe1d6DADdfC00FbDF7B2EFFDB25D5cf8138F5566,
0xfE31c629259695b696843952fFE70898A8D30E16,
0xFE33A87407B5919f3955a9E72ac5c9ad82eD74Bb,
0xfe4909B49995A646f7BabF579BC5B4Ca8DeDc13b,
0xfe555F7E9E67598319F0303321363Bec7D79e50F,
0xfE57181ee0a77762b95C3817cCF523235a67deEC,
0xFE625BDE5Fd6Fb6A43f8234a2607500D361d56f6,
0xFE68804792409C406dA8D53267DE935B06442f74,
0xfE6c377Ce9410CE5C1e2dF120d74E8e7965D28C5,
0xfE85507722deaCBDD8A2ef916e1f29b944bBeD5F,
0xfEA528d8Cca5509f37cAb5B69842Cf9519308E21,
0xFEB4B428C809d7181d9bF8B821EF1Eaa5Ae62416,
0xFeD648CCea13C6126fF664b0dfe65C6cb1257d41,
0xfee6e9A1ac0571eD121189E593847982515f8B53,
0xFEf6042553d8ccABf39bfc49BC3326dAB7fa2b22,
0xff2C13374406B90e7C349B517e38e0683fBac9E5,
0xFf50aeD77aA1f98Fa96851b44593C7919a50fFF6,
0xFF583fdd9993CC9eaA55F38974B1b3EC0bcE9d58,
0xFFafE4d780c7496fEfd8e910056bF8e34e5049E1,
0xFFc458dB291b4ABcE020fE3de4f91F2770E537b1,
0xffd247f22B10F1cbf33cE6De1F1825eaF236c6B2,
0xfFFbAb5bFB3fb547d60cAa3072700865c3F15087,
0xFFff78085E99720C780711Db81727E2a4E5a50A6,
0xb04D787477D284283D88e8b3062182C085B8939C,
0xcec96b6bc3e329eef5752499191a4C30ce37ff9e,
0xe5df77b5c1C541cDA961bAFBdaB2b9FB94831f98,
0xEec8E7E6b58F6c980cab1e650f2d0d3eD49cf764,
0x9fb96c6556562E660811c99da2351d99DbFDB188,
0x63DC55DFD84De26700f57A4982c67f8B7Ab0F371,
0xE43b4B81128bE975F39c4D1960c2D2a3205273CB,
0xF5366a3445Adf491311a6e86443bfb5392f08265,
0xE52c75Be08A3cdd5eBdBEd49FC6cA507B78Bb5bE,
0x6769c884d334C396810fE3Ad72f40b1E151Bf1Ec,
0x673B37941AB527E0eeE13C1fF09298Ef1911D7D6,
0x244D1A181B6FA17b807d5aecA1053c4b26e8fECD,
0xC71de7C0A71137037678C70BEB82077c0C729289,
0x7aF2A27665D5bBc5352342FCAF072A6f4a4011D2,
0xEd878594b9E18D8C184AcB3aCb1812766C4E922c,
0xc62940D164a26343357e992caFE96f7Fc4411c78,
0x3160Abd7d704749802c96851084746C960B8A18d,
0x55Ed66E5E8371C66bc710A4feE4e8e7Bf2d825fd,
0xF0f2dd8f93EdCa01b283b518795B810E15421505,
0xcbebCF4fd59E082d8F95F8C9a7D2585C3229DA84,
0x4A177Cc32e4FA3A9a832225433fe8eCBe78122F6,
0xb400a11936ea64626dc7C15FC1E2CD391481fa65,
0x86bbdA15Cb47728d5C8857C8EE7c19eeC3020cd4,
0xE87d638d0223ffb5e51dFaD7E0403Ff77bc61D8F,
0xe70b8Ab9d51e48F05d73823aa692a054C3FBEE41,
0xb958A3E1666B612102ba88bA31515c31285EC450,
0xFDedC0a5B5052913b5D026FD58Db1f0C5210c090,
0x4F239a52Df4f4778897711203C4EA87469D2aF89,
0x09AFa73D003DBabb799c12fe4F604CD6d327b985,
0x09AFa73D003DBabb799c12fe4F604CD6d327b985,
0x09AFa73D003DBabb799c12fe4F604CD6d327b985,
0x09AFa73D003DBabb799c12fe4F604CD6d327b985,
0x09AFa73D003DBabb799c12fe4F604CD6d327b985,
0x067afEb4E122F1BF84544D1557Adb27feFf40f91,
0x4754569E50baA9ce6a53E661058E1D4622f76313,
0xCd08F23C70702893bD190CC046d005eb95b3Cf40,
0xF18d0EcE85861dA03b9bAf6A5CE27AA23dA747a7,
0xcab56C67f6af4a95f39BDb0Db4085b8B486480Ea,
0xE52345354b5a2f99409b74036739fF2d567170ce,
0x7274dFD423b826fB274A8F579062a8a14CDbD381,
0xC1DCBea979b4e1964274fC497bAB6f5C93A3A218,
0xCE5Db5cb0B58F08261D1736C150d9e51248daA4C,
0x3F9e3eF417334d21b902502E88fE12db6C5A4C13,
0x193d5Ba15f7559d02575c4406B88c02053230b5D,
0xcD0E7983ad427Af812F6Cd9865765E8Ec258dDd9,
0xfCDd4a29B7766498E95f85C46387a170eDAf5Cd6,
0xfb15339d187A76AF62698F73D700E1F8536f03BD,
0xBb8A5a3D820E8800Ac15F73F536667e995E04529,
0x8EDf0B5eaE5e936eA7706565E509C828Afb49634,
0x6677A3899283891b6Ba154A72C3Bbb89ab27edFf,
0x9BFf7fCAd7C7eA3c359169faD00F03C16BCc60aa,
0x5408850929Bca3F89e5C2783Ce6Fa11617152946,
0xE5f1dec64AAb7C2fEA72FECF9DB895211Fc78982,
0xD5eB4Ebb70dF19A18a52Afa9044789863dD6a05b,
0x114DeD65151e481272B6cE5dfd8b5961531f6085,
0x216E8bCF7395C1fC9966F18880a4EfF2Db3fBE32,
0x2e5dcc34308EfF6865Ba75FB28953D84d142F16a,
0x607096824C1944659575863a85E8427514981331,
0x300E95D81fb98894b5C4C55FA15cB972aC9D5630,
0xCB21C1Ddf1Aee2a80eFCD15ada45a6Ea653a8DB4,
0x6a8250Ba8D3d12B3bd13B8010EfaE23d5815a293,
0x008d9051A4d6c938D61b0Ba74471FD8e67c901ED
    ];

    uint256[] public amounts = [
        92015379942541700000,
1422226436163880000,
248153876324348000000,
12432522841578300000,
2540293125096540000,
5856988111066500000,
1744884241873380000,
15787784801287700000,
832574109685042000000,
31198480674121000000,
15773194701961300000,
11409923126899300000,
198971876482450000000,
3517096187820740000,
17773529685332400000,
298951308387206000000,
159158258830986000000,
2384740041328220000,
44513246303781700000,
18755016806414000000,
25,
120696287592183000000,
8610003180706170000,
1192523170228530000,
13877874079914700000,
3539065421316690000,
359386669135853000,
3052729676967400000,
227585739111533000000,
5989777818930890000,
289161687810456000,
129090039201097000,
35710857552215400,
210496825935713000000,
16141403273455900000,
633276191166461000,
2065440627217550000,
927405930607041000,
21000000000000000000000,
840000000000000000000,
840000000000000000000,
420000000000000000000,
13819300000000000000000,
13679300000000000000000,
13679300000000000000000,
13679300000000000000000,
13301300000000000000000,
26238600000000000000000,
20255433333333300000000,
12979300000000000000000,
24576500000000000000000,
10337200000000000000000,
6399300000000000000000,
848400000000000000000,
26416500000000000000000,
363600000000000000000,
21840000000000000000000,
113344000000000000000000,
130200000000000000000000,
126210000000000000000000,
170800000000000000000000,
7115333333333330000000,
6040000000000000000000,
13650666666666700000000,
9333333333333330000000,
10459333333333300000000,
17150000000000000000000,
17192000000000000000000,
24100000000000000000000,
6600000000000000000000,
5000000000000000000000,
2420000000000000000000,
2100000000000000000000,
6000000000000000000000,
1184000000000000000000,
1184000000000000000000,
126000000000000000000,
252000000000000000000,
42000000000000000000,
84000000000000000000,
42000000000000000000,
294000000000000000000,
210000000000000000000,
42000000000000000000,
4200000000000000000000,
1000000000000000000000,
500000000000000000000,
1272727272727270000000,
1000000000000000000000,
1000000000000000000000,
500000000000000000000,
1272727272727270000000,
1272727272727270000000,
636363636363636000000,
1272727272727270000000,
1000000000000000000000,
1272727272727270000000,
1272727272727270000000,
1272727272727270000000,
1000000000000000000000
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