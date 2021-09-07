pragma solidity ^0.5.16;
import { Table } from "../Table.sol";

contract Table_14 is Table {
    address[] public addresses = [
        0xeBC03ADc6cac818a792B91740c300979214F372B,
0xEBC54a9BC67FA676e0240d5327676EB9f30920Da,
0xEbC7353Bd5AC9698AC369a8DaAf871449711d30A,
0xebF2689470669FA464cCC160fd73d7D8d3Ce80A7,
0xeBfaa8A9caABeBC93a1EEf9006B0ff440D450D75,
0xEC00FbfDe8a394E14614b4d9CcbbFa4DF6aa3ca7,
0xEC017A02e8049D8a894FEde181AdE59e93853858,
0xec2135466f6057C3dC43676169Bd85FEF3E27cbB,
0xEC3455fDA448eD47C1F3Ff5C89006645a39ff964,
0xEC8B3a6ce035616090d20224c44030f6480D7da9,
0xEc8DF57cDf4E12B2F0f5f8c22cB659FA47199C46,
0xeCD8b0A7B204A9d4219A5B52020f23B8705faaEd,
0xED0408EBF8CEe881511F62e6cAeef31fEc62BA06,
0xed08662a23b846932274cBA85981e26edD2f6e7B,
0xEd09c53f4c6EE0adDf39cD40FF8f236810bAc7DD,
0xED1500366Eca6b0311313Bc1E566cCDddC4c7931,
0xed36e9d644C5175074b54660f4807151DcD12Eb6,
0xED5880Df11107FA0c8b7b853555Bde80cD75c72e,
0xeD5D4aA57E28689050Eb7DE9975D79E0B254F4A0,
0xEd878594b9E18D8C184AcB3aCb1812766C4E922c,
0xeDe3474ceC918076643b4d017Df022B88bd7F8Af,
0xeE4c633368f1fDbC0Be5845C32Dd592C40368bb0,
0xeE6B88B799884c7A013a7a6bB6451A98cfe82bFc,
0xEE77209035be935eA36876be3C8d2897f84E4D64,
0xeE7b266A4f92999531072738A663AAEce72Fa485,
0xEEa8f73d103b0456b75Af45b9f95ddD6f4550E40,
0xeeb3C9DC34DD586de3BF78781760336B7fb1Fc21,
0xEED56Ad0599642fabD7AD842a6d26AfD84E7b139,
0xef8cA81CD76F58177B1B5d5D1f7577078B347E5E,
0xEfb1984a170F0e10F36Ee4515b334078F9c0776B,
0xf03538e0B9b1218e9Ed175D88Abd98d58e2e84b4,
0xF0781D6F16a09ec21e487F74798A0cCF503f5ed7,
0xF09E5D53081f1c0ba61de79bf810Beff480dea4F,
0xF0c731691432e18dA2548171B8eDFD323d619AFE,
0xF0ea58b65c82c48ce69f0ABD68D178e7764C4bA2,
0xF18Ca3753c5bba51B97Fd410542ca739b4De5E71,
0xf1A9f325B80C9c27bB8abf2929D00F1742Bf07Bc,
0xf21a878c55e814ad558FE7916A1Aeb28074C7e6B,
0xF21fD222ef6C0Ba8e22eb59200fACA1e4Bf3eccD,
0xf24f4A64A8dCe5EA20681bfE6B55ccb93E56A849,
0xf2A245fCC2A27B11d60f801d57a71e8dD427153F,
0xF2aA7991dE3C181C7423E92D427b02d0A28B5550,
0xF38D868aA43d4F662C0c1b18950a999828A562ef,
0xF3C43F10Ba8C8Bf16f1A2e538F33E6b0d22Bb340,
0xF3C7FCC00B59516B51a25253c593b5E4B4EdEe4E,
0xf3F816fA79cA43151b5Ac30A3a77EFefb17d0562,
0xf407EAC6db867d4D8126f4c4a73F04aA2d052f57,
0xf45588fa8778A23E78543bfCbEA279F2336424C0,
0xf466c7276606DffcaC980ca8D42d1Bad525be338,
0xf4A15068c7cdaAF50C37b6D86b902a059DE0013d,
0xF4A50Ca186DABe0c3A17DE7F88A415488AAf011e,
0xF4b9E164A61bF9FabdaE21Ae1AD27dD035d6Db3D,
0xF4Db114aD6f5cbB1679567a56D01BC6acB56E44E,
0xF52d35999250CF1ee190E866AB80d993c48274d4,
0xF5366a3445Adf491311a6e86443bfb5392f08265,
0xf54762EB88DEe490AE2d41B9b069dA86e9a5f676,
0xf5D7fea242b86dedd2F7f245FF5682C328c3C0b5,
0xf5dfC20577794e86ab8A92E399895d22A31b2450,
0xf61f7fCB63785Ac05Fd0994dD4C55DD3BEabfc23,
0xF624C52Ff68E8a2bE33d1C4b1dC6127E725E2Ef8,
0xf63a521ad77803a3b5f92EDdb4613D719d32448a,
0xf658F0c23333a8cdc79789B1D26956fD78111243,
0xf667a8950346F9A41334b63fE207415207e458C7,
0xf6B6B5466f88266F4937e1306f8De051c2d5113D,
0xf738C8ef6F70C759613A1D21C8535c0Acba15bC2,
0xf76c8BacC09a793D3efa6593F855761ab77E5cd2,
0xF791Eafb434E4fe70b278C6949f69C038768427e,
0xf843af4fD99eB92Dacb2bB035863DBc36636698f,
0xF8521Ce31a22EB22488b7A15A595f912a1EF4e0a,
0xF864653e57469e02ED6d3180cEea3dC8e19feb20,
0xF87C50A3Db0F09b94142936E0716b839B5a65C1D,
0xF881D0E8F2da19240575B2E46e6850e7d789059b,
0xF8bD996E7Ea84CA7aE88Bd072bE2Cd5894bcB348,
0xf902bde9dD9812E9CC436D7A1736bFA0a606EDA5,
0xf96f5e7aB5d25155AE1B5C860e799C9976961d6c,
0xf97157aaEF6F3755628B30d05FAA5CF3D62981Fc,
0xf9752AcCAaDA78F10e47Cd3dB2B63D94E14B5ffE,
0xF9CE93e6De0D6Ce5bD5cC7Af7b086D749E8F4590,
0xf9fc6ed4ef77F0eb879fbBdFBe7A4fa57F9d6aDF,
0xfA398c3d2D21DfC5c2399448Ca99D33b2fB7f71e,
0xfaD0324B69DfeF98dEcb35104413b224369Ac299,
0xfB1E828b6054539517f16c3aEcD6dF2AbF024851,
0xfb4848595072930ce4a6f03C2558838bFC361171,
0xFB616827B4c9900Af186AbE09cA325772bd006e2,
0xfBC0Db128E47F2685d52d31cE8D5D9FEF761E063,
0xFbeC2c5cbB8bf4179E605520c6Be48D75ED5dF81,
0xfC0C2b5Ad9bb2409290a4809A7C0D9f297f44ef9,
0xFC27F64B651713Cfa34c596be2f6f7B48375F045,
0xfc3ef672B2cD0658d774F5fF1346eBD24b213afa,
0xFC69C8446fb883134E7077b88519d0118F014864,
0xFd040bb74eB6953a3a19ff9b1f032C1Beb00981f,
0xfD5350a10f23d7123432ED1e5ec921E600941C6E,
0xFD5aF475Cd49217fC716E792ae9f270d6fA6240f,
0xfd6921f6cE7Bcbf15BAf7d11df2925b45048e425,
0xfD7e6F5dD2456d2C404d28D7eaB8E8Fc579BEBdb,
0xfE7f4747494ee2ADc7C23D58E1305344a26eF64F,
0xFe9CB6bd3AFc7FCA855214d738c934ddab55Fc1e,
0xFEC43E2bEA0C0faF3Ea5a07A6B0A5Ace172Be931,
0xff44F756F75d6f2F885F4288be41F1BeDBE49Fba,
0xFFE665C7DdF7c57736dB69AC66ed757B811f3F3b
    ];

    uint256[] public amounts = [
        46203625420023200000,
16866270406099400000,
474390537848063000000,
100825354734418000000,
772311730713414000000,
339066717594236000000,
440698710221919000000,
46358992513966300000,
8140691032395130000,
7736534095494990000,
1484421721810330000000,
5064808141412500000,
213108020716226000000,
457992505541490000000,
308068781272159000000,
470977015918861000000,
2587168126314530000,
34362988136591800000,
10470687240075600000,
22631312748064200000,
1858221016657950000000,
151608349118425000000,
126139501611478000,
67889618444392500000,
43572079310970200000,
273367234446912000000,
142759016490437000000,
10318443375026600000,
115305329366139000000,
71310864911022400000,
10485395965343000000,
47806458841740100000,
257,
1699328541580710000000,
431866275028727000000,
214781729737076000000,
16074216244420600000,
48242009438357900000,
76195988058017100000,
2049297742661190000,
53781673497643000000,
422575907604345000000,
388823724071149000000,
61069692693351600000,
29043246910968400000,
72696955828457600000,
1178062577382370000,
49329144601022600000,
9379605739662980000,
6073435402125310000,
562658625369988000000,
72699218543522100000,
193344786592277000000,
6191852577130630000,
211991635248918000000,
5430242478901540000,
73966978103256800000,
428227102463574000000,
417759265864237000000,
1918064701194600000000,
444649393019982000000,
212843659219023000000,
6703139748782240000,
2738349438064850000000,
432654682082825000000,
74026048353968800000,
3432195310143390000,
3704747028753160000,
25506367066787900000,
56613136454245100000,
4059173742454660000,
42711574600709400000,
9142254710422310000,
646515348234969000000,
464919031468479000000,
955908440741788000000,
699643828001961000000,
231443731171276000000,
1963648023268140000000,
93958550680188000000,
1811298764271770000,
175185886743829000000,
83910106357342800000,
17474449529370400000,
4154705552487440000,
25722005604735800000,
1163262692407600000000,
2200282139121540000000,
81725569517902100000,
1763465248988790000000,
1234819899419240000000,
2334835658970340000000,
21298889840805900000,
1813983737648110000000,
22167218348930700000,
30357088345749200000,
112193554232071000000,
209204992220800000,
11084112801211300000,
10393710405574400000
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