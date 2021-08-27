pragma solidity ^0.5.16;
import { Table } from "../Table.sol";

contract Table_44 is Table {
    address[] public addresses = [
        0x31480265d44e76F5FDFd3c14710976E50daF9E00,
0x3247D3A82a2f52c3417316DA6805cEdFd7EcEF93,
0x3255EA9A1Df06Eed59649152a7FC1517c6000b8E,
0x32eEAbDDeBc9165AC026C1B6DA1B8A31471a632A,
0x331fD682A1e6d9a40A27375339C1dA9E0Ba33FBA,
0x332E03b3EE1CA05fbA00bb7E107428dEC990340E,
0x33774f088b8CeaD78022aAF2ce67a9C8E106b5E2,
0x34334aBBe010097aEcC08d0140c6bCD1C5087622,
0x347d1aF2009836452BA2579AB827eC1ebAae9390,
0x347e5fD3F8B6e48176F6ab60b9220f284aA70242,
0x3532bd3a774327dA6C42A74a445a8c4e73a45412,
0x35A60Df343098e952A91fd9759F510B801c5279a,
0x3675943c5B9f04a155e9807521F0ff5D5891cdC3,
0x3779ea93A886Fe9cd4FDced6e43978024F0B6183,
0x378b4Bd9Ab39fD2603ab146699794C82c217Fd4A,
0x384CC01d95Ef3E43F7D7C6Ef789507403F4bd701,
0x38c382B3B7c756C66e601fA311E2E6341239Ff72,
0x395B7952a07eEe76621143b6AdA63B0Bb4f8179e,
0x396c20B0a6f62d09B2beb0100B57EbE5E4866278,
0x397cF5E880de7d5fBb88BfA6e5654790c630636F,
0x39C9544904CD629FAaF9A399A51de44a7cE0f6Be,
0x3A31A0EDDE6Ba250f3778b874912a6cB6BdE04cA,
0x3a48903Ee2bD45041AADF2472FF5529b760A0Ad7,
0x3aF4c46eE394927c8e6Ea0672A84B9e42A07e50d,
0x3B02b1Aa08e29cd3e26eC5c71C8767cb1dfc4060,
0x3B12C66896Ee7c34628B0c18b347aA4dA5d5F74A,
0x3b4b931E8E99dFe40d04f2B7Cf7CFFC34775152C,
0x3b9988E318874E5a2fBf32e3521951756d4f43af,
0x3bf921cA43e9AE4Dbe7f09413DD76C5332E4aA95,
0x3d3A8f1215Fc89f37ab38d0d3088E5AdD06C516F,
0x3daDFBce997FAf62fBADff8D1EFa5010bc7C052D,
0x3E8cF9a7d7B00D65aa066621D37a1D607C19250E,
0x3E8dA3Cb413BFc7CA654619194af39e12103C6ef,
0x3EEdBaC5A170dFB6c583934AD2a94AA4f13A98B6,
0x3FCb4FDC45c01344805E41Fa413828b76bEcA719,
0x3fe03E171Ec5639719746Af4195D39FDF54e6018,
0x40003aeD7795650193e8c149aCbF7b5b9A395cEF,
0x4058b62f933A78bECaF48685B6851cc6d09034F1,
0x4132c96cC50910656E5e0f23fDB70568cB1443bd,
0x414848190B5c4F68a9D853845Ca4079F0779058C,
0x414c2bb8CCb50a707584C4565c044bC66269F746,
0x4161AEf7204c0d4053112A1f0F13570626DB6Bd4,
0x41B4a5Cb62aeBb7edc1ad06Fd550E72B006E21FF,
0x4238C9012fC4B310867fcc3b35291cCfFA4874EA,
0x42C600DC13D0C89F1D0fe3B8a319A02B70fC1778,
0x43763d32a9dF8A4311925259658b4c25C158a806,
0x43910E8E7553747FCBdfd504bbdF1da7E9c084d2,
0x440634C90240aB8b35aBB041CD6B8FAbeD06B8f9,
0x44272957A10CfF6Ff3B02481B94e93b14376a320,
0x442bfb5Ff048955940093fF9c9B28Eae3786c592,
0x44a6582D8f32E6AB83aEB134190b478Bb6269573,
0x44aC0C2a2AAd09512452A96BD04e8d538948A107,
0x44Ac27C2C14BD7cB54ce31b17886A1e05684fE9D,
0x44aF8BFd575Ba95B91211242B74222DD5802E6Fd,
0x44Fbef86239Debd8e68a22a9BA58Cd7aB6BE6947,
0x454F1fC4007dc5dE55692D858F82cD3818B3504F,
0x45504D8f0DE9E12169Bc1C6ae572fF200BE1e69B,
0x456f188BdE5F9F726e2Bee2ada41058C83BD4894,
0x45d8f466cB8A27dEBD65DF1C9665Be9299029973,
0x4613EEaA10746596DB2043046d47B52f00604CF4,
0x467D9d8282198A71c6f6F13C9Aa8C381a85528C5,
0x471f59dD44f4b3c8F075FFa6ec59362D3C3Cd6dc,
0x4869E07E1237Ba6d0f908ED90682d706dd438B56,
0x4881C84C88fA1c482439801C4130ddFd09Be8a51,
0x48a8c837A6156920AE0BbA872fA8E8E38a97d48D,
0x48c9A090FeeF87fa7D161bcb3CAE259AD1514bC1,
0x491510520C47EbEc2120B353E5A1FbD41F4c1903,
0x49F68A2e845F5D05740c4919BbF34697Be11af55,
0x4A715C0d92e4eb38756dF3D8C0c562374aeB1d02,
0x4bBe03e8f66A97842E9BAcB69302Cae3557bF3d2,
0x4C0db6794A600383A788F312A0C7a28CA6d99628,
0x4C3d3505d34213751c4b4d621cB6bDe7E664E222,
0x4c679D206d5C5927e5869B8E5e1502087e185D21,
0x4D322DFbC16CF38e65Cd19Eda193899fF89f9E7a,
0x4D464CF5396e2DCe37CC32776E2f8c4fc0a779CC,
0x4e3eF3Aa2396D4D238aacb6F39CbbefEe8e58699,
0x4e4842749E799B384601489f1653213d86C31E1B,
0x4eaBa80c9E184C10488cF0F8629677c788c7d5eC,
0x4eD9c6193ede88A5D41b2E833E46508800420780,
0x4EE58A3585a42a8c947a1dE7184D7BF05d273D6B,
0x4ef59E60d5eB5b35ef4b4d570CfAFA752d581cf7,
0x4f56F4Ea1e21B9BfB27caD5f59BC7fC132683c60,
0x5129D3A8E09faf940C01a8828557190e32Cbe9e0,
0x51519E8e257Bb13DA00D049F5e83Fb5C5f1E90A5,
0x515236f6f211553aDEf428B060F618BE5E934292,
0x51E750B78B744BF18271051D6428E6D281671976,
0x51e9Ccf8fddC1aD0fc09D7cE7CB75a3226Dc28a7,
0x5214864F9d9C6ced59849c90C85eB2F298Cefc8a,
0x5289AFDA520b84F629Ff7232258418bd4cca0FA7,
0x52BDE4250707dD9ef2Bc10bb52Fb84985B92AAE6,
0x531ddf168C97538847a6208207de3e9089984658,
0x531FFAb0A033707f3794222b9ba6c64D0099374A,
0x5406Bdb3B82287307537Ec4710adFD3413986ce4,
0x54F0AE691197F3de9178EA6B0bD4d7113ec045fA,
0x559a5768Fb9F96D2492b65e098A0344501D20563,
0x55AC378df3aC890bdda08f5EBd084743acaC0Ae5,
0x55add6bC6454a9BbaB93AcD97b6e72d8BEBFc719,
0x55ff71758D16D121CA6b0580a2DA43D97F4921CE,
0x56F2fCaF9594984Ae7AF5fcfA1A638692A06F4e1,
0x5717D38C72Ba2e3FFc002cFf31440d438d006835
    ];

    uint256[] public amounts = [
        3231928753499164058461,
2929376530380103524300,
246667289342462229647,
757386077428611926945,
169604379472408740030,
1171170240274854715095,
587616281565849982180,
76250271393420924798,
39934,
1582076969482191775800,
8177632476923076923052,
169600000000000000000,
8574213754611712269079,
7356809537050836077995,
101160075576108802877,
2383934901548763689180,
125420290527318476230,
199390583748092610580,
12950000000000000000000,
65875384974923076330,
3357938461538461538363,
15591791409651233265349,
292307599911604982741,
505283694204723099434,
41388123978803162729,
27979364668857126264287,
114800000000000000000,
2285565858427256428437,
29542908783149334221,
2559478900659761834336,
230958965094126883240,
172918520975931920505,
4450323514192319737340,
100536868824058884725,
2710753192307692307645,
227259619480582480134,
91121361301705130000,
20961001209975657353662,
5138579293344289500000,
249009882381171437200,
2854557589235005797876,
1445760333566540341500,
272466460552715818592,
200237058340180763000,
225221665729530960000,
6237919454000014372,
39000000000000000000,
125682856078904549800,
60887504476977700024,
1500341997412250450972,
380427254549707366450,
317945520229237761966,
156148863926577409390,
287685252918849460746,
7332452412251493579936,
16120000000000000000000,
551381825892243820000,
577606948817110438802,
7191875440756933322634,
22658525751732612924631,
3970156121610517920000,
6886247256393953294457,
226735627554979965467,
1486892429338097380989,
61678347565476486368,
137891083868807457808,
3743512666815347332300,
199080051411202047432,
15836951282860819897706,
535300000000000000000,
889878092553399517950,
15416198562500000000000000,
688330930722747900044,
3694266817738186501993,
390707295878623887900,
696564593277733152820,
243000000000000000000,
225636931692622392010,
15201088002659936414205,
737395139624247257671,
1277269807611973139702,
504000000000000000000,
10800000000000000000000,
375175945460070645906,
1525962577744332623244,
8696425423663926278568,
77216238384108977608,
497930902770486616001,
240338020665429466270,
717118838099649553058,
122435213118097998304,
675539938813583491,
1678821614898296888613,
1060212277974517340504,
357574045185168918058,
931594474116680517000,
71952000000000000000,
1700000000000000000000,
17064961385988243855535,
736415066904686201021
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