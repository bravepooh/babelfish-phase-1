pragma solidity ^0.5.16;
import { Table } from "../Table.sol";

contract Table_43 is Table {
    address[] public addresses = [
        0x0b2D6Aebd93B13174dA7FEa682e9E3E5189a5C07,
0x0baE81559A7246e0FD4aD434cD330A60B8Ecbf70,
0x0BAf78675e80038ea0Ba8d7271DBd6AFD764661C,
0x0c05ED848E840AEDFA94FF269D42B8D353446AdD,
0x0C368C858593e631d7D1A4Ddf2c9A954c027ae28,
0x0c3FdA7875a436810C4e30512F161Ea568aa6A41,
0x0C4978B2f05c913Dfd56aB78d31EAb0d74be41eb,
0x0C67fA0ecc34813FC01f517276895Fa3aDCfeE37,
0x0Ca82768386fDF00CBe59debBffC1c062EDdAaD5,
0x0ceaA3fA269877a0fB194ED383605fc2527eB0A0,
0x0Cf84F01C311Dc093969136B1814F05B5b3167F6,
0x0DFe9D147a2aE92fA7aA561e485f0D91F13ad301,
0x0E3c043519DEf71C1133d0471E32aEd070a819a6,
0x0E66C294b5228605d8a264eC1F9604dfBE9C9926,
0x0E798C02481B2A91A766f8434a34876F5c0f5627,
0x0eAAAC64f75bCf0d6ad7E400AD812eE0F9688e13,
0x0eB96E0E5569804d7Dd81E0631Ef45c925f7f39D,
0x0Ed26A54D83d0df3EBbBBF6aaC003c9aF6874870,
0x0fa2A5A8Ed69d2C5BD9D4E3654DD6891f430f36F,
0x105E96daB0e1288015ed5d56F54D44053F1F82D8,
0x10cb5a31Fd79310d2Bb73E66530F849A6CFB2e9b,
0x10eA790037C0391CE8AfE2861E9b1Ba9045A1EcA,
0x11231493E0a72449F73Eb2aA4c68261556BeFa5A,
0x1140AA0ebCF7683097ED354dF5C458D6982A537e,
0x11aBA5138A07E075A1C4CAc6a5fD6Cb02523C2B0,
0x12b73269787f985B014174840E5232bB4e089562,
0x135df8445fFb50A6C3D1c416e88B0F48F04627EF,
0x13773F12FbC4a673E2C1aEA71A1DcF959b608aaa,
0x14129eC44A32b57D929F3D2FddceEEe7D653Bae7,
0x144F44ECAF98335BA59bE903B26572126da6A84A,
0x14C2cd72E38Ee9C7Dc0589727530df7D2B513d15,
0x14FC3CB47E826Ca8E6DE396587280a5D82ecfCc2,
0x1574A47822DC67D7ffD5e9DE7b9fa85dbE98ac5f,
0x157a4DaACa6301D5D14701F6B5e99f1e228f0491,
0x159b526C722976c2CE228474Ed51d89103c89DCA,
0x167c6B85D92D00642A4F388fA40CB7a317cA6441,
0x170c46F3603c0cE761Ca7dc5339ADc60EC71A1C8,
0x1825ecCfEfa66dc2e2114ddD16E93FF94FffeE35,
0x1A472017238DbFf1D3E70835c1E658bd2EB5D325,
0x1aBEeB7c87a802BCecaD7951833ec901EBf07b65,
0x1aEB6A6dEb55E68e91B79048e95d1bEE06D8fF1F,
0x1AED9904eD43494123B861f41E40bc5DcC5008c5,
0x1cE870bC8331022E8780Be94CE1c8B1e36E0756C,
0x1D6A5f036a0B69a43EF3626cf05cC7ad5CeD003C,
0x1d6CBa2D941c6800deb7dC4eDa00eb54d16210f0,
0x1da39a79Eb4Bf30d58BE8C8645530733ea5fb700,
0x1DD58724377341A7BA0e0e3d9a4E656e1Dac0B54,
0x1de3Fe9480B7882fe2014aa33C95a9A053AbA144,
0x1E0682Ba70c7fce0698Ef793Aeb69415a853FF81,
0x1E125Dae6AF67F241eEF1cA104Fa86d18f8223C6,
0x1e2Fe7931A4c80D2f1901Af19deF1D8f3a91Ee8d,
0x1F236E6FFCc92CC924059447dC5b15c52586DA79,
0x1facC5303E0Dcab71F878309c21cAC6f8DABA040,
0x1FC2BfEEcFb2a96E16A9cEc285B17AA703C7d2A2,
0x20e91c19C1D570EB6F1b39d0Cc19B3624B34AD74,
0x21c01490A7EF8C7ddBd73aE63CcebF2549c7744f,
0x22a37856DB876C11795832187aDE28E492b67c12,
0x22B16e3F18F0A99c184BAaE92B6D3536c0e323F0,
0x23154b5c722DB065850F2Fb760B91b7997ad77A3,
0x231E93A766612e70e693e3f033D53B4D26e0Af54,
0x234b200AA7db00bf9B90d047ED627F00A0e16212,
0x23bEF70D053b87260B0D992E79CbCc4476f91B07,
0x23f2e2c1bF2CE6bCf440288266068B98b535AAE3,
0x2427b9DD740570A5be11E6CFb07722A3bCedAe13,
0x246d84049Ad6763059643B09300F92aa4e5be7C8,
0x24C570D49938C969c37f04932A48e993c25E1AA3,
0x254f725Af0Ba08d4C7C0187002B45e40e59FC791,
0x267D7d5a9F2bfD50AA8865A79823E509A99A2491,
0x26a748E38114e9e195609954A55984203Ae8B32A,
0x26d1445483917e1f6Df569340B48667665B8D965,
0x27Ae7Cf6a5adb9E81d91305d45397d5e2bc57E1e,
0x282ECd101b2164743D44CA3227b0514F8dD8d4F9,
0x287F1ed9087e906b83101277fDCd05a917a6dfe8,
0x297E0FaD8086BA4a6BAa58e701C67bAbEE2B1139,
0x2A1Edb52DE3716E24fC5F216CBA84A7eF848E198,
0x2a471270Bc955be8B9dF0ba42B558f91ec150fA8,
0x2A4cC4824c982D25FFFBf5b20Ee7577379a374aA,
0x2A6035f8d995F65A3c2A7C85Ff38CA376C228195,
0x2a723473eC3C1087ecdEd25325572BfdbdEaa39d,
0x2aC641EF94E17d1adBCc18CE84DEc57a27b26193,
0x2B499F75929593bbe0149586c375E2a0338031A0,
0x2Bc1871FAB38a934c405A1670c06723988DB5448,
0x2BD7db98d762F68D97fa1eFB06006456C263A80b,
0x2C12708ef3E449068E9B3FDB2016122181C84aEA,
0x2c4d5B9196d34f5B187053dDF04D2100C7ee4e84,
0x2C76884A4a89cE638B5a35B4805469D27E436132,
0x2C92F5d22833Ef38B3f8Acb50E304bcb9038cD06,
0x2cf86C5C53ad9ecf6bbe1b90996079ECC033D57e,
0x2d4FDB1A432aBd78d98a3F81EDE537B4Ab5C52ab,
0x2E2d69e9BF5162243ab6a0A50aAD8E3094Fb6037,
0x2e43c9d440159F67434d46Ffb9A9561b2FC73820,
0x2f73712DaA7a091e67E556bceE5FE5ce5923BE42,
0x2FA479af304A793fA71A2bC8D233B4DF80386fa6,
0x2FaFCd30E793Dc30C2500e60ca5304464738FeD5,
0x2FdDB263Ee11fC402e6092eA47B2D82fC284B674,
0x2Fea4f7C1E2452368cB661B83D34EED82450d110,
0x30402066C3011Ac56518Bb50ee676bc343eA7Ef3,
0x30a0eaa4BbD2D8104ac70f9B80E2FB95e4ce0Bf1,
0x30a7C98c97Dee4fd46Cd55d6478031e4EFAc0B9D,
0x30EBA9565B347F6da2743D659eBD808E00541b99
    ];

    uint256[] public amounts = [
        197493064368718677450,
4765290372291716021089,
5807951423076923076827,
292711536816948777320,
129671252504960645776,
3496631602518095835862,
35234733877728119634,
46911702559676369811,
1268251339594170827581,
12073043851793471019015,
1358138836523596020364,
2301000000000000000000,
96000000000000000000,
240000000000000000000,
659400000000000000000,
11652323120517299135,
656479842244591834029,
421117502054231739000,
46000000000000000000,
740984381650976596550,
5199568079218830470,
18851720058504341121,
1098693229462772185361,
1058745947538711943,
154690466045550450200,
49003588054203183476010,
41000000000000000000,
90735800745011987000,
562153629830404890430,
110948272997928798830,
26628608412534056963317,
5675784203114946396771,
1304904867019102287138,
100501255310337724042,
25867570346525193193,
756287971176970517275,
202287500000000000000,
240035537684180646460,
200018363262635856020,
295253917519098153294,
3821312788675091479555580,
1836686524239934300000,
3421942000000000000000,
502778841728112240964,
4210700000000000000000,
221452856410663035268,
305876456992639165761,
50568690759168828196,
580327207900789465828,
1087935000000000000000,
139342260101812103524,
150818029120125919620,
4141574309715882111040,
4404186456773509718315,
664676118015490599844,
241200000000000000000,
28898000000000000000,
18574599496432718175831,
33000,
198141527954579411400,
206792618353302587452,
2590415663516844840000,
712800000000000000000,
73693400000000000000,
805100740457519682383,
3856314273862133628373,
332136729663105979400,
769390987033950588740,
3583,
744071588385857246172,
25854359358711275295,
154100000000000000000,
886000590485284004152,
100929132179060595620,
14875588454288934526,
1542449700000000000000,
82000000000000000000000,
868043543472155649732,
2521728570000000000000,
365910961886953569179,
252000000000000000000,
36096687916451871146,
279214762936666367373,
1024892054273703386059,
14808592305623924052,
588383319638455200000,
21553366638736806910,
41419424627105774152,
245234024639998491088,
63151635423233055385,
4915785702547247040000,
4669438539607250628773,
162600810788652168746,
544017233539091244621,
21949421680389462680,
698463807652063346068,
125669460633075159581,
494500000000000000000,
860977035000000000000005,
584092473150475563212
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