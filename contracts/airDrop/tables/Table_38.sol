pragma solidity ^0.5.16;
import { Table } from "../Table.sol";

contract Table_38 is Table {
    address[] public addresses = [
        0xA744767924F50c946D1f3B64a40B404cb3664c99,
0xa75F3902EF9b5217FCafF4A910f60A20925e450f,
0xA7659267ecbb5Ec91a14dd3Bfdd538D3F84A8034,
0xA77A26CFC17F0eBfd11C42bf06F0bca2741f3a70,
0xa7A90BDE26A3Cb6132D07AB1fB0B8845C1401aB7,
0xa7b97AED602643c0DdFC82C152108d597452ebc1,
0xA7BC4F5D1205161856EfCa9142A798F1D80c4319,
0xa7DbeE7f9CCDd8c91B75067CD31cF0b6d594fbfb,
0xA7E471134c447a473d82A156D9f242FCEf8b929B,
0xa808903c900e9a51a919d0c91cDD086046CBF671,
0xA81Ea58d0377AaC22C78CA61c631B7b0BFf2029f,
0xa8286Ab299D2F115F0c998dDaa8b286eFc6A3E07,
0xA838387F798671889DfBbb3C7a72E8B39541fDdA,
0xA8464163C114FC35bC1Ff4Ba7DE7E9567F9379dF,
0xa89538f7ED2A93C9de110b8d58092307Ce712B02,
0xa8A762ef90B1482b3AebdE95D1A643f6B38eF1eD,
0xa8ad799c5C82460fB67fAF214C80d62269b09A9f,
0xa8BA5E97DB500655c18A8aa3FEd6DA5d6c8e868F,
0xA8DAE124096797D15C4041c43f9F1987B27a5fe7,
0xA8E65865Ac68e8936EeDd07e929f9B00A0de90c7,
0xa8EBfA9253EB37E0e9c54Ff44D6C29c28Dc5Ca45,
0xA8F6beA3b05eEE52a91FaAf859548473391248B8,
0xA90ec5a79277dF482d344c2a7D95BaD9305f69d2,
0xA93Ba26E8ccf94cbbFa308a7eF2d4f8F2caF540E,
0xa94454D6F5c90Ad18a2849275c04229E8354f391,
0xA97E3D39843c3454A4EC576165d6Ec1D9EF5E1bB,
0xa99Bed15Cc0AFd4fa13b0c89bc3D639E420c4Bf9,
0xA99C3e0e1D47Cd2fb62485A41CAb8Ca8F997E35D,
0xA9ab5a5E281d2DD0BA54bD1c3d95206ac7568CF0,
0xA9b0c16b23F036e5a5CAA249C301f1FF431E2A60,
0xa9B66050b923856E74c7868D266187b852729049,
0xa9CeF82Fe881b4F3e64C441d694f20c763bB0D95,
0xa9dbA1DEf83d92Bd2CA313DD449B514663a6e4e4,
0xA9De539a8965BAf21A19B95F802Fa59C19455015,
0xa9E3Cb8c8496d0ed9c7ADD3375D32FCF20fD70dd,
0xA9e8A657487C0A234F1dd79e52b53d9810f84baf,
0xA9F3830D57906C78EB5Da90bD8EB442b041aD1aE,
0xAa009096F4dea44748ae7fcb173f01EF92384269,
0xAa06274aB962c7fE31CD3244b85486ba02294844,
0xaa26cB9e66eDBAf69FeFC3F0847493fcec923734,
0xaa3C2fFDE0A2EAD16cd17DD820Aa0cF4A5a308CD,
0xAA45c7C94d3Dbf09e156906d606d8BdCce5c40e7,
0xaa613983FE3B8f56FfEe62b0B5eeE298Ec411b74,
0xaA63442D1a0054CA5AA5fa56ed5e4dEe87b504cF,
0xAa6Dc278F8798De8Fb00c43388428A8b756411C4,
0xaA7530686b5b9144D56b47d058Dc0330CE1EC95b,
0xaa75B8C9E01Ac2e9Fc041a39D36a6536540B2072,
0xAa788Ff2F5EB331F82a30dA69a2B3a18F61725F0,
0xAA80fA46977A32FE8f69F0e3765CD9197c1e288E,
0xAaa3bDc6563c144eCC0222a7eFBE88aB9Da54C28,
0xaAB94954c6cb8750578E77BBD2Ce603a9ab35A25,
0xAABd24Aeb217E872F8A58968b550E2DC945388f2,
0xAaD859940475f3c088477b59fd09C614ceeB57b6,
0xaADFC3502754DeCAf651F21f716aCedc25b0C133,
0xAaFD308B535BE3926c2A8FF22Ce9F9039107d2D7,
0xAB020AB81d5d190A83880C0F24De769be58928B4,
0xAB068b99E95c96aAfCB007b36C919d653aB5046f,
0xAb0Ff351f6dF0197e8dd733EB7D00DA3628d9E34,
0xab33bbB308BDfF807f2Ae3Cba8eA4df1563B9415,
0xAb3F19f5ccB7E4780F0DaeFe1781BF9CacFAE973,
0xaB4a94857367AA0df7818b9f52ebf514289906DF,
0xAB65F166635FC971fb0E8Aa9d0204EC21Cb67B80,
0xaB983528f2A152A01385d67111499aBb7166C488,
0xAbb98eE5c3dcCbCE63Cac4fcE83b55889d8344dD,
0xABBDB0624d25BD1CB49b1c3bfB0d2e4ea5c30cE0,
0xABBF8a9D5B5BfB455890c6c79C139fe1f6e95D42,
0xabcA46C0Ceb48C9dF280B20D8D097D45290D1C9b,
0xaBD64F6F5E91D42379F0d2F53606B98597AA1721,
0xaBd9Ccebd132d2D99ac97cfb95156bFf9acFFbDf,
0xAbf66b500B1C8027eFB51910dBda297A88d35972,
0xAbfB9C6e344aD3b2b41C18E3821cAEAb83EBB390,
0xac05bc19982a305f158DBb0855B163f949548811,
0xac111E501BF5540E2E9339E20BF5f42B910C3213,
0xAC17C6F9a345950D8b5Bf3eeb6DcBf7B112113dc,
0xAc186B1Fd840Aa1CA0936f834Af77017F5F4ECAC,
0xAc318AA66dC5445D48Fa01b5a6a4fcEC5cafaC6e,
0xAC4BA08898213273B62045d4031F1273E33F4163,
0xaC58E8b170491cd5b219214fcC96268CeC8c06aF,
0xac84B87E80670c1cdd88d177F1AF9AE0beEF4914,
0xAC988B93303bdB8b16B4971b089a36bDB2F6e127,
0xACACeeBd6F6f224e9A9f0A62702AaAa0a4385fbf,
0xACacf1Ddc60e7d8f7952d1469879D510cE2d25F6,
0xaCb43F6FF53e3C20857EE47e78c3E20006c2CD1E,
0xAcc5c59d3644477de86337B820E3eA58f9977E9c,
0xaCeB022968D5351275d7380CEEFA7211764A5376,
0xAcEE405817131e247282F03569ceE69d58295009,
0xad098B92AF9a7347cbedd3Cf02819A35A76076f4,
0xAD0A733AE4618c460b4fC646D574E5022Bf2D08E,
0xAD1F2CdFB1d3d596ECB7fc869d37c02954fc672F,
0xAD25005f53eF1e89bB5f53C6a6520b1C6bBCF998,
0xaD334dFA23A2b06d31d53092b9E429BB2EeE99A6,
0xaD5205fc6ec6656bfB1d5Eaab8A6813F962e5FFb,
0xAD5FCaff8fbEE929607ebF82664d6e3B6eE496a7,
0xaD94821279599cf33B13f598c385f85cD98daA8b,
0xad9C31757aB2F8C4247fa3Bb578946DbFAdb1c3a,
0xad9ECc0ef0FE1f1b68B9b496cf5f8A93D47fA1AB,
0xADaB2B23467E90b6e7168a5b3B2F6e825b96C9e7,
0xaDb8F994bBce44db218Dab4972f669643A6BdD6F,
0xADB9C4D8c481e2174A76Fb3DE55226Bf40CafBBb,
0xAe18fFbC542a27197B2EDeE3066Dc90220F779E9
    ];

    uint256[] public amounts = [
        18670179904101600000,
6650613843603430000,
35484425654636900000,
86013849308207900,
151005923519290000000,
28916168781045700000,
2548024271922820000,
10069027926724200000,
1426535444019430000,
139661576219162000000,
3005721510537090000,
11933859487402000000,
14052762131850900000,
97868240395951400000,
26206238190306900000,
259903753946168000000,
4695220203274290000,
126095150291631000,
54313239821438000000,
985764276573515000000,
121015553674342000000,
13584506277241200000,
4866289861751180000,
14199904312120600000,
76168286730215100000,
57125974690544800000,
9775453783686220000,
180726054881535000,
129090039201097000,
151276016455042000000,
524998862227724000000,
604717306174420000000,
10543345694219200000,
324945870030035000000,
660941000709615000,
1234479238682440000,
41825172701155300000,
20,
2269638681719870000,
64395278924818100000,
1350447810193180000,
1970314443290050000,
1748883461370850000,
648822600643316000,
5259756651245710000,
511196555236343000,
44282117599261900000,
616362673330218000,
27490472878978600000,
54950610603896100000,
4685045528550680000,
646482916319092000,
5069372809131860000,
74593190692225900000,
597319386560366000,
1023381268361670000,
449233336419816000,
54,
14077617505160600000,
73489039407808900000,
165143858248253000000,
6187584349332790000,
14594912058816200000,
3859469630361240000,
748722227366361000,
57596391952041100000,
2737163672203570000,
481228498026491000000,
93448485921736600000,
7179412007552410000,
16032982868776200000,
1626431025685600000,
185654996852107000000,
59576666775469100000,
5056313269871880000,
1792688574391850000,
1799515146463290000,
29440048355221000,
2557024380005540000,
376556811145352000000,
34469516089063300000,
20251645349868000000,
1255227766928940000,
8519942587272380000,
154783781311334000,
9998238528745000000,
8752614473928440000,
227198468993930000,
2943252893785000000,
129090039201097000,
14508218419497100000,
1739828799562820000,
588241063305186000,
95728193280494900000,
22380817590806400000,
112475878078125000000,
89583210106587800000,
23812446341941500000,
1729806525294700000,
1001376156608270000
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