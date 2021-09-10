pragma solidity ^0.5.16;
import { Table } from "../Table.sol";

contract Table_8 is Table {
    address[] public addresses = [
        0x83193738E5432Ae814A1D551D2dA623cE9b500C6,
0x834b3c2Eb9407195aca110D2f4a571FBA14CA651,
0x8364AE5d44F2c82c6008977D30d18244D50C947d,
0x83A97EE64D4EA4B5DFE9D262e67dff9f802bfb07,
0x83E3187D3D64749B252d93A98E501C18c9974F2f,
0x84036e606dfb0115a4bD9D1A8177DCDBd3C94894,
0x843Fb9690AEFF8382d0709ceCCa4938839574b6f,
0x844327EFfd4Ba671A61FCFE20Eeb663Fb0966B03,
0x845910d57e2c55c704D4FEADB297A6A24Af8e023,
0x8462F939E151a10b309bA7f0c9C0B3ccBB68c93D,
0x84889affc24Edc65DA221C7b34A2C5606DF082be,
0x8490214c89e408B5aC81aE857c74797Fc19df87a,
0x84Bfbb65c8E7ad4CD835De354ad43a0F0f10E3B6,
0x8525B969c183dE53F67D0b723d1aa9448E630044,
0x853cEa7ff3D568c66614d1CB37b7d6d75B81d573,
0x85A10B50F5eF29B4fA1f1396FED7d5c63412F31F,
0x85E5B092a8152dB7253574fA2157aAaA2493eF9C,
0x86173F99ce46e5F0dBb6faA43B96a3F873AFe1f4,
0x863944a9aD080c81e21A8111245da636B8E4c6dA,
0x8640C518406417D8F53bC8a9feC37A6f29b7830C,
0x870fC44f3170cfe10D27D1871c05299632300a78,
0x872B39Ac5F6472Ad8f1c6B70bc86f933bD9a8bc4,
0x880FBb859A443067bAbFA4e7fb5a7cA51720E042,
0x881115f9f8f8741A9f72f6215E29B9C6014aE271,
0x88122D927057F27c971B15661Ddf409753EeccaC,
0x882FE4822eF3cFbB352409B45d33d60979629e56,
0x8893f47C763B85FBd874AAA4dF22A219dB05E80A,
0x88baa8E1555A3CfeB125eF3da3d5E88E633F865D,
0x88ede20d971E7ce2d4Fd4f9C3744d28c028855d3,
0x89328fDEE7B43BBd2B4fbE4A13DC04dd8d87C195,
0x897CEb4a514f7D4D9e0f4cE3347D44966554376B,
0x898E24a611881ABE1f5Ca50E1AB586e6C4313e2B,
0x89B6D742372A686573950Da4F0FD2C49751Cb32D,
0x89C25Fd642B855DBeC3B3C2A6c2675c6f08A8f68,
0x89C3fAd61bBF889E3f56d4193bf91948978dB3E4,
0x89cA9d4C4Fb17Fae2943791cC9A534f6F7c48949,
0x89D4E55592947d79AEeD5e2787f9Df93C90bD991,
0x89dA62b9a45b7f752336AEE39D1c4D00Fa5926E7,
0x89eBa635ED585A9bbDef25E22F8625bf18f5b13b,
0x8a2895767D27620C264b030973d6A2cEE159ff31,
0x8A30A3C6Df49dd4C83201dE34350B3a8a1c57843,
0x8a42eD19420f021ac2882D3265c2d3925DbA194D,
0x8A625E14D716B929C539887041462Ee8a64cC927,
0x8ABA7233799382Ce127C8B1e5731DA4d11F5b3A2,
0x8AE7070950FC8B4e7d7Ec4c7FC030988b5c02ff2,
0x8aeB5835d92cfE93EDe77faD7C93CB17b2d9231b,
0x8aF137D3cEf3Feb21A0D0b38dafdE168605Bc9ee,
0x8B4D1F7cA7a7C2987398AfeA49f0D1Df6dE9d2aC,
0x8B7604BdBB8fFA111bfa7014aC7D3698D6A901E8,
0x8bbC0882B98a403983b4144314a97bd94C484657,
0x8C06A660ffeE13f8295f64312fba1137B555DF66,
0x8c1c963b372c3b86528DaB061055BA453dF67E44,
0x8C2054c58c9279caD2fa2da5F4CB7D2183b9f7C6,
0x8c3536ea63FCcEE9264BD4EDa847d603F6954923,
0x8C460Ea1fFC2E494f44B65535DfFd0C7159128Fa,
0x8C4f94D553328D27D0FB970f8dD32c263F260768,
0x8c51d2E48FaA7a21359D28B96Fe683FdF9a6e58D,
0x8C64e51c9bCa21E2D2E4E9ecFE3Dc6499804A5f5,
0x8cAc342DcD543FDDb7C291E13B14C265Ef4dCcf8,
0x8cc7f9a9D22C5e76171fDB972FCA50aaA1bD00B0,
0x8d80598D04c58ed0241C1EB564eDc2D1dB81Bf9a,
0x8da5b713890eBe4e080BB5E1f5c7F62eCe88Fcb4,
0x8dCD210F4C738b98FaBfe5cA72386A53c0470dFd,
0x8DEA2fB50dfa3cD081e09d5DD42521F14f50C7e4,
0x8df7ea3068D3163d700ea4610FB9348bD4AfD230,
0x8EB632e52bfD242BB1bC53236d0D33F36fca49a6,
0x8EC1Efb8465E2f120D744936e3bBe45174910868,
0x8Ed63ABf801D1ea4c5E8ccb980883BFD7E21A2e2,
0x8F36955Ce1C2d2B50000afeC410DDc1608B74C91,
0x8F3a35405F4fAD547c1DDAc898322616659724dF,
0x8F5FEbEbE68991Cd553014e174af4F60E382624F,
0x8fA2C61b437ef039a1Bfb809d6b2148A26152F62,
0x8fAD52b4d6aA8f5ca600ce071eb365ab2d0ed3fe,
0x8FC4e92A3dceb3a140ea148F25bdD36Da629d55E,
0x8Fe8d8E89B88Ee4119a504F86A9553B9B694DCB1,
0x8Fe9C787995D12b6EF3a9448aA944593DaC93C6c,
0x9047Ae3aA9664D0e69dE6Ce78E6925aeD9b2a718,
0x906d6B687E3438e89AFaE5DcA0A66296cD2bdFBd,
0x90884C289b85fc35BE75c9302F84D1Aa18CC264E,
0x90b956D2A705F8BF79a70DEF26cA1eb8863FC4d0,
0x90fDF1b91a06e59b736E3a6FbFc5F0D06b4E928f,
0x91209ADAF554e7e53BA332B31D7dd986Aa8c274C,
0x917C19F0050c9E6161232ff8D0efe49518FD2d4f,
0x918b89756901915F69F14fCd1CfA407C49eDDBca,
0x919Eef36956776968b5c8F84973AE8895426f88A,
0x91a3CafCA9853c2e259c29BC8bA808fF66a3c880,
0x91ef752E6d0c40Ea0b1D542B440ba4CB35B3ac38,
0x922d372FD2331b736214248202EE7d053494f4E4,
0x9245bE59C764a2c6569AA082a3bCfc11C13c3E2b,
0x9282519Ce1EC01377E8562018DebB2e7Be1f2F80,
0x92EE600Bb6a9e339b28276aD73b5Aa5Aa57C51BC,
0x9325564ADe7683706107685Cf1993678B1163261,
0x9367Fb2774082ceb868f41221d05840736632650,
0x937DD8646282F43210fF2AfD6F45746d852a1f02,
0x93A782A8Cdd835de0751A63d42FB777f7840158D,
0x93bCD3f7CE37d4107BCBE17E91d483a0DbF02961,
0x94091cbF9959A0322ccb63f5674cDA6211F7E4Ac,
0x94172EF86CB242B61147FcCAdF42A38dD03f7D49,
0x9427A3ab16b56d9d595a0f6566C7ea662300Cb46,
0x943159aA9310C450D3D47811cDF4494795b119D6
    ];

    uint256[] public amounts = [
        895158251955772000000,
38224091397417700000,
9962760062517680000,
1610474440079070000000,
12356407091581700000,
1919980779611010000,
6376389812929270000,
20927572585038000000,
67772043898532600000,
8639728314764010000,
161463326617035000000,
1222354513947830000000,
306945133642595000000,
13052777962064600000,
42088722175188100000,
132597350760377000,
37841850483443500000,
188131333039810000000,
284060370111266000,
30235329244058700000,
405382381365159000000,
2524533623141160000000,
23636115666126900000,
83740093134047800000,
454509522299414000000,
1025434432154150000000,
595502234293992000000,
222464689734113000000,
603350464108023000000,
40518247370886000000,
152117358200983000000,
8593473676984650000,
2635288085313320000,
3558222351733880000,
1590564648701550000,
6096742577888120000,
997151590412414000000,
185260250021989000000,
181399638220746000000,
53225089108147200000,
133334567278362000000,
76034257181906100000,
34492817027379900000,
22348719897799600000,
48156794699629800000,
602902479242136000000,
85115189189904800000,
67968223500959000000,
4479945164371580000,
1731831231125870000,
32299697342779300000,
7604403645917180000,
41526652894154600000,
6340538956375060000,
89579993948551000000,
156959658839967000,
73953059367792300000,
11763448546329600000,
576018802756172000000,
422670579880978000000,
74557938040040700000,
44722640401121400000,
151769786103465000000,
99326802914857500000,
1244576587405210000000,
13708934102935700000,
7580679660521770000,
423353629258012000000,
15070938567280700000,
1189613536954510000000,
1556724564312780000000,
98953095584024000000,
7821031340825630000,
11324110229453400000,
21703349006111800000,
431817560516627000000,
340196433291761000000,
11376426303097600000,
116595567059776000000,
282795079312998000000,
66586367214301600000,
730580365231913000000,
858030546495545000000,
6536433039145830000,
2825854358526450000,
67528181186892300000,
3697548184719720000,
357922308769865000000,
723628385708914000000,
33984547101336600000,
183717569938208000000,
68586902165370600000,
167480705114012000000,
13080964021720700000,
64972194590330100000,
54671767861282700000,
314513302905682000000,
5045580064459130000,
1079080982047170000000,
25992382150244000000
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