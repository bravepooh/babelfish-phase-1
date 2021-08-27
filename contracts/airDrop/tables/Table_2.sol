pragma solidity ^0.5.16;
import { Table } from "../Table.sol";

contract Table_2 is Table {
    address[] public addresses = [
        0x0544A863c353A33717b29C56c90f6b19ebD28C4b,
0x05480882C86BE2bd9D3da7464CA67dd4046e101D,
0x05768d66b343C78cd97Fa0ec8Af168efa65BFFdD,
0x057faAc3579cF1DA6c98e19536bf64Aa644BDc30,
0x05944c025361fc9F5043B0f64d7BCC9E278630e7,
0x05a053a4D8dAc6d1Ab5A6926b977c07d2Ebe645F,
0x05a4448597935c508e4ad0D2CF56d56beDb246Ce,
0x05B00d69D50426020749e1e1c60901E129D3E43B,
0x05B1E26147D27c4d39f264B17839704c452f92de,
0x05c9db8B2b5Ad47dE646fE32D68b9E2c3e6a109c,
0x05D3B3ad61ABBAeb848916327D5a1F3B75331Ab9,
0x05D3dB5BCbea4A44c5e93D1B9CFfDD38d681796D,
0x05DD13154a7104288d56500122d819Eea3cC8A34,
0x05eb2559fA3760748428209742bf3b0C12411d8D,
0x05f39aB06cFBE54c73F0183dcb0a85520D44d7c2,
0x061f6292A655c031c6D712BC5A02Ea446c85C369,
0x064823bff2072457bF54842c9A4C039c7a7B4b8C,
0x064d2FA793858e45bd532f02eF385962e7134Ee7,
0x066e7119f7D4E3bBf1aF2Fe905cec6D844825FBE,
0x068705aC7fd46865865E4A35Cd47b901Ff2C5442,
0x06B6B929e1ee3724c450a07651f068F5554054C6,
0x06f62B8B2eebdE73dd4F0E1fA9b1321D63fd5c3A,
0x06fE3829c7ea8B444264fac89B585126f1285331,
0x06Ff58b214090c23D4FB56644B8B01538de3495D,
0x070D866c723438324781DAB4fdc5B90dB186E1C3,
0x0713b86415aA50127CD6D8EC3De6d853DF814755,
0x071720E09F85dF0F01875183F854f7C46D09E69f,
0x072b7BB4860Fe8700f6c46AAef8FBCa49d6fC9DA,
0x072eB97e6A9413FcC178391FDC03Db7f5D0a1523,
0x073Bb8c6d58519C989FF662Fa9C215Bdd339B190,
0x0743C080AB509B7F2643db1FDCd591e0d6051DAa,
0x074E2cAc504fF3b19f4035BaFe23E1ad54d1e871,
0x0752De059d4Cb9720F6321F83F2975143c94C82a,
0x075757b546A83B8607A917a6Ef13eC2a16C80246,
0x0777a1357AD428bf82f9e4933f9016920c54615c,
0x07AB86B3B2FC66FbF7A138d25D2dc780CEBCB363,
0x07aD2f67B2a40459dff941B5f4430b3c1981De97,
0x07B13c4c3d45bC30c8ad388e2B649b98F76925C6,
0x07bC260147E692088111efe5416Bc234ec28d194,
0x07C96a9daCFA61D2Ad35fabB1bB284e49eb22C8B,
0x07E8c226AfF3Bfc70e4134B7909Eab25dd06007e,
0x07E9d06db58A77407DB95D93Fbe1275a46F97463,
0x07eD00ea965C1E10ef2eDBA542e0A0fA98F2F474,
0x0806687bA75A4145778419f0C606b3879a21c0a4,
0x081Fba453624Da22f20DC292570052bB86735175,
0x08467f8F499B2b44a3D0072b8C03180847A854C4,
0x085d9Df1764C49458fF8cA0F487f8382C15835a4,
0x086085a4c2aa12B4B81746Cb1FB47558a5B16355,
0x0877acafd6362938B38a7b28a6f8F5121e51E791,
0x089d700d9234107C39704b951690eBcE90fe643c,
0x089Ebd3dFF675B13F75e08fDa4fD66BE2F9C1d7E,
0x08c4076A84AD68fD1b33ABF0e235bfBb1a881e0e,
0x08dA14f506813c2bbF9995E20d73bC31ABfdB29a,
0x0908239ee183215948Af304B5180002B944Cd394,
0x091857f9fEC8e49442C843104d4E79922d116Ff0,
0x091C03991c232033d7c86908E2299b6deB30d75A,
0x092eac691968911F07c37C938D17eeA96e049A9d,
0x09597E85b90A5c90EC3e59015312a8795eBFe0Dd,
0x09683144b588549deFb4008aF3Dbbfb6641ad1E9,
0x096F8a0D9D8d73F6cB7202700aDF2a9D67E0422c,
0x0974bf6913c762EB143eE7a1e244166E4eB2B5a4,
0x097dA78486D49763b2Ad55F19327DC27068f8a20,
0x09B4a86a160e37D06FA2fb5749326b5A6106Fe9d,
0x09D880a90b9c0d218bF53e888E12668D6490AA92,
0x09F25ef6ba14DA72F28BC11432C70391E25c64B9,
0x09f37FC3C3d8b6b789e6840C26FaA7dD66Baf76d,
0x09FdCFD6f607a06fD4Aeed74F5cE6548C8eaf3fC,
0x09ff0A2400be2906a76212898d7589d9eDBE20bC,
0x0A19cbF9272F3e2afb66e373C44411f41Ba80E1e,
0x0a552C60C343D052eCFb11c0822BEB6D0EC9Ba56,
0x0a5f29cfC60857c89D05e8B77d553b7519D7E31f,
0x0A61a48E402cdC76CC67F4947C3007E22CC23830,
0x0A6dAe483f40aCE61d088f533adaC32DE2298E18,
0x0A748239B04ee94F89cE915a5DA44B97CBFeE656,
0x0A754Ffac819F6e362f91b20E0F43Cb5d4854Fee,
0x0a7553De19CaBC2feDB8CC4E2290Ef5AFA2aBA52,
0x0A76e32256203c38D8CEa53d687008BAc3e34923,
0x0A7a4e9BD0d88aE882Fc823A85cbf50683f60E4C,
0x0a9Dc9ABf2752B9044fE3d204A9BFd227f5f36Aa,
0x0aabd56e02B908Ddcf19dB5418805E447F133449,
0x0AdCb5DdA1bcbd2556d4aD838e979C552276A9Df,
0x0aEEf01A4F9bE0801Feed10b469acff89F40985b,
0x0aFA1375F2541183D1dAB2a25B1033d434D8f68F,
0x0b0036FDE7180a3Ae5BDD5C4eDD9761974C6c370,
0x0B00CB7d7247B77F828360ac1Af6826b01e667cB,
0x0b133B2b7eABc270d11057654edd300a0e76E064,
0x0B1479aad22b4F1633f917F6538D89e6ae7bB218,
0x0B1765587f0610702d36a2dDCEa6e37c41bE9B81,
0x0b1B00DF926eD6317A5604c4dF0134507D0324E5,
0x0b204e49A610211BFe1aE2f0F4d924055fd387b4,
0x0b219d368d0b8fe6b44fADcc43eE3B43c51Ba3D9,
0x0b2718935dCd4525c51DA8B0f0Ca58aC90aF345e,
0x0b396Ca0C60120e60cb0f1ea46087C31adf3bf27,
0x0B52e7d63dD0B015B0dCc06B0744CbddEC19A326,
0x0b6d741C16Bd042C5a95C63b2c7ba3E775bb634d,
0x0B8C3C8a60873224fC13738BfCD1ef03c2842206,
0x0bA869C9fB65CC3981612ad01cc9c6c3B7261F74,
0x0BB7bd224C1A26af74FeD5595B246aCb0EA2F45C,
0x0bc50945A74130c3Af562B595Bcc1C434451eC52,
0x0BCc7b085aFBd0994776b78599C08415ffBC6071
    ];

    uint256[] public amounts = [
        61544098662561348757437,
99110000000000000000,
9071718860418911762271,
2900000000000000000,
5800000000000000000,
50993598493126807138,
99530828116026998947,
4511445392334432666214,
18698000000000000000,
22200000000000000000,
3799352132293029219741,
223393251608448832235,
169614027115289012888,
23708517851845879900,
7309868117569291750000,
729581507081246250000,
1235839509983566113000,
7252454418790482964568,
361593671704023157730,
127971281798373706945,
7107,
1948522027175601695533,
66905574611716632512,
1051848000000000000000,
314186762929480004927,
186300000000000000000,
70330273104038921370,
20300000000000000000,
1934418652423993250000,
4799250000000000000000,
7115335595372147477020,
84563142954002680154,
2018023115988566133867,
1420788052725678145130,
10296000000000000000,
9767800000000000000000,
7263656903378570077020,
139233751294153306146,
8717,
849887026989205881058,
97724000000000000000,
142260401508257030400,
5500000000000000000,
25856517605312396516,
3900000000000000000,
12781351468085903543269,
99862104440122810711,
1459758883686050516474,
2922918522147558486000,
425700000000000000000,
16493386099815531634,
213804990495952905000,
88450854200971235872,
9200000000000000000,
10125414000000000000000,
400021248489067150000,
1814329245446460586710,
28674307243310514409,
346484136301568620556,
13470095894993283999773,
343360656247745155942,
2000000000000000000000,
880692867707477376000,
1326816557107641810000,
48180000000000000000,
2124430000000000000000,
1118000000000000000000,
456237572568895265760,
210890000000000000000,
3450000000000000000,
43165559926036763836,
2612000000000000000000,
4216000000000000000000,
132806346993591208392,
107360000000000000000,
28823457412493633914,
7857726000000000000000,
388568400000000000000,
24357344453797742800,
15499859795061560087,
83248213978295512444,
627500000000000000000,
2928000000000000000000,
14736555123348816707675,
12760000000000000426,
962143242261823982942,
1015134900000000000000,
854829946328695581,
33590380356963262846,
2064909091693993610890,
52703788403255753712,
596597054198187871900,
3408130000000000007381,
40722000000000000000,
21040000000000000000000,
31000000000000000000,
290,
56811022973126159920,
13601920850513621771,
12042798500168614095631
    ];

    function totalAmount() public view returns(uint256 total) {
        for (uint256 index = 0; index < amounts.length; index ++) {
            total += amounts[index];
        }
    }

    function getSize() public view returns(uint256 size) {
        return addresses.length;
    }
}