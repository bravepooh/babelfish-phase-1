pragma solidity ^0.5.16;
    
import { Table } from "../Table.sol";

contract Table_42 is Table {
    address[] public addresses = [
        0xEfb1984a170F0e10F36Ee4515b334078F9c0776B,
0xeFD752E44E382A761462A9b3d11f2f8C62022d84,
0xeFF68aE6C0A7a052BfaB1A6fa801f3837C089C2c,
0xf0001404Af30de4B683f45F282407f13c537d602,
0xf03538e0B9b1218e9Ed175D88Abd98d58e2e84b4,
0xf03DE392CE7A29f63FfDcCe778D7085679AEB3aE,
0xf0487194e15BB7146007F37590da517454Cc7611,
0xF0781D6F16a09ec21e487F74798A0cCF503f5ed7,
0xF0850ba9Bb1A694B86C0c11E8d983f789e54E08e,
0xf095D087dF2c6694A557E0519526B3395C44058C,
0xF09E5D53081f1c0ba61de79bf810Beff480dea4F,
0xf0Ab97c89f13da829dcC2339fA34d16ca0bf08B3,
0xF0bEf9E2739F17e85B14f16Ce2954711B0040B22,
0xF0c731691432e18dA2548171B8eDFD323d619AFE,
0xF0ea58b65c82c48ce69f0ABD68D178e7764C4bA2,
0xF0ec187925AFd056711a95CcCecf4Af984fE5a4c,
0xF0ec7073eE9C53b3DAdaA7a8F071B115a4Eb13c5,
0xF0eE9D59eE92dCBFBA61ad03DE80Af48560787Bb,
0xF0f05877e9f20e006aA432de0c5Bc3D4b0ff6bDf,
0xF0FeB7f21a395ca07E65982762BBeBD07f1442a8,
0xF10c6a1860e05311ac185C1EB7cBFdD110C18002,
0xf132441f5bF020688A4be03491131091fC85A836,
0xF14B536d5F16BbC8dE6002bC60D305300bb62D77,
0xF14f36AD419C7026Ce544eb06aF9C9928d02F809,
0xF18Ca3753c5bba51B97Fd410542ca739b4De5E71,
0xF18d0EcE85861dA03b9bAf6A5CE27AA23dA747a7,
0xf1A9f325B80C9c27bB8abf2929D00F1742Bf07Bc,
0xf1afD855b83A3Cf95cdc4D7cBbaed4EE3f6bD6cd,
0xF1bbeE5003Fb930608C6e99D991f3ef1FB1a9832,
0xf1D16B920B3C66b2d151d2974D81f80894631b40,
0xf1e44E96660d60f2546932a28ddfE09E1CeCF9bA,
0xf2180Ae98015a7dba61253e617A77Fa2956E0a1C,
0xf21a878c55e814ad558FE7916A1Aeb28074C7e6B,
0xf21bC334F01b0c3E4383D3F47C1BBFF2088CDE11,
0xF21fD222ef6C0Ba8e22eb59200fACA1e4Bf3eccD,
0xF2351CB3Be48769c41021A0F07d96D6443e9bCD2,
0xf24f4A64A8dCe5EA20681bfE6B55ccb93E56A849,
0xF291EB8C3a1367c3dF897d78FE9F45C448907980,
0xF299674eeFEa658eaD0CA7245eBF5e3315682DEd,
0xf2A245fCC2A27B11d60f801d57a71e8dD427153F,
0xF2a3C997AAD0AE797Ed21842941bf9F4a9688066,
0xF2aA7991dE3C181C7423E92D427b02d0A28B5550,
0xF2AE3b1a8e37914e1d268a7Cf094C5054eB81064,
0xf2BEbC7229200D0Df94E5BAF8A676798e08375F8,
0xf2d9a356f28b21B874b764ADC81Fc26C01f651Cf,
0xF2F18ab8bb62469d0526BaE4002932940d32d30F,
0xF2f404Cb9148bB6922E8b8091049C3F92e854f91,
0xf333875be244B2CE0911175E0B419534A37eb3c1,
0xf36a9bc7452d358Ad2EfD26afE0413a23de96Fca,
0xF38D868aA43d4F662C0c1b18950a999828A562ef,
0xf3Ab0D71500c217D13559Ef2634A39A920F432e4,
0xF3b2A4322455a63B703aE893A71F45c815e802d5,
0xF3C43F10Ba8C8Bf16f1A2e538F33E6b0d22Bb340,
0xF3C7FCC00B59516B51a25253c593b5E4B4EdEe4E,
0xF3e5a083b480c2Dd1C8a4066f0B1A0e89816ef0f,
0xf3F816fA79cA43151b5Ac30A3a77EFefb17d0562,
0xf407EAC6db867d4D8126f4c4a73F04aA2d052f57,
0xF4480e4848dea4A939d32A90704AD58be80D79D0,
0xf45588fa8778A23E78543bfCbEA279F2336424C0,
0xf466c7276606DffcaC980ca8D42d1Bad525be338,
0xF479F78bF7Ab3443cDd7060f948aCB129601F086,
0xF49f4c935a7D659a851b38752E2b2Dc1b019663c,
0xf4A15068c7cdaAF50C37b6D86b902a059DE0013d,
0xf4a1B0496ba5135d3cA7C4DBDDC8d76C7BFc1E8c,
0xF4A50Ca186DABe0c3A17DE7F88A415488AAf011e,
0xF4a547A224e152f90Ab1760Cd3F7fB792de6f697,
0xF4b9E164A61bF9FabdaE21Ae1AD27dD035d6Db3D,
0xf4BdF7aD48073B8457F6cBEc12890b75ed0289c4,
0xF4Db114aD6f5cbB1679567a56D01BC6acB56E44E,
0xf4f40F8314f84A3e356992e4c3100841743756Ec,
0xf4FCa18Db3398289d114d1F4F5A8273C3153e96a,
0xf51F65c9bdaa5a5c015757f48a22811aF8c5795B,
0xF52d35999250CF1ee190E866AB80d993c48274d4,
0xf52fe56bf4eDf5aBd56232b927641f014d2D515b,
0xF5366a3445Adf491311a6e86443bfb5392f08265,
0xf54762EB88DEe490AE2d41B9b069dA86e9a5f676,
0xf549987AD19D170f655952FF66e37901abF0f60a,
0xF55184cb18303B2BA247536Dd6E7a541b5ca6D87,
0xf5566F8D9AAD15e00381Ea2c8F7Afe78844c6ab6,
0xf55c3145057f3F3c4f7Af9d371078b27245Ee869,
0xF5708334514050871Db35f4f74BF404EF18dC6ed,
0xF57621427E8857BFF45883ea651d72409e151248,
0xf5AC187Da273c2c645a2e8327c9c3D2bb51f7a88,
0xF5cB5A52A7A74883f288068E1a1286E82B4589F8,
0xf5d676bB3D17e76b197dC0E2ae79Ab5123188Dd5,
0xf5D7fea242b86dedd2F7f245FF5682C328c3C0b5,
0xf5dfC20577794e86ab8A92E399895d22A31b2450,
0xF5F5606BC67c82d5BD1E3FB344B6362078742A6C,
0xf6164703079311bC87177115FCeAc63Ac281C394,
0xF61d06E97126bE3C872ee62C601Cce0805188a61,
0xf61f7fCB63785Ac05Fd0994dD4C55DD3BEabfc23,
0xF624C52Ff68E8a2bE33d1C4b1dC6127E725E2Ef8,
0xf6256a4EaBd24C34B4774CbE1d930B5F5634f24F,
0xf626deE5FFFf1397aaa9c5B5C772CaC97d29c118,
0xf63a521ad77803a3b5f92EDdb4613D719d32448a,
0xF64e0161806eECB20a82c86C7E6D81a8642b6F5a,
0xf658F0c23333a8cdc79789B1D26956fD78111243,
0xf667a8950346F9A41334b63fE207415207e458C7,
0xF66b6c6C03A4DC146b8689A184DBd0374A14167F,
0xF66FC4BcA38a392A27111bcF97342e22B98516CB
    ];

    uint256[] public amounts = [
        113927489578108000000,
4179305598459990000,
7227794615717420000,
5289163924685500000000,
25078378209017500000,
12088645979090700000,
501567564180351000000,
162032815239182000000,
5587573714589150000,
341151237134826000000,
564356904213998000000,
2529098705072610000000,
13440650185582700000,
13140172269578400000000,
950607617865016000000,
296585790329954000000,
19092083601025000000,
6327815689282230000,
423307497918664000000,
13680531066885100000,
40620506365215400000,
123306769809333000000,
161079266082051000,
0,
842985592095378000000,
58520195332592900000,
127666533822029000000,
1637365184007090000000,
171159180855432000000,
3045231639666420000000,
36138973078587100000,
15563527027413600000,
35352584590058500000,
85781448634284600000,
156825272350512000000,
0,
6535653187759740000,
549587209189960000000,
5375202765975810000,
154607543592803000000,
73137595118826800000,
4207560339885710000000,
888720132733541000,
3970801718621840000000,
4049294725882580000,
0,
2710422980894030000,
1716144487998760000000,
962890226406604000000,
1288374107804700000000,
704461738830757000000,
832683029870980000000,
119247349306377000000,
118656844064004000000,
6717725044306510000,
334793470219146000000,
3815315416678530000,
668856816196509000000,
272697493736931000000,
0,
56231898759725600000,
0,
103635533157474000000,
5271351510134560000,
10231727103549900000000,
2563956684549660000,
319669945348939000000,
86879617887768000000,
425583190067061000000,
19391069554206300000,
4023502707274660000,
3598620539210820000,
11039135542738900000,
2710422980894030000,
187860637810336000000,
113641817580181000000,
30734180396980400000,
668745069984469000000,
10980918326539400000,
25838409688889200000,
7891043496764560000,
1299690162015220000000,
754012087171803000000,
117896933707884000000,
2489916081838640000,
140229931485423000000,
176937979046679000000,
1851670344557120000000,
108418398421107000000,
7688833089093850000,
757360130646403000000,
6249295364002570000000,
170151490489650000,
542559097991137000,
7418730825757140000000,
176473324065879000000,
294265514692650000000,
10709053730071200000,
2563956684549660000,
13000371120813900000
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