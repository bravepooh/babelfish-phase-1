pragma solidity ^0.5.16;
import { Table } from "../Table.sol";

contract Table_6 is Table {
    address[] public addresses = [
        0x5bEB67076Ec368d4c496fb52103806cb403Ac154,
0x5c1f6A7D1cc457999998dF8F7202bD03bd72cD4D,
0x5C839Ff08e4d47C024820cDfbfa979aAd283Ba3a,
0x5C9359DcD2C749c368CDe85dfE9A5230d1760c47,
0x5cB8fE75BbDc1d6fAab1E04dE081aDBfff9515bc,
0x5Ced63773493e854278716Ed45dE8BF1da1d2c3f,
0x5d1D6f7EBABA9e1b2ec0Bfd82c5a68Fd16212648,
0x5D655D6D1F5150832245370a1c2Ab85B410cd0Cb,
0x5Db8EFF3Bd353f7F676f3444d4dA359c97F554F5,
0x5dc52Bf79Ea83eFf9195540fB0D6265C77Fd5e62,
0x5Df89a63c746f7e6117953DE01DEc6e16C72d3cC,
0x5e4B9eE7Bc57D77e13b050e078885651B4D092cc,
0x5E5ca22F828aC31DBF7e28dA67be2aF9213E59D5,
0x5E763D07cA49BA1568634135e901378a802f966F,
0x5EfF68462EfAc9507e74C912A84f495dc22578FB,
0x5f2491ba76084aD876B606adbbafCD1B2a69E741,
0x5fF6bC47b41c2a77b5b89610D96b0F1F32208970,
0x604eB5D4126E3318EC27721Bd5059307684F5C89,
0x6072951b4d2E87ce12d0C925B81Cc780D47F3F72,
0x609F10EF05e5b068382d1a6D68409b437160d064,
0x6145Ef246F7A28A807BDbb2cd3a442e9A32097A0,
0x616cC7A216dbB411f0632e6b65CE2B1a9d9A05f3,
0x618AC8b377bab03a9de2B5BAccc226ee452dC738,
0x61a7c53E99cc92D260C19e810ECF825feB1026Fe,
0x61f31cB9c938Ad6fD13B18124EBfc278626667B3,
0x61FdCDcC83dBdc724B7547A38d05bEb40fd53d1f,
0x622e7F02a9B078AafC119C59b4b584758eBc0e5c,
0x6248BAf0e604D0c10d761ce1eEef600aC39dB0e7,
0x6249B213cECBE60f9faa45044B07CFCcd567ad4e,
0x6298B4449B0417E88Cc3a63bf9322742C4A2Ef33,
0x62a602200a1836D9773b549feEf634169B4347e4,
0x62b0A9e1ec4a70e122609aA6058DE61c044587ec,
0x62b95432f8aA1001ece13FA5986060cDFC134194,
0x630CF545B04b6458faDC98654681456009f19478,
0x63146c90F668C859c4f8dfe720bc5d808342778f,
0x634c2D8586fF437eD40f45acD6aa35c2E0E55fb2,
0x639D2df11eC5C33D2a659693c2eeF0fd26192208,
0x63b68919A474e9E9633FcCE41c4aeF18A5e2B3ad,
0x63bf3DeA87743b197F5fD37e5715840e63A882CD,
0x641fd2ac22cCa79a17DaEc8Ee8A6deD238B17c6F,
0x644836Bea663110bE0AFb0b04dC1eC7492dEb14A,
0x644d697906cf66DBE99192c83d721C80EE68dd14,
0x64c12341fd751d16ca5D2701a4487761069D1756,
0x651ab932EEfD8F28E04026aF95a9a09BBb7Ca4C2,
0x65A0C57e35aD53A7F91FB3843ac4b15D36cE2d65,
0x65Dc40075DAd90a6150015FcEDb157b79e379a98,
0x65Df8D9B1b6F9F702D85200012Bf3766Fecc1131,
0x65Eac40bac865E493F0498CdDCB42c66aF13d3b0,
0x667CA2e6dE60dE702C22752fbDFD1487EDbAfdB7,
0x66DAd3B84a2De219ba2708DaB48e202F868Df8De,
0x66de3411ADbB675f7791d1f337971976aCc39398,
0x66f6794168b6E0c8A55a675ea262625304E755f7,
0x672a6943C6DD3bD810d5591bc9A6e86073f51c14,
0x67611d1607F4C712fB12e2B5e2a855f8Cd8dca1D,
0x679D6da520cB661458C9E3720fd7728367cF4EA0,
0x67AF041E45C34Ba7917A4c64dDd869b10B4b260F,
0x67Cb02e30F1FeB871bC19a9c16D0C3DC3E1D9fB7,
0x6826e4F89CA3763d9cd5abFC418D4353F6ac971b,
0x68303a858D10f9cfF32373e3f5Ca6B2a13Af8c3c,
0x68bA0C946f3b33efFBbb2D0CD751BCAd3B2D491a,
0x69325Dfa5920643Aa5B9059a0E475c6d0490d25D,
0x6953DDf534337ADc0C344eBd9bC8909dced2D7B2,
0x698Ed88b34bf29850a8c11a3d32d03E94414FfDf,
0x69A77564529f1889d1Ee6F74741177B08B2fDE55,
0x69DA117B401290fc387D0Cf8bE8E8B6f42Aa311F,
0x69DD8Cb57eC4B27Fc1718b2F5250a96F1C7fB90a,
0x6a006569A49eA6de78bf72Dec52D5f2bf9F208f1,
0x6a025C8E763b667800BCff5c439c3F7d4aCa157E,
0x6a4DC5b4b5192C33717dc77F26Aa84d08079d56b,
0x6A56d365de395cC33368CB555Fd17A2CaD553065,
0x6a5748C87A03a721c9eE0d81fC51B5E9755570Cc,
0x6a599aEf3a4927D886a369D9C1b6566942e1a3af,
0x6a85bf836A4a87acE31aA18D04761287555a178e,
0x6B0fB0B2eEF4FaF71CDf49b157a5105Ad1fd69e9,
0x6B10E7ef8C3eD64F4C7FaB67d009A7d2a7F31aEE,
0x6B531dEd049757AB246D8E8A83c4b0bd210be43A,
0x6B6F71EC9e804524D14b0Db51E133362DB3137C2,
0x6B9E3eF4de7E676bD0Ba4BC7b12596A983531103,
0x6baEf39430731EBB99216aC7Bef0932d76Af63f6,
0x6bd3E8ec5471b08cBb44935ACf460e98C3466791,
0x6bd755dc0d5f8d3740B705b76d63074a4cef1B95,
0x6c1eBdF04F137fA2aA6b7e98D69e99Da5DF1151E,
0x6C4a6628EF83594FFAeCD21Ad36A85203c05f0A6,
0x6C536F49e8056a2664D2ed1A677Ae6E0077EC190,
0x6C54dEE0A69E004bbe0F64c377278c5114e79fA1,
0x6cA4197155faFd65495B97058635B092938A3C76,
0x6Cb36E292d1A590603EBd822d8c826799a1Bb836,
0x6Cd33D7653D8BcC657640C7E06Be8602BD7b2266,
0x6CE00156d3ba5BCC431742C8c28aF7df49A09215,
0x6D002E4a3B04fb275a52A28b286B2AeCd1cd53Bc,
0x6d06dD922210C87DF1F532B4805bAdf782e598B9,
0x6D17d98F96a3B08A49a4FF75312E8B0b86b33E2a,
0x6d32B62cC6435Da223837414eD39507BAe58Cbae,
0x6d6075b67eA8A9bF2276eC42dE689BCC59c2E65e,
0x6D9A4667e14783282517D0E3EbECf29da808c6de,
0x6E2b36Cf032f1eDC6f1772141D338E8911627FA0,
0x6E34Ee52c32Fd0a8abCaB20798E93fC377a98130,
0x6E496a605B93d1332b3E07CB1535365EBC50bBD3,
0x6e4d7FdD7Cae2A616B37a44f0E090A281120D1C1,
0x6e5ba5499bd4BBA442Dc88242F9c7929AD3151eE
    ];

    uint256[] public amounts = [
        21241855586378700000,
6914772868513790000,
9314667978978310000,
191085746513488000000,
202961206133459000000,
1012603499092320000,
1398693646115220000000,
84605232867538100000,
36358755737223700000,
1250129718275370000000,
23488940276061700000,
4988545909582430000,
1079316145922990000,
10619559235524400000,
22517025129204200000,
24253080375655300000,
134714121507743000000,
1576228748787820000000,
233176279007657000000,
971656403322357000000,
11154206025706300000,
141629399822066000,
5496964167860330000,
11250455551832500000,
10932090139661500000,
1710636936172560000000,
51111787065911800000,
353488104805259000000,
431817560516627000000,
74127612477441900000,
51823953003894100000,
49641069209344000000,
802769042560972000,
640199650862032000000,
139977273315155000000,
34435142584075400000,
3155039097221440000,
1031291048285660000000,
3139456860354300000000,
93358520829052900000,
1336693160417450000000,
1215605686702260000000,
1269784396422360000000,
124327679679241000000,
14905090404123000000,
269224485187441000000,
143110998191932000000,
77864982636647600000,
69700360933265500000,
418286330321307000000,
104041893056929000000,
18881466060945200000,
71585209857232100000,
4462286691110810000000,
2284267519402330000000,
6505740355840490000,
277875367117509000000,
1742277688497700000000,
1026044481461150000000,
235460422742654000000,
912233250288914000000,
1752208104772970000,
1553614918976210000000,
80339614070310000000,
2591593396744920000,
30656782342821900000,
25650519338014500000,
29580513099979400000,
64712537539356900000,
48552006993832900000,
18094066309843000000000,
527590400659951000000,
952085848723823000000,
51579073142886700,
33017596111172300000,
68691290478828600000,
5232558248145480000,
68723885993648700000,
20474594884107000000,
68524346956712500000,
20280861128214200000,
1763508415801010000000,
6690727893378280000,
4682790089347960000000,
846156445772480000000,
366951277415210000,
692183076096738000000,
108632002156161000000,
1414479281561020000000,
177952800256531000000,
48071982233095800000,
24919550608065900000,
1970151443224200000000,
3593907660137280000000,
2691436445965130000000,
36303575055132600000,
53116709983513800000,
34345338733738500000,
42433779277005900000,
1460828772282810000000
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