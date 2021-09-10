pragma solidity ^0.5.16;
import { Table } from "../Table.sol";

contract Table_13 is Table {
    address[] public addresses = [
        0xd9F71f148275E8058A7465bAB1247E804E2367b1,
0xD9fE94c8a0a9159d52683074a63AcBf5fFf1E379,
0xDa10b8063323388d43b03a57aADD6BBF640AaE18,
0xDa43e8D0fc4EA3e1C278C7f81B26cb26287B1D6b,
0xDA455d3fc97071069839946048aaaA6E24824e71,
0xdA9b355dCE6C399A160Eb76e3F472320FB77C1d2,
0xDaB23c7A56182f4bbF8A88731c6C60Cc9203bC29,
0xdb2C73ec9c42dD49077cC8eFE60d9937Ee7959aA,
0xDb2ec26A752cb54d07B2475Cdaebb476Dc9C7902,
0xdb3f49E793743539E192F1f5CF271590941d79f0,
0xDB7541E23B4AF3478DC19B3C0DB03A65e3d56519,
0xDb81b5f2ea7063fcf3Bb51DA886Dd9a6E7DFd500,
0xDB93e8ae0b23d649c12E0882092DFBcA1C36f138,
0xDB9AA234F833Cd6A94723E469bb65aA09d500C62,
0xDb9EeB01f9599B9aC830e2353a0d6B53B05A2B10,
0xDBE1B1BF13C990963d4B26f9966930b835ceD3cB,
0xDC180994440FEC2b35C06bb248120d3B5a24669C,
0xdc3F5923a14CA14D2c6a672304B5fa85c79be016,
0xdcd7a63380494CfAeca9361dB9Fd1edf3d29681C,
0xDd07819cdEB2613fcE39F654B6831DC9CCDf1Bd8,
0xdd13eB27AF410eA094C2Ac357f1B79b62F738062,
0xDd1e134Beee63513D29B81D147fc3F60b64eeAAE,
0xDd280c0Dd2A4Ff419352C22C65fE37f6c9d78273,
0xdd2d28232EC48c2f08447BE78F0a2b6a74cdBa9d,
0xdd3b4D307c0F689a91398A57E1aD0C54d5D8Afb5,
0xDd711b4690cFad50891cADDD34D56F64CEC9d85b,
0xDd96b1F7E4D834F77a90F0dB72C5751e3C4cAdB0,
0xdd9fF748AbAf22bfFB3E99866ba193d9891BaaAC,
0xDDafE5cf7fe5EdE874a466f80B0eE7eBec779Eb5,
0xDdD6dF63f28077e67F22F9531AddC279f041032F,
0xDe330446FfcC329cC6250d7A134956F0531d9bCB,
0xde699bEDF464A7AE064fD2BE99F9F2C1d1A17C89,
0xde73D77E8F6B842B00375bC49CA7a1F668fE2cA0,
0xDe74608fFaA3E6525CA8d84438aEB43C3c09Ce98,
0xde756429f030155A8ca4A628F212d8E19AC798E8,
0xDE9999afCC44aB2cF0Ed7C35e2808Ee954a64D9d,
0xde9BE7Cd710FD090001FEb3B601CCeC9d21Ba003,
0xdEB1F4b7CC04F591b2aEFb90108b95a98b631a72,
0xdEBF4171142D42649c181Bf71c9ab4085271119a,
0xdF6A16Dec611d4C7f7C42a0B9682169676e3e895,
0xdfbe47a9f0DA79Dc3f9D80832449bFE684FFE491,
0xdfcA1a6E1f9974841D71a49A70078992D9d7d122,
0xdff022770fA7F7b422507b62C9B68cE1a47a24f0,
0xe065a0540e3E22816bE982145e438a92B0D2B591,
0xE08B1D81bfD76705F231038bC50D51471fea9d46,
0xe0cd8F81bB040c3C022BE4C85D5058500C7cc60b,
0xe0F5403F4b3480E6199705eF383f3EE934fe8Ff4,
0xE10b1f4C55F58CB8b0338A5b916A10D2313D8959,
0xe10bD769F9272d3A4378ADC6b75C290905f4aCE9,
0xE17eb2F086D62B88dEc53a15322E44C783027854,
0xe1b75471d8CD3055f8BFe319766923028226Ea50,
0xE1EDA3CDcd125D3BA8c353c62b97D5Caf8132ba7,
0xe264B2C54c831dE358Bf419F3C5958786d94049b,
0xE28e83E14F58015A87dA6E243794063c2123E78b,
0xe2B8A20ECdc5E17B1596F2e5Fc44CaCa961a9FC9,
0xE2d538accA0698d91a93445E51D6a425C9d49c61,
0xe3bb78533122111FFBB370375b17238885F4f556,
0xE3E313d0020EF7cb57BB27bE5C390ce1C22637E4,
0xe3eA7F3B42a51564B9337f9ec947fa354314B277,
0xE3F5622739cBde5C3534627dD0bE861a51614452,
0xE40C191325460c441aC3A3a96b41D3ca7063BD0F,
0xE43623c593e4410c2C095Ed0dD6a17fceA772e5F,
0xE43b4B81128bE975F39c4D1960c2D2a3205273CB,
0xe46C257B6bDe75C99cAbA9a64AB767495B5769E8,
0xe481E042fe482477Ca1D0228F03aE8B8af440Dac,
0xe54595EF4A00a544E149a1B9076dC37De37ee578,
0xe57AeD6b58074815bea2498133Ea2E778201b8C4,
0xe59879ad32F07053B76A95cd4Fbff636520c4C45,
0xE5bB482739F887455dCba8E0fbA272b0945AA946,
0xE5e2Fe2A35520a8590e739850BB640E24659e0c0,
0xE5F09b2fb16414519D90a650F87d0B3813996698,
0xE60155Ae1395cDCE580fd8abC15f9469F12e49fa,
0xE61d5E537DAd93C375fb69b7a2Dd6908D0336f8E,
0xE636d53337Cb069627a13a06372390981442b6AB,
0xE70D5485c7B01C070dffF37feF509aB5518c3D4F,
0xE7679a598B476AF9BbF61FA22d9e4eDbF74A6C1F,
0xE7967e618010c7561F5aCd59aB9790455370e65e,
0xe7aF7079845a988e32896E7a99f7426524b48A17,
0xE7b968d86Dac4820Fc964A6D5d400DB2b0Af8D20,
0xe8131168eA95ecb00fD0233Ef47A1890238ED26e,
0xE816c2932724655782A81009CAb64BC45446afB0,
0xe85A2b9b6e5458B65ceDA669d58e2c3d970e07E4,
0xE85Ef47Ff9D5BF9C36eE0Bf71c5607cB67A92b03,
0xE887EaA07fD2f3D30Bca17dB03bD24e40d5E24f5,
0xE9496E089A3684F91Cec2f985f386879B8caD4B8,
0xe965E6bEdB6B66a9bCc740de74AD0f7c0590eefA,
0xe9ac5D58096C8408cB81a88667bc628f3270fE77,
0xe9afacF0E574EC964392245a2190E8Fe92C6ABbE,
0xea25BdBd84cA045B631712E0404916b3f770f159,
0xEA46EEc6CA891223FA581Be42d52F9f8477dA2CF,
0xeA4bFb817f45E8DfB7eFaEc407Ea5728443097DE,
0xeA51CA095a9b296d6e60d2533341568b8AaaE05E,
0xeA52c9715b9D6B39b2A8B5E0797230a87e6b00f7,
0xEa6fBfa2592727174645552169c3C00f4fCFAe33,
0xeA9FEb124d29641d0275dC93f93De2dC24e0e299,
0xeae0DDAd0Ad7d62119d4cb4B8f8973A4D77D9407,
0xEB312ccCD95808e3e3a036bB391d82686E568542,
0xeB33C58606B1E2FC9a63c9cAFeB90063324E5e9f,
0xEb3e0078d2A7e2F84630a78d97e7CF38978B17C3,
0xEB473B5e6D607afF39238304B4Dba169783c9101
    ];

    uint256[] public amounts = [
        18915149288610600000,
271669309906815000000,
9234733979433770000,
836387843640558000000,
911614734310445000000,
963219286681101000000,
89052494530919600000,
21806096985390700000,
12531980833310500000,
41121879308500600000,
11456671482011200000,
1748788450503820000000,
27487832074054300000,
829864019946954000000,
1501014947858720000000,
2432278597802350000000,
6230260733536920000,
25939807877543700000,
325963937378685000000,
954535210070955000000,
6202365301203070000,
90820441160264400000,
5445404060476120000,
191006823003415000000,
10586047061401400000,
481199099479787000000,
293547062776710000000,
95361727144685600000,
5362800775153050000,
153604185526403000000,
14934021412281300000,
38409790060627100000,
2600729203864320000,
8448866459784070,
40590685405404000000,
3516616408562430000,
39532010820380100000,
529138670500252000000,
442869327667105000000,
14163279716320900000,
6511940717800500000,
80754750383385100000,
2823257157223140000,
101240940805198000000,
52754879049943400000,
241189799195512000000,
54278209784333100000,
974227790940134000000,
79721611125466000000,
207168237841620000000,
168,
55501380709050500000,
4455200679650810000,
2926535911331310000000,
54631271798176900000,
90451704721380500000,
51418476903196800000,
22753907579980500000,
169124445591696000000,
449262424791551000000000,
32872714847212300000,
78789322085943100000,
67754997954558900000,
179420481544432000000,
636471471599316000000,
3062921288185940000000,
60546960773509600000,
1153005464274900000000,
2739526353598760000,
1983138000361660000000,
233175643189064000000,
45948810170215800000,
14502598404358600000,
610249753789100000000,
49439897533633800000,
22002046410203000000,
24942400115785700000,
344398142717918000,
1604068601530610000000,
45868909676901200000,
516000426563993000000,
82501295338954900000,
1873705929799480000000,
18460358728158100000,
264826139463867000000,
152562309628057000000,
133016183423161000000,
116025635199580000000,
1061956651796480000000,
87067217007682700000,
1581551612817980000000,
43735989789686000000,
138583610885057000000,
821394597454504000000,
7624983307932600000,
1940355001198340000000,
1076365197179910000000,
19884765367535900000,
29330755857503200000,
1203589643893120000000
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