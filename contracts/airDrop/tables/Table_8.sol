pragma solidity ^0.5.16;
    
import { Table } from "../Table.sol";

contract Table_8 is Table {
    address[] public addresses = [
        0x278AB82B594f75F65214D6124a08020Fa14fa8d1,
0x279c97271d33Db878E4a8232876aD270e66538DF,
0x27Ae7Cf6a5adb9E81d91305d45397d5e2bc57E1e,
0x27D29CCfd6926d1da2187D3975f027827d61278b,
0x27DCf7599E25d04acd884C209C1b749517e92ae9,
0x282ECd101b2164743D44CA3227b0514F8dD8d4F9,
0x28365fA5eAb306555E8aA8662d85e60AB4464051,
0x2837247F1de9467ED0b26b70eC10984ee9C3D7a1,
0x2845633f9cD219b43Be29CaE1ad4b776865E51D0,
0x28533519360C513193A004e5b43bd7f7a50D773F,
0x285dfF25aCa8a1915552007771F836d65B7A8236,
0x285e70740E8C02ad31D909488b06D82F34d3b2C7,
0x286Bf0fA479E0C4D2475a75AE10853DD0099F676,
0x287F1ed9087e906b83101277fDCd05a917a6dfe8,
0x2882d1fc6BA61656CC2943CdCEF981B85913Ee0c,
0x2884d2D1b2a31CF765E3b3E174f39CE82AaD6D00,
0x2898c6cC248C7821f2d75EDD0367b1669803A35f,
0x28A032ABf20Db09F4264a3eE72383256fD138c16,
0x28a5FDb835981385fE1658c22B1c439dc6c9A302,
0x28A6dD6305d11fd471E9606859396142242746fD,
0x28bb66e0bBb10e99aE957591e74d96B8C2ba23d3,
0x28e5632A329905aD5b6c66e5c849c2aC8f3feD46,
0x2907420c93aa200D654F198d55C51544A8128479,
0x2912d7C69FcCB5aDa64C7B1EBA22F715592Ea0bE,
0x2913404e9CD1E96AE4CDC6D468836A01a1c0F66c,
0x292eC2641d1450a488F1Bc7D5F0540907E540685,
0x293219f314d4171Fa6D6393B8aA950E7973F3a4d,
0x29530279e253835272351920075d51E9a61cD0De,
0x296A2d6BDCaE03dC5165224c6a014eDEB7efed85,
0x296E220fb6ddc7Ae946CC4876065b658Fb843921,
0x297519a471EB4CD375a4B4ee590fE5F2126E7344,
0x297E0FaD8086BA4a6BAa58e701C67bAbEE2B1139,
0x29BDDb05279b4b89B8E34d52e1048E6dDC21646C,
0x29ca3b94228f0bB9289D005Cfd43021Cc6a4e180,
0x29d1132f4468F0d133f1e2d08791b83F1C882098,
0x29Dbc30F4dCD90A6913354B306C1959039D5f97A,
0x29F6d2153a45599645F6A0F90AF9E18dBD946080,
0x29FB7c218c55bB7Ff3A8FC63aEc0999fC5A8fD53,
0x2A03A20A038057597A8C8beaBF759f22d0F5633e,
0x2A04fEf130a122d23809dfa583626f93e33045DF,
0x2A1Edb52DE3716E24fC5F216CBA84A7eF848E198,
0x2A3Af69112C6B57dFe58800F5a6f2282a3D33832,
0x2A45d1E5692993eF6f5f27B96841286ccf48c7dF,
0x2a471270Bc955be8B9dF0ba42B558f91ec150fA8,
0x2A4b80Fa266B80Ee60835D4622C9534388850fcb,
0x2A4cC4824c982D25FFFBf5b20Ee7577379a374aA,
0x2A6035f8d995F65A3c2A7C85Ff38CA376C228195,
0x2a723473eC3C1087ecdEd25325572BfdbdEaa39d,
0x2A777509B77CF8117e135c1127c3Cd8d77A4Fa4b,
0x2aB0f6a1A98b192Bbd40aC94aBDe5c64fEEA4560,
0x2ac3e9a9Dd046a506d2fda10706Cd56b686c70Ea,
0x2aC641EF94E17d1adBCc18CE84DEc57a27b26193,
0x2af077d36a9bBe950dE85342EcA43cf27391659a,
0x2Af474AB335f945fc07eA690E7FCa2EBEaDcC66C,
0x2B0d30EF27b633cd53257Dc67bB90B9D9Dc8c213,
0x2B13824dDa4048D173DcC7B23397AED6eA77d3f0,
0x2B1b4AfC8ea54A0d7D587365373Cb9733D87aE0c,
0x2B499F75929593bbe0149586c375E2a0338031A0,
0x2b5cf931E84A64459B00b2ca023612f194FAC767,
0x2b5E6cF423b808e2c04A1A72DA8B8Ba7Ef9ea32D,
0x2B81639810bDA66fe338a9e793Fc0bc8476B4fDF,
0x2B9d359EA69f959276Ac667F5988aa0A1bf05FC8,
0x2bbbC5A3333Cc335418c96A53f8D5E67d3faA75D,
0x2Bc1871FAB38a934c405A1670c06723988DB5448,
0x2BD7db98d762F68D97fa1eFB06006456C263A80b,
0x2Bf3b9c10c97F97e06C809bfBa67858C009d2CCB,
0x2C0A07CCc54Ae3852039Cb9bF05664A661Ee51d7,
0x2C0C369f3bE4fC368f35E6Ca6fE1B969b292Bef1,
0x2C12708ef3E449068E9B3FDB2016122181C84aEA,
0x2c170831E607e0d8645C07c6f070496dDEF9f33c,
0x2C31b91673cea1761377125BA2bb521436E4C6d4,
0x2c496Dc6d24f1b09b1E545f59b5600D7C2cD921a,
0x2c4b8AD42b4b9984E56Da0dbf3b2362D096F7574,
0x2c4d5B9196d34f5B187053dDF04D2100C7ee4e84,
0x2c566CF24F56FCe5AB82516250BC3B594781db23,
0x2c65B3963469871A1F8f3987c2a3A14cBd0440e2,
0x2C76884A4a89cE638B5a35B4805469D27E436132,
0x2c7D8Cbd706232E24FC58186753FE5a20F37C63c,
0x2C92F5d22833Ef38B3f8Acb50E304bcb9038cD06,
0x2ca26038b680F03c970b044301AbaDf99a0f2802,
0x2CBdC571aa8932A4D6B839ae8554aEBd4af9eB1c,
0x2Cca05BF358d4139614AF48190e6C470AbBD69ae,
0x2cf86C5C53ad9ecf6bbe1b90996079ECC033D57e,
0x2D22FdfA34420089b1c3DF5e6f3De6034E083015,
0x2D27bDf8797A3D06a5A67720a7Ca92a6104a7E1c,
0x2D2972173698bb23C80DC8ae34C822C5CfF58851,
0x2d2f683F30113F7E9357b5345cA650864028aC95,
0x2D356Ef5Fa1aD1D4517D713C516352b1583C7111,
0x2D3C839208eE70D17e578E59f96fB9f8Da546562,
0x2D48233Df722839848562D23249D523D89Dc2d28,
0x2d4FDB1A432aBd78d98a3F81EDE537B4Ab5C52ab,
0x2D6236b8816F91c0BCf29Ebe543850056c81A7Eb,
0x2d886cafefE8239e42AF48210e7C8ce56E7c1707,
0x2d95F7A6C10328c4bcfba4f1Ef96154e47Acaf48,
0x2D9B4476e9caEdd8803fF0FA08De16a0f704cAD2,
0x2d9cA02a5d6BC7C4932eE6319977b8262E659f86,
0x2daFB856CD1dF8f4D84085638118398fcA6817D7,
0x2DaFfedDB402a9ab6009C7413abDCf8566f64bAc,
0x2DE8FF0749fd129dA6449d869B5d741Ae9748eE6,
0x2E27F7D3ea9DA4a12fbb8b8F554AAB4692bC832f
    ];

    uint256[] public amounts = [
        114818633556531328000,
365808376895424868000,
659194227681100000,
5365251903745922000,
2062352481338437136000,
19806149488499300000,
0,
0,
57828287400280820000,
5303645878573596000,
18393084498845880000,
514062310667594000,
58128486841864982000,
40478510524687500000,
10781483352708470000,
13357485284462496000,
4750097649342968000,
695394635593634000,
13569231997441430000,
40432512673268038000,
2328754782829636000,
1149217971477348052000,
1067482959505891222000,
223372259798328654000,
874123016975355202000,
344469361956561886000,
39576607224960422000,
15313483056077534000,
52447874318601922000,
17608168401044072000,
0,
21512779594732800000,
58727905103572184000,
0,
6574792669964268000,
3208393120429996000,
144407216992866912000,
2688955989632166566000,
259450157084197334000,
5578158048544987558000,
1365975445104200000,
7355072287122994000,
678613015162432000,
180678681373847300000,
110947486706463612000,
2090708414005796400000,
49133190912782600000,
0,
0,
4648404952595460000,
49899490451194322000,
0,
4568415912606170000,
600534312998196000,
5084431087130024000,
0,
61606313487981088000,
25070047988083700000,
820319981408014000,
4778553696278588988000,
23858659442290484000,
1526373501298335384000,
3733546506572170000,
920337184736900000,
16710263903839900000,
39191204370367840000,
75256382962581498000,
94534372934932890000,
0,
17127930661762602000,
14515260877098766000,
5349013998323908000,
0,
3155072839929900000,
51048212156029200000,
86054683966945460000,
63344735581884100000,
27277737438562088000,
4646170723567800000,
185028228397206712000,
506270449565481174000,
66638634694600898000,
0,
117083209791512526000,
781493089978686620000,
3540857265730161046000,
48960208060201626000,
47548900675316432000,
16038673518057540000,
343691406925056300000,
6252595596753100000,
10281246213399046000,
107354778264651588000,
463841247976091856000,
0,
0,
2826651969306514000,
172817727329879536000,
907058951410260462000,
1726062219292820000
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