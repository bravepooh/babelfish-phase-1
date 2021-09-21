pragma solidity ^0.5.16;
    
import { Table } from "../Table.sol";

contract Table_23 is Table {
    address[] public addresses = [
        0x80755dB9568e7a7Ed349D1D3CE964aD86AA31044,
0x807D85DAb671ba452F304d61c6dEaF8971d95497,
0x80813eb6891e535F9D279eB1797DD1e7FAeC4C93,
0x80832fdC8204b241c0B93D887ED2c0287c258573,
0x808e25B957b2dC303F4EcE4BFA4924AD11a59eA2,
0x809Ec21A555442B313c45Ef4107B5b615237f049,
0x80A7F85A9c5E335Ed9b31d6Acb4405d6C88de531,
0x80A8486729953e6Cc09b032cF37Fae030857Cb12,
0x80bD17F3E071cf931391c9A049170743bdaE14b8,
0x80C2dAd447032a5cd29455b992f01F01b67cc1DF,
0x80C82cC110c288E7a144163CceDcb067ed865bD9,
0x80d1Ef133C5e87Bfa8F4a4F5B7B53AfDf64a425f,
0x80F983B6B5fDD609d8feDf59B38Ac3Db15eB2F48,
0x812a70181039BA59678f2FD31B71e7888e12Ee5B,
0x814d2dCC371257a878bE75462c572274Ac2ae7b4,
0x81578De5bbf914a880a158063d6F6b07E994f194,
0x815C2846F2DCCB9767C88773Ace083feA617E05C,
0x81658b462404812495D4CA9499D97b2d68bDb756,
0x81a13eFD25bcC92Fe7869c6a8cfAb976007091FC,
0x81A4cFfCaf5BF51e3DF51567dFae80Fc624D6816,
0x81B8360468F7D79dc143681E8011FF6F8541E927,
0x81b9CbC7DEb7Fd800D67E7e3757841252e941DFc,
0x81bcA173e3af097dccAbbcEF20ce213Ca20a5953,
0x81ccAdD251a8c4B8c2020C4940670A2Ad84e4716,
0x81d59d01b8Cbc490B52252f92C9574A4b729eC2E,
0x81Ef4D92b16204ddbe74f7D0415B9Fa9FF1efBF0,
0x821D13D1F349E13622d93f7CcA158D02dC355636,
0x82229046D5cE7b35bA021585812e161210678467,
0x82244E88A07Cf96BEFAE71D794472262b1B477b4,
0x8225c159C1D60Fcbbc8C371e8E83AaA4b370a54B,
0x822Df343216Dd41e8Bcd389Eae342117462407A7,
0x823a10c913248941A7fdbf61F0F2F20b4562E442,
0x823B0b05b3ebe3569d55E765bC334DC3B24595eF,
0x823b646d11A681b1Fb90070E5a803689877f9038,
0x823B6B51E28716Aa80ea6E9203Bb59F0cf9768E6,
0x824582e17C55A26197078c3878cd11306cA9dB44,
0x82545289c8c51898B9E6fC1b0d66a6886A3F88AD,
0x82728bd2b5F4B678C7743005F1832c3208e13041,
0x8273C01F6e76bd52437E0cA440BEBD1B344f9ac3,
0x8274853F6D2a2a28E642B7660516Ba5a0AD027a0,
0x828bbFC0636cAA6c25f52df480cdB391008eDB09,
0x829fa0871288b8e4c3CFA4e9c3549A8EdbD09F27,
0x82aa97Fabe37b1271387298382b31f732e5712F5,
0x82fC9E464759eE6446AB70Ba9856cCD15a1D44D1,
0x831895042cE19B37f063EB2118C66df7c92c549B,
0x83193738E5432Ae814A1D551D2dA623cE9b500C6,
0x8325B8005b99eb01B6588A4414539e047179c9E4,
0x8341e2c9C674d8D73057962Fa0F42a9F8195228c,
0x834A4eE991C3F6B14aF25B19d4ec93ccda870bFc,
0x834b3c2Eb9407195aca110D2f4a571FBA14CA651,
0x835be4D8E0f0F9C44aD6F4B8D4B9be75f531309E,
0x8364AE5d44F2c82c6008977D30d18244D50C947d,
0x8378379ed73Bc1f5892F2E3787b634Cce31aF562,
0x83805E5807FFFA85Ee0d02e2a17cD8fA19afAa5b,
0x83A4f43CF62ff85A0EEb19763a3c0F9b9906fa2a,
0x83A90989c797f2b86DBe5cD5E4a063cF551B370C,
0x83AB481dc4640ff46f15F7f9e5669a5c820cB016,
0x83BC4EED00cCC496a8A9a8d1AA594eF0cfB1B599,
0x83E3187D3D64749B252d93A98E501C18c9974F2f,
0x83F1149E6737D005a289BF7A03E081F7908bc88E,
0x84036e606dfb0115a4bD9D1A8177DCDBd3C94894,
0x844327EFfd4Ba671A61FCFE20Eeb663Fb0966B03,
0x845910d57e2c55c704D4FEADB297A6A24Af8e023,
0x8462F939E151a10b309bA7f0c9C0B3ccBB68c93D,
0x84750c20B857b0032CC7e4DBa357013748C0E57d,
0x84889affc24Edc65DA221C7b34A2C5606DF082be,
0x848a6CfA846D827f4cA0980B6d4036FB2d463F15,
0x8490214c89e408B5aC81aE857c74797Fc19df87a,
0x84aa82Cbf4a4f1dE52c6bF911b0E5cB241B5CDB4,
0x84Bc9B47AC8947bC9DA1e0Fb7680B50Ac19a7356,
0x84Bfbb65c8E7ad4CD835De354ad43a0F0f10E3B6,
0x84D9c13793eeEcD37Fa82482110bcB0c5e42116C,
0x84fe17b9b5E2aC84386efCd0cD78912bFd2d4c82,
0x85122291330859D6F61e84FD5aD9D506979712Cb,
0x8525B969c183dE53F67D0b723d1aa9448E630044,
0x85399353400C5B67fD6eE53B1d2cd183bAE7dDdb,
0x853cEa7ff3D568c66614d1CB37b7d6d75B81d573,
0x854eEb4c715e3d1Ebacf35Ec3190fF25f2725218,
0x85924aA0B2cb5a0BbeC583Dd090bF7CEdBa5D2Ea,
0x85A10B50F5eF29B4fA1f1396FED7d5c63412F31F,
0x85A8b2A0a38D4697574172972c404C2FAa4348F7,
0x85AFFd777EEB7d52B8Eae4fBbEe03446850a5266,
0x85b0B3d2509a192DF74DCdA01B579bC0998ba497,
0x85bb01CA1384e6275Cb794d10D5559B4D94359a9,
0x85D10d3c539bC4bbE13fd1631Fa09D14e742Eb71,
0x85DDB2eAF21a242B838f664Dab6AfD120aC652E4,
0x85e3AeF164E5cbCDc9b7F12e97bf5237CF48D40A,
0x85e4CD6442702B9B84392091a8FaEB73815E501B,
0x85E5B092a8152dB7253574fA2157aAaA2493eF9C,
0x86110E90F700CCf00cA0F737F085fa42c5A4b45F,
0x8614003dCA3cA71e3fa372BF2e3b96005F055EFD,
0x8615c1Dd12D9b24005BF2ef2a7E67B65B3C90998,
0x86173F99ce46e5F0dBb6faA43B96a3F873AFe1f4,
0x863944a9aD080c81e21A8111245da636B8E4c6dA,
0x863e2ff213D50655b2652bF5e683B0B4D701d2Ee,
0x8640C518406417D8F53bC8a9feC37A6f29b7830C,
0x8641AaC514D6A99cBf00660b6ee0694F7877e283,
0x8664E763266054F57fAA8E62F7FBDa16722178A6,
0x866eFE130047c54D7C906aFB80830c5427B1B92E,
0x867341857eE0CdF6Cb484A1a80EA3E1713e170a9
    ];

    uint256[] public amounts = [
        735954284805067000000,
2563956684549660000,
62106963771666000000,
254896702793128000000,
608054290966302000000,
156767793898660000000,
83006703789879700000,
6537668375660610000,
2340152173136160000,
568912093283202000000,
1200477551548950000000,
4482897041952420000000,
1302872464290300000000,
0,
1137616251421780000000,
5079612467808320000,
123888961191894000000,
65981976378116200000,
18970148857448500000,
655193461967367000000,
246711382078496000000,
52287713891823700000,
4032558163351570000000,
510946767996191000,
17169090141192100000,
1424376947181160000000,
223464590673221000000,
93021840508488100000,
361389730785871000,
289595557889845000000,
1856286359422750000000,
24540672567131200000,
58071990992540000000,
361389730785871000,
12394440088416900000,
510946767996191000,
5386143265431070000,
21817758759193100000,
2563956684549660000,
6495804459262800000,
5782235692573940000,
67439185739108400000,
0,
6596116835590770000,
683407809345187000,
1640515283954160000000,
0,
237651904468303000000,
9281104011772010000,
144797778944923000000,
4128386847930080000,
15156729508095200000,
1047819244062420000000,
510946767996191000,
4005609423268060000000,
52480152834448600000,
140941995006490000000,
4312515608716630000,
47701400178142500000,
693378831966947000,
2895955578898450000,
32956488466134400000,
181746332560009000000,
20347357946553000000,
5846846447059220000,
1523941106926320000000,
225868581741169000,
2287371862420250000000,
681167965482418000000,
2156897152187800000000,
1162747680443300000000,
171619431161902000,
10560140981266400000,
18513736834343000000,
51335719098039800000,
2025339853277490000000,
270703744138051000000,
38011464452025000000,
0,
7936392833451960000,
2914861760843950000000,
5248015283444850000000,
48494720440967800000,
832586567499563000000,
103820436749333000000,
2747330353251510000,
23499609923697700000,
13684030617413100000000,
144797778944923000000,
58526099422729300000,
3309071817189800000,
57190931410220000000,
226063666427001000000,
65939825984893700000,
56217212200588600000,
791811776914876000000,
286725357235967000000,
46204563616533400000,
15646140088731000000,
28650866390277100000
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