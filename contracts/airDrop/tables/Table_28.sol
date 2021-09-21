pragma solidity ^0.5.16;
    
import { Table } from "../Table.sol";

contract Table_28 is Table {
    address[] public addresses = [
        0x9E926F58821AA86F9aD6cA4c3624A7bB48e25910,
0x9e95b3275e96E859A260AA9DE8e376a2DC785C0e,
0x9eB6A31E97554bE3627AD6aa650a435f07a99835,
0x9Ec48C2F1B671964cF2D41E216227482159E8362,
0x9eC7c9cF7403D13aeEE05d9f5F4EA56FC4F96315,
0x9F01898B30bd20BdC0A9A9FEE0eC3783917c4770,
0x9F37191DBFA8160815c0FAaEfEC4c0553f31A7e3,
0x9F373885888F4D7f9e845c827093A4a3Dd4e7929,
0x9F4cb6ee90A4b473bAaeAdEc34B68714Dc7e81c8,
0x9f4ec6e9b1358697DD79E7ef05C6DBB8f71D59Df,
0x9F5f47457EAFb76535e043f540A37cC0598D320F,
0x9F67C78F84EA9E5A2B5a143EF4b6afDeaE884981,
0x9F7D98Fc341deAd8F8705e5d175fc7cE576Ca4A7,
0x9F861b023B82079b78335976628F6Ad01a0c1286,
0x9fcEC253B5A040689c766F1aD61Ea62cA0Bb104A,
0x9fE5829435eB70d4a3C51f8Df130f6AAD3475Efa,
0x9FFA3FBAEdF887bf279BA8b9C449Fe62D673F6Da,
0x9Ffcd637B20604570932a075D1112417287bBFA3,
0x9ffEF12b090e0Ba6FccbeF868103a5bAab1bA700,
0x9FFf14F3A495d90566621AD876ccDBc82AAEdA18,
0xA0074715b46CEc3663745b8CC8937b49323CCec9,
0xA010546844924d144152cdA7F27939F21341ab5B,
0xa0123637A7e253f40B775965DC30F91D305afDE5,
0xA018D46a77aDC0D4beE01689c32f37F671b8e96F,
0xa05F4F2D15f7e4518E62A21228b79427406Af910,
0xA06C2B6F1975228ab2C448cba0f2DDFd986f46c0,
0xA073c8f36947bF5799cb39BD05c0905F3d4d9C7c,
0xA0768Eb6105Ea16E844c5b761c92ACF1B2cEdABe,
0xA07840094cbc319fd44f648555101B5f3D725240,
0xA07A9C873E1a23c80Cb7a39059edE0Af44903dE0,
0xA081F87D8b45F26562f54DAF28478b150C44EE8A,
0xA094Ec445f6C12Bbd62C5be5D888c96fF8963CD0,
0xa09fc3bEb9e8Cb810d94a9813cF806ce98521994,
0xA0A7724CE3323A4724eDB5F6f8DE67424E2B44d9,
0xa0ABC6c7994a0C5f708128079807B4fce847C5B2,
0xA0c78baaCEFce683Fcf503274df19e9097a56B1f,
0xA0EB4BEA36F8C53489C171Bf9a2190E0315db61b,
0xA0Ec15DDd23A7a771125b48eaFC5C79c0862bf7c,
0xa1066668E85a72671e75Da6A0202156b2DD11f02,
0xA11a4E11c1D78FEdb761632C1fDEfcDa98C9f96c,
0xA12084b57DD8f4A1abf0607d7941e8c2881f6AbB,
0xA126226148d30A9B76Fe1733b565AD4b5BE771fC,
0xa12b1Add4be03f9308F27e1241be9A3a97565fD0,
0xa12Ec54c173c9b89D5c9674229D8be387FdB65F5,
0xA130654FFF77430d53847005A1EE213d3719a5A7,
0xa14173A78902D92431336389DbF9Ef0cF74e3321,
0xa151Fd9376B7F00095b336cA2ba4F0B0748515c4,
0xA152eB75Aa843F5B3ed32BB21991F740EfB97e36,
0xA15485d6bAB945A888263Cc3cAD27EBe49a7ef16,
0xa157e860930B705e9a84A84B75Ea8b078Aeda9eb,
0xa15C279b9EeE7660cFfA33da62814159d9dD0B55,
0xA1799Ea093AD5C26A8343b5a8F91Fb039891704F,
0xa193DE0e7a4EcF1103e05995c83bC107a0Dfb802,
0xA19d373842d47F8f6411336112Cb94237Bd7dbcb,
0xA1D2254306f4E40669A26Cb9C7f48C3aFa83C1Fd,
0xa1f8b772911a1e318c9893A24A7D1Dea46FdeA0c,
0xA1FD07BeCBd304Cb859985EcEd72f9Fa6Ecd7738,
0xa1Fd71f1d707F6191A1D6442aA3DaC32495f71A6,
0xa22540654C5F966FBD3b0e8337BfE57d4582dd61,
0xA22800d34b90A3BbB9399845d256029181F54519,
0xA23F89DC9E0752a9efEcD22F7aBA96D117E91dE2,
0xa25570fb4A9B443c272C445789Cbc8699435854f,
0xa258bd1Fb6257fe1A33C3F56646338e1349db184,
0xa271BFb891C469b30F45eEfAB36BdE5af28d3643,
0xa281421BB76D1abA00D307A641C576fe15C57B47,
0xa29609810A7516BDA18781197E083BA20489B458,
0xa2A528458172C38c7114A24a36e441ed7bb9d8b7,
0xA2Ae72D425eD43f9648a3a7c9896c9C2E0308DE7,
0xA2Cb34D5D167579132726D8922A7df5A044A73DE,
0xA2d2A5a210Fe3C33e42A5B21AA920b3F975B38b9,
0xA2db5Ff56bedF38B1da7b971f7d5BC043D1e7947,
0xA2DBE7989148daB0e743c017aa7cB8E812e6057B,
0xa2fC51D158aA907A53897D37E0b785F712164036,
0xa3080a0A2d6F2D71311b3840D07d641f0aC7E7ac,
0xA30be8b4a7DCE0C5746ad5494F154Ab93147EDAE,
0xa30F30f100D9e4dd294c8475316D3e982e87880d,
0xA315be16a1FBE0beBEb771035d44DD362fBb1AA8,
0xa31978A297a8e78E7c8AeF86eEC055786d65804D,
0xa31a23773795bA268c737eff36f8f27aDd00Ab65,
0xA3269A4a9ACA8b02cbc988f06Bff52913a34EEAF,
0xA32d657a155B10ee638773D8DFb804a294720687,
0xa34A497C2BaC0fA523E751A86Cf39a8A3B456d60,
0xa3509250cBd5F40597eFa82cbe99A72A39d51b55,
0xa353AcB0E49962198DbFDD975A06Eb58Ba38bC97,
0xA35eA7A8CBB584821Ecd40D58f1cb7059037E4Df,
0xA3687E68EB2038556bCA01C50CD982aD87b86F42,
0xa3690506Bbd48eEA3c8E76836afd7974af2c6282,
0xa380D05dDD16f2A8fB67CAc535FE0B2E400f0133,
0xA3C49Dd4eD71737969da11eE8E1692803A9ce21f,
0xA3C5C8B6E5BEb9D32cf14593D85a3F3305C6be89,
0xA3E39e7045949F5d99c1C557Cac88FA3c75a429E,
0xa3f4B3Fee73f42e6aF03607B4c2fCA85cA6f65CE,
0xA3f5b2bE5De42DA0D196ddA0bA3320bC8B2F5EB0,
0xa40E5754544b8d5592AB30F3D1e172c27524435B,
0xA415F6e11aC844B954471cc0cEAF0D488B450e1F,
0xa424AE230Bb408d46820F31cDE902c74aC0e0F5C,
0xa42d8Da3Ca9A48CD06e3DDb0F840052061FEce1C,
0xa461A0F0f62ADe5dccf92c326a34600F78BE2e72,
0xA48806D7b65664a3377b8D7f7804236Bc5Ae806D,
0xA49266E60aE06f23dA8F812e61De1C71c6aEd4d2
    ];

    uint256[] public amounts = [
        2219435876869948000,
0,
105839001336912000,
114186204411392000,
0,
4220788561863185508000,
97577373637403896000,
22228851150479670880000,
4611820006952820000,
0,
2181236601482700000,
206431898381911916000,
315603053149778652000,
58881804003655152000,
2615251341605132000,
181455460556062000,
500359612268548100000,
281182383371499460000,
404330631454448000,
237028965291318000,
2088905340247482000,
3262560193676900000,
1774302535918623922000,
79823131052155150000,
699321785912769648000,
53284033576315506000,
54688454925990070000,
1638429792176788000,
178167371753939756000,
3944133451830500000,
1091556224298594000,
47752800814902100000,
313909416810593360000,
19609214558410000000,
8298737945194000000,
214635218954331732000,
27427333932776572000,
9929980743995900000,
25521629895513758000,
611001940472906000,
13244672961325800000,
13907121196306782000,
12639570636703264000,
342675766259039076000,
12788744081303100000,
64283792773056792000,
0,
164544059380982396000,
21136064982172600000,
1373985775855995558000,
2088905340247482000,
5979261572840304000,
986864173503146000,
0,
5365945545830272000,
0,
941048991679700000,
27699517326603942000,
618033574643871644000,
30293817914785254000,
0,
251328074256454140000,
11048898179471170000,
12622335526950400000,
187409927157554614000,
15019170239322744000,
16974802001303100000,
19711937708282254000,
36793477526979274000,
10391635882408778000,
45576640293340252000,
13465763921883400000,
73529211695628928000,
0,
189495072739150900000,
1699765395320396918000,
8557688467920978000,
4220322965151996000,
19190562456636390000,
179159749762572600000,
19498563580667678000,
138446959937594800000,
1614735403165675108000,
4305214296627900000,
713501842940428070000,
0,
31923869726189396000,
23026718100669066180000,
434319801236046972000,
9588569260374412000,
33875086732774164000,
74357275515758212000,
1826471611636463860000,
796279835313167878000,
3684987060695035798000,
0,
4188217516417054000,
12891320747945400000,
50883262432367678000,
26212869457191200000
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