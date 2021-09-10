pragma solidity ^0.5.16;
import { Table } from "../Table.sol";

contract Table_10 is Table {
    address[] public addresses = [
        0xA614eb30b13cB24533c12A3e29cB06eb4fc99789,
0xA642c646be2cEA493EcCF6D633D0bfEC5f2ae6fa,
0xa64567790511Bc894d939d9Cc9C68e5302b444AB,
0xA64A50066319B9240fe51a49731c3881C34BCf07,
0xA65501b53Ad24c74C18Eb29624c71050178D1ad5,
0xa6E06712c969C6A6414B06901D839f8c59110368,
0xA74a734d5eb019770EA2aBDB4c96d3A913C7DD71,
0xa7cA40aDaB20c793700e4488A21D7720170E7a06,
0xA838B95958aADF4A4a5641d383C1Af3Bfa03F3b9,
0xa88D1cf7440c538A0FEDd13D2F4E9E7AD0736DDD,
0xA89fb7Dcc6758E622a7889Cb67ae8B97E4EB501c,
0xA8b776dcCe701d9e5F638a75d4FBb6ecCeABFf27,
0xa8c0A12Ea8d196C7c77898e8E61396e7Ceb8B733,
0xA8d34728EA272Fa2B42B83677b3aD6303d8aC88e,
0xa8d39273dB147cfE8f6dBc78D1e9b35986a603A6,
0xA8dFc997E73f055Fb71268051e551c5d68C0E8f3,
0xA8ed7249fd4d3E0F956E43c4A370544c88838B40,
0xA8F74a2BaE02216374a33f396B3C117eA0c7EF8c,
0xA8f91857e91ddfE15B74bC6Bd32E782ffB57bA94,
0xA939AB24a70104C2abdf89d2b3caA0633e6b2178,
0xa96469Ce872E63593A091779e9472e67F37f0D2e,
0xA97578DD7ad20Ba12D42cB4100616f7d3797a72F,
0xA987a709f4A93eC25738FeC0F8d6189260459ed7,
0xA9bA9393e85106D708Ada13Cf12c5eBE3f6a7746,
0xaa4C3E1991e3663FF90CA978A3F5034b1ADeBfD1,
0xaA52B36fB3a94Ae776322f71273875DFef409D2b,
0xAa6A3899fF70eb5FA5A299E782C40d04Bb19436a,
0xaa74bB2847f69444Ad3F00Cfe86856Dda3F2F2F0,
0xaa861C33741A092F57d8b4a2145aBd2dfeE53540,
0xAAa66e612582d5B43da71c16F33A3024207FEB35,
0xaAD4A4a165Ac449b59Ea68d81B97f1Eaf314D501,
0xaaFdd768fA83EF7af0e19707F2BE9d1DB1924766,
0xAB03ce49e033Ec1a8107c99460AAEB61864B8022,
0xAb268E90200c9E899feA24E34512aD3D64ECda6e,
0xaB6c2F14cd845bc9E5CF71497Ab41569Ef1d8029,
0xab8A59Bd6fe60a70ff5d7b102C1F7cc3B1e9aF32,
0xABa0fe9F63f5b1899bEEf22046E3C04C604CBFA9,
0xAC0D2c5CF6022AAEE4Cb41baD89f5463843eE7dE,
0xac228599C6acB688525d71b8e458DBDfCc7A2D64,
0xAc3205a6073212cE3F8BD00c3c7A77108645f2c3,
0xaC3D3D613C7A5d093a27864dfa243a4c6229C08D,
0xAc875D8D94167e273044BD2295434B971a126617,
0xaC890236A54D783CD5967059d28eb0991416bAE1,
0xaCcE16Bb49fFe0450AA8ffd4FA7c24b0af2D83ca,
0xAD32Bc446Cc906BfD5f74914F5Bd9cbD1443bcd6,
0xAD4166C6204025cE9676c7b0c9b9Fe7eb8E946c4,
0xAE30d834bE2Dc2f67d809DDe43eeEc346BbA892a,
0xAe8C5C72b63f7b060058E222a159Fcfd9c5Cf5F7,
0xaF449EaDc3Ce63A5AC8D57Bc65E8B3CEB6845218,
0xaF574d0f1258377c5234bDC714dF2255Ce6bB81F,
0xafB270ed1f14Fcece56d8A52b8FFD3079AaCc65D,
0xaFFEfe6267bA9Bc789d34095001CD2bf8c521F56,
0xb005FcD8A7D5BBf3f0A1e598890e0EE7077fa10c,
0xB06F2Ac740cB514F22463b65075308754a0D5e62,
0xb0a1c50097f5399B0e23bc7a11AccD4681bb49d6,
0xB0AcE2C3a12a2026cAeF06898d734E8950AC2680,
0xB112F257d9a22EbeB60eC12c9051Ecc16539e04B,
0xb147bFdCCAf67A75e468ee7F99497b7D284c8ad6,
0xB155b8CB9c4D8b5c5C2EC461AB29EA95C4173DE1,
0xB1A0B8D25308977B61f71D2D83Dce851a463Efb6,
0xB1FDf99Cd9D73605eB43fC2a2BB5486C7958681f,
0xB20f357528Dd8f9BeD50Ab66DC1b0064c78F7dde,
0xb235acbB9c7c74d9EE88C281F55119590fF0271c,
0xB25348AeBCCa69bD45A394730b6933a3EBBC4E45,
0xb25523151e1dA082F4b1B243A95025090ed1d16F,
0xb37Af7f06EE0c9437Ce03230de1acDD8bFA1617b,
0xb3a6CA1C3783e06a8C5f987954BF650eA368cb1C,
0xb3C0aA5DbFD9ad74f0CBA66C0fd4E41DAD2C3BC9,
0xB404B08765933ee0E24c792677E89e8d240Bd684,
0xb43AAdAD4f12eebC8953A9Bf9ad8bb4e00C6428A,
0xB44404C8293c7525b5D780f0239C6cf906d14aD3,
0xB4c3Da2873A9fdb77Ddb66C11a0bF26931BcCb14,
0xB4f422FBE2a02673d978D7591E6409e955E95352,
0xB4f9D73f8f9803D1048C83f4425AF38dB711Ab90,
0xB50ec195850cA4E3182103a60f053aE87eB2477B,
0xB535F195D2ed5c13ae02Be2d367761e18eC7b40b,
0xb55445A26B4AD11928B997F8ea05D0EA2bBF7BD5,
0xb5A9F7141D9D299736250dcA170606B296FcF612,
0xB5B619F32bA5608721e24b7AC7598360533668AD,
0xb5Bde5159899AF90fef3BB1398A0CF4600B784AD,
0xB62ae4225DE2fec3d1b76005d6aa0816D0492af5,
0xB63b8Cd8804f288830772D7519C78874ec274d9d,
0xB66A2491537Bd8A1f2815c48b0E6AA9D5cE029BF,
0xB6801AD6775702b007776313e943d4a0b5683f36,
0xB6a9BF1E8083179488C76F17A7B4A7818E6497f4,
0xB6Ab374E2fB5638072377ee8dE71028938938084,
0xb6d30e9b3180f90869079dCDf306538C4560E8d4,
0xB731b032B8CF321Dc013c3EFFAC7b560608d575E,
0xB75ec208487142edcA537F0FF140D24764d9F54d,
0xB7E025cD923B4Ef9E17F564c669A5E0a6fD67BF9,
0xb7E41B43d76a21948E3e9AF4A3ca5d746Ee06947,
0xb820Cd2ba48FA97eD81913406307cB5AceFDf23a,
0xb8793C8757a81A5f2CFF3e9Be679e1f4C4971Be1,
0xb87Af54ad042B489436E8519C84Ff3C75801EE7c,
0xB89e15F8079B6d7344c453380d1FBa17EDbb5886,
0xb8e20FBFb20087105d103FBD72fB4C95405aDe9A,
0xb92dB0064343703935710dec5B75a33D9696021a,
0xb95a8FC4624c66D86a8DEf945EDDF6fA1083852C,
0xB97242f1fD1D557085aA7fCB86E015072430884b,
0xB978C089Af0abeBe976447d7ca49B8eF99BC3390
    ];

    uint256[] public amounts = [
        383501611524119000000,
319242563682455000000,
4644159255086930000000,
40861296405764900000,
10434708523155000000,
1854294959612200000000,
17043802778456300000,
50517089944494400000,
753534078812106000000,
712190626768235000000,
2933104690407460000,
6544526278458140000,
56681557673746700000,
60699001205144700000,
227040901177251000000,
61889154043625900000,
79427311538538600000,
182006457878427000000,
14693924712559500000,
1624302927858970000,
308472120071931000000,
513959068133999000000,
479626931834607000,
95714120678549100000,
453054493433911000000,
274274066738521000000,
292256456928962000000,
84852134511449200000,
316676084696191000000,
35791019505874800000,
24400023216673900000,
22629877616860700000,
841394563711968000,
469863816985354000000,
13744864991486200000,
44175993077107900000,
72690541968397700000,
421950602449324000000,
61730587944646000000,
10172147548020800000,
210246927965661000000,
12927377349877500000,
67484246236513800000,
565716552681781000,
269117225437886000000,
114167000160213000000,
551445374843634000000,
3118455164328460000000,
375312357194654000000,
264538781804728000000,
178088558236303000000,
69736254442765300000,
6996773187438500000,
8812029134395080000,
1494336746135100000000,
1559012527643570000000,
4900334491149430000,
2258083978730080000000,
339646933392518000000,
172836820357590000000,
108582610716092000000000,
1566402748090630000000,
1468287265307470000000,
1351888853142710000000,
880285451409171000000,
17808895265269500000,
851568756466541000000,
3785228440115730000,
1590045649041280000000,
732725274591889000000,
6667668789594520000,
30872124567889200000,
22327420332896000000,
5741001068827210000,
51739818304811900000,
544311061499228000000,
219351102621168000000,
319883850161379000000,
4477789940549950000,
32477327647308800000,
97101262506620600000,
5131805141928630000,
3362876895058980000,
31147315466809800000,
83422630000245300000,
1226631359824780000000,
26158600105029800000,
277,
79931243459710900000,
314144224817713000000,
22591759693572700000,
214867827895956000000,
58100618924074800000,
2639072509109600000,
896237934622323000000,
6769855060307370000,
1245241637451330000000,
239714607166852000000,
35964846092889500000,
5352582710023280000
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