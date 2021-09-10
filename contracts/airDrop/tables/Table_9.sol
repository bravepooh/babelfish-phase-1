pragma solidity ^0.5.16;
import { Table } from "../Table.sol";

contract Table_9 is Table {
    address[] public addresses = [
        0x94900848a3c5a88681F1148d8e4584a055C4f4D7,
0x94e899Dbd6d331f41D12a0aa9e9B04190C167441,
0x94F4a008074e4b1fB499175d04263acdB81aB797,
0x95595de747744227fB347c00b133a924Fb654Edf,
0x95A8bcDF8dbFDbFbCf3310553aD8E82F28C5a0CD,
0x95b0a54B0b975cf29a0b111E2EE699FE8e1b8566,
0x95Dd613aeadEe328DE31C073d4C7653781743898,
0x95EA15b4565A8e877A87E716743DA7Aada225901,
0x9628eb2b975715231E687417D236CE6b9a391789,
0x9637e189731eaf38d5837ca6bba75B56775c395B,
0x96c8DDa49811394A627383ebBA9c278244BDBcfF,
0x9731b1BA46Fad438D3cb960dD965e4D785e48A01,
0x97364305b4e4Cb44F3809626b8fba11F7B56dE2a,
0x9786Eb9904a1Fa1240ce147155f18De4D6785d5b,
0x97aC86e172449fc648E81159A70025C26eC4f8FC,
0x97C502f467E0547a28bb937fE2534eCeb2ba6A29,
0x9848c2E17c5AbA3972E007964Cb391922cA6a7e5,
0x987a71e2267F4F646711355C4ae23B475EBF66AA,
0x987Be2c81f3E0017188fE44F504598734D2757DD,
0x98c0D7D027bE8fb628c149971Be865f5c0a7e0E8,
0x992230F727e8DB1B3ba71f6Afba8be33D18aA02B,
0x996EeC5A4E8Ae40fB514521C74904a606507fEE6,
0x99930Fb80543D2c7a7Ead7725B39873031ea7BE1,
0x99f05cCd652f5d197e2C94Af213e09ce08fa73AD,
0x99f802dfBfC677A4A5818FB85318d4ADa399223a,
0x9a2aa0c1156eC9f010548a9b2BfC33f692392b09,
0x9a57362B01ABB089C8Ac877E24c9d909cf89d579,
0x9a7008866C1C1a22d3FABc381ADaDB5b15395Eb3,
0x9a9Abec8cbF260AfADd7ae8adBF8cA45045a95df,
0x9AC00CcbF773160a0db86233ad2072F23A5C6Bae,
0x9Ac8D36F31424a2b4D42C13aEDA9e36aF856246b,
0x9b05334456664256c4Ad238BD0795133b486Af3E,
0x9b45Af84571a9a6993fb91234514b2AFB741d93f,
0x9Bd54d8377510A1F5dD29f5c0FF79239fF15EE18,
0x9C1f3730C1bBa49D34C3b0fD944114Dfb14470d9,
0x9C1FD6d9d0b1B0B8B649EFc1330B7Ee866134b9E,
0x9C5366709CA3889c4E4E27693301B456d5213a13,
0x9c9B93452eD14EAb21F250333A106F8149a67Ea8,
0x9C9d9BB8665a4A842aA0Da8F7e077E547c4F5389,
0x9ca98E0cCa841ece50EA7c21Cc633FdcC2901019,
0x9cD2533cE30F27C33B10634A1c8304C701082156,
0x9d0023Bd55ab3647f6C591DA6d46e5A6128d33d1,
0x9D5d72179B2B360479083E5D8170695704e09B5A,
0x9D60bd851A86C5b423353b6383c944be90837DAa,
0x9D8385f270e7F709E64Fb6467b94373D9c4FBc52,
0x9dd1aaA53230EE858A872E45CC15D83E93969f05,
0x9e7545772Da2aCDDf0C061DC4b4D80c2af400972,
0x9e95b3275e96E859A260AA9DE8e376a2DC785C0e,
0x9F37191DBFA8160815c0FAaEfEC4c0553f31A7e3,
0x9F5f47457EAFb76535e043f540A37cC0598D320F,
0x9F861b023B82079b78335976628F6Ad01a0c1286,
0x9FFA3FBAEdF887bf279BA8b9C449Fe62D673F6Da,
0xA010546844924d144152cdA7F27939F21341ab5B,
0xa0123637A7e253f40B775965DC30F91D305afDE5,
0xa05F4F2D15f7e4518E62A21228b79427406Af910,
0xA07840094cbc319fd44f648555101B5f3D725240,
0xA07A9C873E1a23c80Cb7a39059edE0Af44903dE0,
0xA094Ec445f6C12Bbd62C5be5D888c96fF8963CD0,
0xA0A7724CE3323A4724eDB5F6f8DE67424E2B44d9,
0xa0ABC6c7994a0C5f708128079807B4fce847C5B2,
0xA0EB4BEA36F8C53489C171Bf9a2190E0315db61b,
0xA0Ec15DDd23A7a771125b48eaFC5C79c0862bf7c,
0xA12084b57DD8f4A1abf0607d7941e8c2881f6AbB,
0xA130654FFF77430d53847005A1EE213d3719a5A7,
0xa14173A78902D92431336389DbF9Ef0cF74e3321,
0xA15485d6bAB945A888263Cc3cAD27EBe49a7ef16,
0xa157e860930B705e9a84A84B75Ea8b078Aeda9eb,
0xA1799Ea093AD5C26A8343b5a8F91Fb039891704F,
0xa1f8b772911a1e318c9893A24A7D1Dea46FdeA0c,
0xA1FD07BeCBd304Cb859985EcEd72f9Fa6Ecd7738,
0xa22540654C5F966FBD3b0e8337BfE57d4582dd61,
0xA22800d34b90A3BbB9399845d256029181F54519,
0xA23F89DC9E0752a9efEcD22F7aBA96D117E91dE2,
0xa271BFb891C469b30F45eEfAB36BdE5af28d3643,
0xa2A528458172C38c7114A24a36e441ed7bb9d8b7,
0xA2Cb34D5D167579132726D8922A7df5A044A73DE,
0xA2DBE7989148daB0e743c017aa7cB8E812e6057B,
0xA30be8b4a7DCE0C5746ad5494F154Ab93147EDAE,
0xA3269A4a9ACA8b02cbc988f06Bff52913a34EEAF,
0xa34A497C2BaC0fA523E751A86Cf39a8A3B456d60,
0xa353AcB0E49962198DbFDD975A06Eb58Ba38bC97,
0xA35eA7A8CBB584821Ecd40D58f1cb7059037E4Df,
0xA3687E68EB2038556bCA01C50CD982aD87b86F42,
0xa3690506Bbd48eEA3c8E76836afd7974af2c6282,
0xa380D05dDD16f2A8fB67CAc535FE0B2E400f0133,
0xa3f4B3Fee73f42e6aF03607B4c2fCA85cA6f65CE,
0xa40E5754544b8d5592AB30F3D1e172c27524435B,
0xA415F6e11aC844B954471cc0cEAF0D488B450e1F,
0xa461A0F0f62ADe5dccf92c326a34600F78BE2e72,
0xA49266E60aE06f23dA8F812e61De1C71c6aEd4d2,
0xA4C9d9A5568781867A61a78b96098036defbd65E,
0xA4fd65694A9708C2d204BDF7acF8b9c09B105903,
0xA558B477E4d27341C728689486B0820298C1c73b,
0xa5595153a1815Ae29EDF481AC39E1148F3c26de1,
0xA570ca3BbE2CD3Bc3190DF0E62235B31A18D5724,
0xA573E3bAe42C512E2989Ed47737373Db38Bd4272,
0xa5Ff245EC19298Eb972085B7271355288B39Df7F,
0xa600549d84bB2267AD605Fa63715188E9465ED31,
0xa6032bC515D22e7d8F871eCE36edA2A42ce3B22b,
0xa60A061061C7A73384DCb4605DeA5DdaAf40745f
    ];

    uint256[] public amounts = [
        4103314822647590000,
1500109726691500000000,
1427773088611110000000,
300343363999841000000,
4150402714527780000,
383392161140939000000,
153306930457886000000,
27138610377777900000,
314144224817713000000,
582063301538650000000,
87317921576815700000,
1433678108592840000000,
226668629357531000000,
5042344364022190000,
19173748691738500000,
287946674768702000000,
1033687584833000000,
22829695656351900000,
1100381030975080000000,
182652588277453000000,
24319618098435100000,
258395461234121000000,
242778412578193000000,
953146400388313000000,
166166862808043000000,
235984869906088000000,
289514434935114000000,
951675386023275000000,
70337969187114200000,
68060340862519500,
25425576276808300000,
64498846290288400000,
8982661478393150000000,
97683249513851700000,
2845496365459080000,
115395450927221000000,
33798152096388400000,
26427139437633600000,
204354066449405000000,
20747776493341300000,
96092665677352800000,
2828582763408910,
1173767897303860000000,
7665419201919860000,
75823192360412000000,
47069032638197900000,
115985209096775000000,
1803741960343530000000,
54392315210027300000,
9848754483100860000,
16062587276369000000,
574278749154803000000,
2583722494184330000,
1568476924852850000000,
91057622370314300000,
67562638269077400000,
3469336243397450000,
39755505315044400000,
19534776294632800000,
14092671166917600000,
8363977919023450000,
8266979014100300000,
22162456353224000000,
14678051096608400000,
25531348106703700000,
44822534565080800000,
99971742296684300000,
1149,
92753801613869500000,
610461812491288000,
313924470698034000000,
82104173492305500000,
2136183648292490000000,
16802637021658800000,
10491993181385300000,
11819259258548400000,
9254052527314820000,
568179386890600000000,
489049207526965000000,
44535972500984900000,
12908694573774600000,
58971128380927600000,
1006344807454330000000,
11485213334889900000,
7002017559296470000000,
17379366442931900000,
228783539881383000000,
367540221504145000000,
5764205106054460000,
8432222952818990000,
154093238440351000000,
19058448118631800000,
42959515349042500000,
17936598361901200000,
20966350097391800000,
579896998020243000000,
12613950161147800,
17517310497043100000,
259741735938547000000,
381198343217748000000
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