pragma solidity ^0.5.16;
    
import { Table } from "../Table.sol";

contract Table_27 is Table {
    address[] public addresses = [
        0x98602CDb0d691D59f20A34d95A3923454287e2e7,
0x987a71e2267F4F646711355C4ae23B475EBF66AA,
0x987Be2c81f3E0017188fE44F504598734D2757DD,
0x98826E49EbE9201fdA844940929EDcB2497b5763,
0x9887eD051028940119D8Cc0703643a69AD575EBA,
0x98c0D7D027bE8fb628c149971Be865f5c0a7e0E8,
0x98e49E4399a546730491eEEaE55878e60dab5090,
0x98EC0bC50841B40492F8f14919DC48809a2d8a52,
0x98Ff7895075fE2978eCe7580F74f4025E396A732,
0x990CDC924755c998Ad8BEC04da91d658306E109D,
0x992230F727e8DB1B3ba71f6Afba8be33D18aA02B,
0x99232bEBa3cfa0AD7Ff494d973Fd844C9a773406,
0x995A2Bede51FE1b3877AC6fEe32a83d2246081aA,
0x996EeC5A4E8Ae40fB514521C74904a606507fEE6,
0x99930Fb80543D2c7a7Ead7725B39873031ea7BE1,
0x99A4A44756AC92AB984bB8C5049e10b0924445b0,
0x99B58966F1BE84F31C5682Ec99915e064E7B21e2,
0x99Ddc9544d33e01afE8f38C0b3b5893af2E25744,
0x99f05cCd652f5d197e2C94Af213e09ce08fa73AD,
0x99f802dfBfC677A4A5818FB85318d4ADa399223a,
0x9a2aa0c1156eC9f010548a9b2BfC33f692392b09,
0x9a2e97dA83296333b0EcE511bcf184ab4BA157D3,
0x9a3AC16909d69A2DE130CBD2Bf7a110d5A59c27e,
0x9a57362B01ABB089C8Ac877E24c9d909cf89d579,
0x9A63126a7017Eb558f96c9E45441eF4195e49976,
0x9a6f82a282e40e66478D906d53e23394bbae8588,
0x9a7008866C1C1a22d3FABc381ADaDB5b15395Eb3,
0x9A8b1ca429E5f1421eB303fAC50185dA1EE30313,
0x9A8fa64073EDD15E8490E3a71a10a56aEB2b772e,
0x9a9Abec8cbF260AfADd7ae8adBF8cA45045a95df,
0x9AAB783c70367d75bF6Ca6f8591800C8cE9Aa978,
0x9ab904efbf60094709c349a7cf2b2381b3519f69,
0x9abFf4119B870bD17269ED0E34d4C3CC9bFeF1df,
0x9AC00CcbF773160a0db86233ad2072F23A5C6Bae,
0x9Ac8D36F31424a2b4D42C13aEDA9e36aF856246b,
0x9AD9fc40c8DbDD68b28BD7Fc7ad7Fcb9548DC7eF,
0x9aF2209C2297De77aF9c1B303E5515ca22cf6E41,
0x9aF82B27f5a9E3eE3Bf3315601D9C3b0dCf43FC7,
0x9aFF40C180Cdc39080bf1DB6bC34F6dBE46E73Ed,
0x9b05334456664256c4Ad238BD0795133b486Af3E,
0x9b268d9bD9e3eC8fB832E7330aBD8325E2706911,
0x9b3fa9cAdEe96c880C17C4f382dB30DcFCCa75c3,
0x9b45Af84571a9a6993fb91234514b2AFB741d93f,
0x9B4e6786D5CA0409071EF31AcbBC00eCAC3Fe67B,
0x9B5A02FdAf363D0c21b62C5C308Ee3cE46D277ea,
0x9B5dFE7965C4A30eAB764ff7abf81b3fa96847Fe,
0x9b5EB9ED46387CEADA5C7ad543eFc260169463Fc,
0x9b89EdD0E4de61c4b4168ED4Bb1E353b97957644,
0x9bABD079159448EC30E8FFFdA1095317cA018C44,
0x9Bb1ec57A715d98Ac6e4e95f06c80B0Bca044777,
0x9bBB020d9C0C7ec25C11FBfD70C3BbB6d182C580,
0x9Bd54d8377510A1F5dD29f5c0FF79239fF15EE18,
0x9bd6759F6d9EA15d33076E55D4CBBA7cf85877A7,
0x9C1f3730C1bBa49D34C3b0fD944114Dfb14470d9,
0x9C1FD6d9d0b1B0B8B649EFc1330B7Ee866134b9E,
0x9c2eC40CDF462f1e321F926aDD1d435949186374,
0x9C46551700917556455986c18F7f2DDA8A1562c8,
0x9C5366709CA3889c4E4E27693301B456d5213a13,
0x9c597DA4bb7F29D4099C9a04f80E64EDA3d216F4,
0x9C95eCffDEf47F08EC892Ef3bbE5F0506350f577,
0x9c9B93452eD14EAb21F250333A106F8149a67Ea8,
0x9C9d9BB8665a4A842aA0Da8F7e077E547c4F5389,
0x9ca98E0cCa841ece50EA7c21Cc633FdcC2901019,
0x9CAf663A9Be37294Ed59D823300A72A1131Af908,
0x9ccFA833c604D4b13C50bc080748c6099F38068A,
0x9cD2533cE30F27C33B10634A1c8304C701082156,
0x9cEE4C5a0fc0F3a960C784b3E15366f8b78842C5,
0x9cef4E207fbcA5e2aB19b17b5F93b59B93755fd9,
0x9CFc435363D3f77C4129e6757dd7d44bf672691A,
0x9d0023Bd55ab3647f6C591DA6d46e5A6128d33d1,
0x9D09ca48B966dA322C634658c1Ba7C34Cd13857D,
0x9d1d0255F1bf0B85Db980Df0a32B2D381597423F,
0x9D2084b37D0fE7c3Ae45c98d6c2a395bf01Dac92,
0x9D2854fCf6EeBC7ECA99f0c393AC6FBFa281773b,
0x9D53a9b37E017C062fb05A0dC299650c759E3ef0,
0x9d54839c41bF71dc1E53eC238a5aBf02F686F999,
0x9d5d5e77C7D087Cb9e54EE1D67F6F98E2787ae71,
0x9D5d72179B2B360479083E5D8170695704e09B5A,
0x9D60bd851A86C5b423353b6383c944be90837DAa,
0x9D6cD9D45125BBd205dA5227EB18F3C3374CA07f,
0x9D6D35Fd850D4d21B22B6b864E6e6E0922798139,
0x9D8385f270e7F709E64Fb6467b94373D9c4FBc52,
0x9d9436456a55505Df3d131981cbb73A9672cC774,
0x9d9fea68244CE53A80A84aE97f145A4BCf29BBcB,
0x9dAbf324EDf9337Ce25DFaF69bF9Fe62F17037cf,
0x9db7a795C6e3EE2e9EB278FFd804fb09F2ff417B,
0x9dd1aaA53230EE858A872E45CC15D83E93969f05,
0x9dD9EF77Bd909B6386E9cCC8aC38D75a0E6965EE,
0x9E05fa03318a1Db76455b53b76EDECA76BaAB9f5,
0x9E0dB78968F9aECa2fB82A59601D0465510CB98A,
0x9E11A9a6ac48A3a6ad32B749aE6BeD738188793B,
0x9e23B76733704cC301B6D15766F33607C1c37A02,
0x9E23CF319129b005d3cd9773D625896124232602,
0x9e321aecb32C2aA81c8465A01f2581Cd3FF76b2e,
0x9E5BaD26FF3Be024aCb056004C98ee888e5c6233,
0x9e6084518448162987C20f4Abf2BED9f271e6e55,
0x9E75248768428ad52D6935BAdaC8F60C00b95935,
0x9e7545772Da2aCDDf0C061DC4b4D80c2af400972,
0x9e7D354B9c413C9bEDb348955C1B2e29D5e916AA,
0x9E85Ad74585CCb4441f09124f8A3Ac11eFc49372
    ];

    uint256[] public amounts = [
        2293514519275586000,
946962047445820628000,
0,
3929465883054026000,
4844706944009702000,
281429871381823248000,
0,
167425310042196636000,
5832686507504904000,
106829441817022498000,
0,
1522400959349672000,
3891852333610268000,
342589430304815496000,
357593429739891566000,
548064345398687018000,
1441502946968618000,
180234716140254998000,
998399694223200600000,
1622917743630659818000,
111343138348476654000,
0,
2212502312750470000,
96556756889702300000,
117824020198609592000,
0,
0,
24214953917803190000,
0,
269390320162904172000,
15758801050753448000,
2640143017967780472000,
6983944176785552000,
247807803724300000,
77189962097086406000,
783186922074178600000,
9033183795293350000,
114186204411392000,
554135383027389130000,
68852845422978900000,
454919187144738000,
963955438984482722000,
19976894310984368800000,
46149880967406444000,
6658238968363574000,
1369440308390587500000,
39442942803588488000,
1819776780285863602000,
53374835603967766000,
3946177292080045992000,
39854871003476480000,
74468581632572400000,
7822461399022392460000,
3417902001617000000,
0,
837365499152560000,
4215824609942076000,
80978056663997970000,
20595251055053000000,
44910234055032070000,
98715454152571800000,
0,
17715263572325200000,
3329119484681346000,
587320659272652186000,
176632129112186100000,
311465799934049278000,
83108226641592020000,
0,
156938451900000,
0,
321628447131436000,
12898655399923900000,
608993089928894000,
4598271124761470000,
0,
0,
4717389090719102050000,
30066700454158200000,
86487029844419352000,
0,
185543407164786140000,
18543089025755658000,
280163787130260602000,
45252346185235018000,
141777319615841746000,
0,
40892767312910216000,
3646588176087808132000,
0,
102193891685997660000,
3587085014984586192000,
1492677587808436518000,
2681480496830648000,
1716678435961590000,
3516362382092635790000,
8539199306421656000,
107946418008231700000,
6248754510915272000,
0
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