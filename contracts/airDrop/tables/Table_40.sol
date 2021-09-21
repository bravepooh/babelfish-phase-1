pragma solidity ^0.5.16;
    
import { Table } from "../Table.sol";

contract Table_40 is Table {
    address[] public addresses = [
        0xE3F5622739cBde5C3534627dD0bE861a51614452,
0xE40C191325460c441aC3A3a96b41D3ca7063BD0F,
0xE4109FCFE05BbE631FDF6710546Aa3A2f10E69aa,
0xE4222061f2FBD62684e414b433365C2e9124E88a,
0xE424d8F9DdbD24B28DfD906Af10eB13D9a83231e,
0xe42adCaE7A2B9cEee12BF9C8Ad351b92b4C855fA,
0xe42FC3F7a0828ECEBd3808270a99E06556572C4B,
0xE43623c593e4410c2C095Ed0dD6a17fceA772e5F,
0xE43b4B81128bE975F39c4D1960c2D2a3205273CB,
0xE451daAbE16e3e3B5B296a54A03EAeEBED901F65,
0xe45DCDbA6271d2C8066d8A0D72570E18E99e1B0F,
0xe46C257B6bDe75C99cAbA9a64AB767495B5769E8,
0xe481E042fe482477Ca1D0228F03aE8B8af440Dac,
0xe48BE79fc8085836af6dda8c149c5b964f95e490,
0xe49cB74Fa25772f52A2b2D39d1D59d51F228ac15,
0xe4AE5D26F9d20CA5A224f5206722eb98C2247358,
0xE4B331C51e495eC4CA68467672c656348f90591a,
0xe4d900F9F5BC1bA60B5B327de6910f6A153C9dDa,
0xe4db0c60Cb4b184208753a7136d71024EF260515,
0xE4dE108a39Ae8E4C63142C4D70a58B21dfC9f741,
0xe4E8556c4657309a923a53Cde966683F63C17cf9,
0xE4f88F8Df42BBADA7DB3233B0b29C7DF34548Ff0,
0xe51200a4d161935FC311eD8A0401FEB1abf20E3a,
0xE5124deFC04043331Bd2939497820E1FcDd7789d,
0xE518F19E480F9E5f17ebb71cE498d76D34dF239A,
0xE52c75Be08A3cdd5eBdBEd49FC6cA507B78Bb5bE,
0xE52CC001aA71Bb1269a75b1A6B179eAD90A9fceF,
0xe53b7D29fc37EAeABBb2158bBFe8B599F912e12d,
0xe54595EF4A00a544E149a1B9076dC37De37ee578,
0xe57AeD6b58074815bea2498133Ea2E778201b8C4,
0xe5911b1b371053A5fE150d91ABAD2b5BA6d80B7B,
0xe59879ad32F07053B76A95cd4Fbff636520c4C45,
0xE59DFaCb406bcDdBd312273Fd7dC4F45737F11ae,
0xE5B1cE3049A016376d4250A4493bb34CB24A9333,
0xE5bB482739F887455dCba8E0fbA272b0945AA946,
0xe5cd91b42D53bF7F7028cDdf7E902269915e4B7D,
0xe5d183beB69120B978D074E8A658FDffc2B8046f,
0xe5df77b5c1C541cDA961bAFBdaB2b9FB94831f98,
0xE5e2Fe2A35520a8590e739850BB640E24659e0c0,
0xE5F09b2fb16414519D90a650F87d0B3813996698,
0xe5f60fa1Cd0D18699D41E2fDDc73d8b2889069Be,
0xE5FF9E4A87E2260ba4f7dF48f1804f5f6464D4b6,
0xE60155Ae1395cDCE580fd8abC15f9469F12e49fa,
0xE61d5E537DAd93C375fb69b7a2Dd6908D0336f8E,
0xE636d53337Cb069627a13a06372390981442b6AB,
0xE648Bdaf21943a7aeB8ee1A745Bf323cb570DcE9,
0xe658ee7cbEedA3FC0530f26121abECf22fAcF0AD,
0xE664dF7554Dd9aBE81829708A29d0761be34AF41,
0xE665ACe858f88a01Fa1a4849Db7Da735e9f18E2F,
0xe6827a0e73e44276342178909abCa38735871E8B,
0xe6a443140D92bcf724AF25B274D59617e89Cd09E,
0xE6BD1916b9B6aeff8A96C13b7a247f82CF015d70,
0xE6c842ec897ec64beF8dB2B4EE9c832891EA488f,
0xE6cADae26c4EAc266B57aFE2E9bEA5D23454F0CF,
0xE6D28ABf7E4FA112d4D00Ea4Fb01E675d24C0306,
0xe6eeE90fEF6C4F57374FF654EEA26fF5109B46eb,
0xe6F42a0d51e99702C82A14b2cA9961CfbAE3BcF3,
0xE70D5485c7B01C070dffF37feF509aB5518c3D4F,
0xE71865e06c774bfdd04Bc145427b4FFEb6C323cE,
0xe7452D832aE9fc194CE6f9a020c8C76C8b1144b4,
0xE74Acf3B57d092dB0E2f71F0435Bab6eD95c3A72,
0xE75E79d3C82Cb5F0A0Cda0F5dcf692823EfaE579,
0xE7679a598B476AF9BbF61FA22d9e4eDbF74A6C1F,
0xe7766375db74Be58485BFD9E36E357fd13218F9D,
0xE7967e618010c7561F5aCd59aB9790455370e65e,
0xE7a4B8F1A428Ef9756926B3E325A849f391F8EC6,
0xE7b968d86Dac4820Fc964A6D5d400DB2b0Af8D20,
0xE7BDA79b418c9f25A7FDa66058C3a7F0E0966FFA,
0xE7Cca2d05637e9a1B6A54De03bbA89D166043528,
0xe7cF3D6c298B374afFc3990732b1D63e95d1C983,
0xE7E0a14b952aba722a515D7d872e50ebDd24e2c2,
0xe7f068E16ca29457F3414D5A70e42df59792FC80,
0xE7f78FCA43c129010635043903D08806AEB0CdCB,
0xe8131168eA95ecb00fD0233Ef47A1890238ED26e,
0xE8142190989d38ec80001860a2d83Bd15b931947,
0xE816c2932724655782A81009CAb64BC45446afB0,
0xe827f38ac363BcDb3865b23d0eBE2ac8e28B45d1,
0xE82af191FBf0DA8361197fe948541b32a86deA51,
0xE82d37AA7D437597209794D07831a5953266D3F2,
0xe840B3E844b36186513220A3E5BF30cFA73001Ca,
0xe85A2b9b6e5458B65ceDA669d58e2c3d970e07E4,
0xE85Ef47Ff9D5BF9C36eE0Bf71c5607cB67A92b03,
0xE879b90aCA1019c9caD2403AD16F4b5eB96cC687,
0xe884398213A3433aFA41DF65369E72850CF66164,
0xE887EaA07fD2f3D30Bca17dB03bD24e40d5E24f5,
0xe89735a0a24B8ceAc687C4bFc76aA3843C1DCEb8,
0xE899b76618F150dcCfeabeeF20Dd091A6e20411d,
0xe89BB00F75B0D8096Ec6fb40BA404b534E8E9fec,
0xE8b32556ee5884056d9BF4f52E269a2ab190C67B,
0xE8c3A3F1eB0a4f845aE1f2115d18Db37Ab55f51F,
0xe8E593B5a90EA9B46c9b0225e1337C34D34D57D1,
0xE9496E089A3684F91Cec2f985f386879B8caD4B8,
0xE94c71b53bAe76730a6c52AFbDD9937D9E1E8bE5,
0xe965E6bEdB6B66a9bCc740de74AD0f7c0590eefA,
0xe99e48a4F8e383bD0903030A0545d63a6f34AcC0,
0xe9ac5D58096C8408cB81a88667bc628f3270fE77,
0xe9afacF0E574EC964392245a2190E8Fe92C6ABbE,
0xe9BD5642374e97bc0E3cd7DE365F8Df52BEE9A57,
0xe9d7219B7Fd6fE5F30c83A076a66490D1E324766,
0xE9Dfecf6f3cAec6F1f6e6e31B6671eEb68daFb05
    ];

    uint256[] public amounts = [
        17406782894030357100000,
14895619139872300000,
64105223024464444000,
345306064382287234000,
0,
5374581693468604000,
3483444619010173826000,
0,
83175041571268000000,
1888369054298592000,
0,
393093323691244000000,
492740147311513074000,
50133728169190388000,
29803618343479698000,
4568415912606170000,
24505841699731578000,
1328474643831706000,
20728439672259192000,
2144862750707234000,
376555576587874000,
35074049289265212000,
182528006472132000,
5222263350372296000,
7263665951424702000,
0,
354356620334924184000,
145817162737358000,
2149944954372674200000,
72726706283634100000,
570187913404263818000,
6080714186901707614000,
0,
85890968413280960000,
1637189038359800000,
238953847339166396000,
45684159126082364000,
1558571667412296188000,
0,
1023980373869119986000,
920040520464582000,
457131505961986814000,
18538448081758300000,
252920824330626400000,
734727553719325200000,
819214495660462000,
729085813487672000,
12268274155645870000,
2429929642487290000,
12487305633552298000,
1198599960711004036000,
35644511805227012202000,
21629804969307964000,
7612413624116026000,
31888227269435640000,
5757888598498910000,
54578946709872000,
61125055321684100000,
2290810108238738000,
6834057645579418000,
69373074141242844000,
903318379528894000,
26428021264923900000,
40931334356759700000,
0,
20824014943650904000,
3019701267077348472000,
5964205387091364000,
12669028282657312000,
13703642553433368000,
4424701010688568000,
1017434028546346432000,
4207504416948340000,
2702402856846955116000,
115274115204847640000,
1025381977980175500000,
46811946137840836000,
77152176936225490000,
2088905340247482000,
961758052599338000,
235032069773284236000,
3610740191276088932000,
7296011894982172000,
203085318425158706000,
55521131639644200000,
1391008766584939996000,
207956646327003114000,
1982925991853060000,
127831136202184538000,
56821537408625518000,
0,
1472393495846351282000,
137372912150953784000,
374573995678111200000,
6715916012583958000,
168304728542971200000,
342320914557542222000,
17280057024708550000,
58326865075054332000,
66418397647258368000
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