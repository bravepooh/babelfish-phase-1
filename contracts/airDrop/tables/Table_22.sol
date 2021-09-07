pragma solidity ^0.5.16;
import { Table } from "../Table.sol";

contract Table_22 is Table {
    address[] public addresses = [
        0x3519e6FAB4Dd9021138186A0C83999b59F51704E,
0x351aa0222aa0D0636c2e062099d8A6017E8856Cc,
0x3533490604EdCC16030453909472BcF4EcD225F6,
0x35362D5e800DEA7821e7a43D08A2807C17342D54,
0x3546B878a7741ca13dC7d0B4B77f6040F1FC25A7,
0x355382c41dEBaC9FF3161Eaa37472e8EFEB0DB6a,
0x35705Af5E90Cf68C9B50e49BbbE902C3c9F39946,
0x3587B15f7865D4F3F5cA15D29d197bB2f1E6309d,
0x358893847713bCF2FC3F3234060A6C90B2e02c68,
0x35D2BDf852cf466e678E493E0C3455EA9607d53c,
0x35dF54aE7134B0EE36616791a66B490800bbD2FF,
0x36161017E32395b8bD30EDB54881B7f51df456eC,
0x36496160C3482EA1Af62b087645a9F2664B93d4e,
0x365643d306c93a482e884159AC055d6bFCb1Ade4,
0x367dC9591B1F6aA30eFA275EEE4c99e077CD4b6f,
0x3683D2e384E75E120604137ed3d1a6dbF0daa0aC,
0x3696a99eBBbE43B36A2618d48D1d8cC7658FAE92,
0x36A470330Dc3f77fA2e4E182De7E6a59A0A80121,
0x36A6506F8F2067F6543339fD7af0d01d1060AF0B,
0x36b9AfFA8cC55F3fdA24BbCa5CF60aB623d602ee,
0x37093e556292726834d23Ab20f7Ae4D5f5fed210,
0x37103A1AFBc020b9f0B95Cb754eD54a13c322Bc4,
0x37174343816B4DBb9128b76C4f3dda6EA6f6CC3C,
0x37471e37F0fE0F2e56e536E1F641dF450dD7d12C,
0x375f9C4628721F14461B56Fd3e0e814d8737Ff8f,
0x3763f128f6652ae9FAD6F968F7E23D1cE5BCEdaD,
0x3777365831C2DeA922Bd9743611cdac6e89A32C3,
0x3784Be8344181e7bcd6F47E860d386B9B24d4EBF,
0x3789B2f494bC60774c25f3843Fec631E898059A8,
0x37B9917894fE2E5CDd9a6B578ca896FeCA78767b,
0x37Ce953912D7439e40fe1dfD74aCBd87315BEb3D,
0x37dC23B9DFCC8bE944759D8Ad74Bef8e15B177dE,
0x37E8d618D0de446f9e2D68511db1f9a6703705C2,
0x37fC5a6aBb8B738297cbF4622738eBbe716621bB,
0x38046a3da9498C13aE9749c5C3FedF0d4B3e2D42,
0x380a4e53398509847FC8B3ae61F767f03E38610c,
0x381E123559bce9A566f8F50DEDb8A99259aAB6Df,
0x381fFB3cE2609b02D38674b4076D53a3f7a05096,
0x3833459eEbf8BA5b000CE73470d7f7a669c1a60c,
0x3848Aa1bF1d7dd2d270410EDb18E7512C6Bf2F93,
0x38516154275F904c98D3D7f4C69f4f37ac205E68,
0x385E9B440d86f3f1414544C2e188135626C5C809,
0x3862972579A434bE020B8d1A6dF6c7c666B828Fb,
0x3866e91A3F821D92c4F3cea66E0584e775eE3f83,
0x386B81E4C4e90cb4C558724Ad5d8f5742bdeCDD4,
0x38734c9f145b2a62f37d96414C96Da06966F468d,
0x38A1340728bb1a3B61c8a7a52D4110D4f3a69c24,
0x38Ad04190cC0C9e5d0508ef82B0B22507cA6d140,
0x38c19fdA2d60B91F99D97825EFbf6513704Acf3a,
0x38e6240eE8B9Ec0AA4320c839e1C6A2c1d992e6F,
0x392f0E895fABf51Aa100E1A3555aB91f9f7041B1,
0x39532351f8eD3f5F44C762f564d87E0E1fA885bE,
0x39555642c14835F2Ce46910753FAa394eFa9892A,
0x395adC752d5137D8061d5152B39F42d34Ca6AbAF,
0x395c6d3D468E0DfD470Bb8679F59dF36EEA62Fd7,
0x398bcfd402c09A73C4DF151375f482822f34933d,
0x398c8Ba044b43337920daADfFa4570f4043201B4,
0x399191BC1bA7B831af44E64A263031406bCE9d1E,
0x399876E78336De3E0a33802F7053E10095567CC2,
0x39ae1e1F2C95B8A567ea028889219765E87a7f50,
0x39D9949576b2C884773A6b6CC8e4259f2D7f908C,
0x39DD963Ad091d1e41139635A01732d0075e6a5A1,
0x39e00Bad58c0073EA41b0dE78a5A6a3111910AcE,
0x39e8Bee5fB6bA5f67433c42BD6A0b7233ee69999,
0x39EC18525e3315454a3DE071fdEf7dB62Ba4Bc59,
0x39f2fAf6186832fD85665ceff74c2fc2B0dAb0CB,
0x39F6e1A9d0C0BfDDF54334401650973D4F2A5382,
0x39f74935B8539C0D291C21fb5A022C723580F830,
0x3A002c5821C0293954cEEA80a35D845F4b9AFD40,
0x3A381f4C0936acDB333E6780457dF34Ea432A0D2,
0x3A51C9CFC601E6192d24A33dffF394Ee8DaaA144,
0x3a5D30DC180Dd506F4006f944D5DAd431F90017d,
0x3A632a25EeF64f495704C86C20cD882Ca544e60c,
0x3A7356978537d9ED06F33210c0D73135A475cb46,
0x3a86F981BFF1987B27242d1dd019727C68c1cc47,
0x3aE032CbAB36537890E89688DFBf8A65FCCFCf5c,
0x3ae7111665b2790Db4c4e326fb2f707e2557dE1f,
0x3ae85998c25fd1673Bfa3906BE2cC6a0f1EfA195,
0x3b104D633639841Ea5605bae1467Ab21208c4282,
0x3B2788d50aC3dA591f2c21d40412543658d23518,
0x3b30Dc444b1312917052ac9e49a44dbC855276Da,
0x3b7232fCCCB2988b358b20f2FDb499fC5e1FB0a9,
0x3Bb1adcd1556e26b44049347D801Aafcf31d0C08,
0x3Bc29Ca7ff3BB9a205A766D31C1CDd6917202734,
0x3BC68932EEa2b4baD5994f276b2E262CC564D3Fd,
0x3bE292754cA109745feeB31CF5a307cfcfEc876B,
0x3BE7972308653c68ec794F7F2cC521fF82dc5242,
0x3BeA636d4742abdF59DB63Da369DD807561712ee,
0x3bEB3B012A8aE18c36212a527596AD63b9e00c98,
0x3BF76665B8f364B285B391Bb9fCf17dd10d2F427,
0x3BfBdd05F0FB792665ea6980ADfcA5F33fa0F9bD,
0x3C1F490Ff7ac7133f827ecA62ed6122653Fd7018,
0x3c258c12e05b9d49b81D01cFdA68a36F9635f3F1,
0x3c28175650618CEa32079b96bE6E66B1e8B70AAa,
0x3C3859Ec7C4Eda631DAB9882b3DBc438825ee9e0,
0x3c4886808FdF4C629833435bCbA5967EaA9DBb13,
0x3c9102fCF7d5B7EDf2814D728a28fE400C617F17,
0x3Cba8932F4718636C9522670C56F5fbbf943A506,
0x3Cc134eE094aB478244A3F990d2F933B2Fc8Bb61,
0x3cC75a5C018Df322f270b868460eE3bFf2118983
    ];

    uint256[] public amounts = [
        16059317499347500000,
15122290137423000000,
48,
164412128702877000000,
139417242337184000000,
119198377195270000000,
141055910036455000,
129174538613606000000,
8532588338181440000,
1409663228075980000,
504256674728892000000,
5683380233904010000,
656000471973387000,
115871219186904000,
2510276086665030000,
12988842611625200000,
697086211685922000,
401211841837008000,
6815954069817900000,
1824894098205100000,
3614521097630710000,
64834181288358800000,
318805818900285000000,
23488974138458900000,
485331290139482000,
74337476773614500,
28222994561329300000,
201432602073735000000,
119,
194051444019709000000,
3104957199877440000,
5954685003418750000,
1717491526485120000,
4265187982929830000,
7764257775136240000,
1331416075354470000,
19623383116025400000,
109055265117086000,
49673847084582000000,
11477094088459300000,
564536559434236000000,
5932516500018850000,
4947203996303810000,
35112490662698300000,
24306420489805700000,
8180557200723770000,
177028110269266000,
2199621255424230000000,
1640217592195770000000,
3126165976066660000,
178144254097513000,
748722227366361000,
101379757826382000000,
503967513041081000000,
30981609408263200000,
1241169051743900000,
1166143281882640000000,
504256674728892000000,
1394172423371840000,
26444063042448400000,
3339817494210770000,
14806606031564400000,
648876295099402000,
35064675712178200000,
5585417985325610000,
40844842176534100000,
40197304389497200000,
5989777818930890000,
2799424309298970000,
8872085764194590000,
2941939820862960000,
22741430753947400000,
3614521097630710000,
18260457313199000000,
9800440023081330000,
243309081542024000000,
1290900392010970000,
361672038043756000000,
7667042917796060000,
4001791215234000000,
8597315506312540000,
432244790258397000000,
13588007185188400000,
2868483943079730000,
1013369805032120000,
3491724736168430000,
174121041657838000000,
1703988517454480000,
64438947259380500000,
13950465890501600000,
23335915056895000000,
27583743609805800,
19986855861458800000,
4642011972983610000,
27831196112753800000,
4853785473961230000,
1115337938697480000,
3201,
129090039201097000,
9736564536621240000
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