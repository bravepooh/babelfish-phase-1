pragma solidity ^0.5.16;
    
import { Table } from "../Table.sol";

contract Table_11 is Table {
    address[] public addresses = [
        0x3b9988E318874E5a2fBf32e3521951756d4f43af,
0x3Bc29Ca7ff3BB9a205A766D31C1CDd6917202734,
0x3BC68932EEa2b4baD5994f276b2E262CC564D3Fd,
0x3bE292754cA109745feeB31CF5a307cfcfEc876B,
0x3BE7972308653c68ec794F7F2cC521fF82dc5242,
0x3BeA636d4742abdF59DB63Da369DD807561712ee,
0x3BF76665B8f364B285B391Bb9fCf17dd10d2F427,
0x3bf921cA43e9AE4Dbe7f09413DD76C5332E4aA95,
0x3BFA3222b46318361649A3f35F624A6fe6C46571,
0x3BfBdd05F0FB792665ea6980ADfcA5F33fa0F9bD,
0x3C1F490Ff7ac7133f827ecA62ed6122653Fd7018,
0x3c258c12e05b9d49b81D01cFdA68a36F9635f3F1,
0x3C3859Ec7C4Eda631DAB9882b3DBc438825ee9e0,
0x3C3a0E6270F430783Df39f38777fFc06422d99fb,
0x3c4886808FdF4C629833435bCbA5967EaA9DBb13,
0x3c4C7e790a7dAaCEBdfdC646F09D2F420E7E6bcF,
0x3c50fE891427f27127aBF0029eB540cb5BA91e57,
0x3c5A49179A1A5FB813F456dF0F60DbE88Deb581A,
0x3Cba8932F4718636C9522670C56F5fbbf943A506,
0x3cBBD68560a26bfea80F3d122b22D0df5280CFBd,
0x3cC75a5C018Df322f270b868460eE3bFf2118983,
0x3cE2998DF034E8424c14c23E7ffCF76F117A5f7a,
0x3cF69412D27D1cC4BEaFeE59Db5dD5b3C70400e5,
0x3Cff9652c9030d13051Bc1996f8DAc25DEd4b4DA,
0x3D11F69dD7e1CAC2317f3F9186aa5911F4bb00AC,
0x3D2Cd8f7CA5CaC6405b5395D2A732aFE47de253D,
0x3D396c0724327CcAe085220E8ED983387D1F8fc8,
0x3d3A8f1215Fc89f37ab38d0d3088E5AdD06C516F,
0x3d91ad906C3969f86C588C988F721d5a735c6f81,
0x3DA80Fb23A48e5f2a46cd5B34c0c5936aeC40fc2,
0x3daDFBce997FAf62fBADff8D1EFa5010bc7C052D,
0x3db74E2D5C7c456bEBe514fE78FE6a948549D685,
0x3dbE81dc8C9FF0CdEb128c5C4303d69362245147,
0x3dd546e60456Cc06d51687DAd722A734B73C0bee,
0x3de1F5540174c4dae2930f6Ec638ACb8AEcE2204,
0x3De5f6eBAc3e592752de1e5bDA0253d05AA9C900,
0x3De8367ADb171D1F4B59c5a7cdd4f2eFE2942a35,
0x3dE9bFeEAFcd62bf094D9991f79e93Bf40836C9C,
0x3df844961fd97cAEe15AeE528d318535bc1b4bf6,
0x3E07d3eA58525c9a3E8Fef87fD3b7aAa6dcbcb5C,
0x3E07df76bCDa0f20514cAE0350E123812438A998,
0x3e39235C3822730C0d9F62599D3fDA5cA1366e37,
0x3E399C3434aD4c7658e953766fA1acbE43Fb13e6,
0x3E47e782156bd412De28CF9c66dE07FdEb60faEF,
0x3E53408fBB36bFd685888e19152F3FEd18c55512,
0x3E5Ad6Fb8893800C742A7F21BFd7779A98215218,
0x3e700B9080778cD7EB22650e2CbF3c337210f365,
0x3E8714617202aB0899395c453AeD5D50B5749e10,
0x3e8ACfF977fb67220e06FAdDb8e04c2E1AEF2a31,
0x3E8b7942f67139345B2BCcA60B3c8FcE2819428B,
0x3E8cF9a7d7B00D65aa066621D37a1D607C19250E,
0x3E8dA3Cb413BFc7CA654619194af39e12103C6ef,
0x3eAE8e3f200cA9A30C63c6bDd739d5D57Bc9CE27,
0x3EB37A14DeA5ea795FB311D6042B74b1b08F92fb,
0x3eC7FaF79CFefFeb7fdA159E9DD1B090B0070D5C,
0x3EEdBaC5A170dFB6c583934AD2a94AA4f13A98B6,
0x3Ef3C8CA2f77dEBF576a6b4a4cCa15980a45EDa1,
0x3F03fc746CdA058B62279a795794ecaD45aae724,
0x3f10aa7B6C135E78BBBc572f139360362E063e3b,
0x3F1A31Fd3C0538DD5FeCC9ddA658dBdeB562b5a0,
0x3f1b55EEFf9276AafA368980633B29bFB43C0007,
0x3F1E282AE7eE431b7e20675c6aa95dAB9b727866,
0x3F2A0DB4cFF87A135Fa5001Df787B8b96d488A4e,
0x3f3fa4D15E3C2C38A5C771B8Da9250c777C71961,
0x3f516d830A9C18C6c8e77B097316f407DD1BD9Fa,
0x3F5EE05Fa1Af36ba7aC1e1ABeDe7F08BaCdD1B5d,
0x3f6Fb29b4C14DA8a90E001A4FedE74E0f8acBe69,
0x3f9Cb9a38f26eE58De78A25F8e011E582dbaCDBd,
0x3F9e3eF417334d21b902502E88fE12db6C5A4C13,
0x3fC941132AA0dF2eCfC950a6cb6E7eA04C18772D,
0x3FCb4FDC45c01344805E41Fa413828b76bEcA719,
0x3FD5AB08072d132D5aBa132a272896ce844B131a,
0x3FDFB770b71d02f5905D0ee4EFceBa4E0592930f,
0x3fe03E171Ec5639719746Af4195D39FDF54e6018,
0x3FE786eaD512737F8acaf489e645D4eA5378F8d5,
0x3Fe7bDDDbc54A0fBeae21B5F3FCFf6E26356C77b,
0x3FE9B3A4180C2e8C876F050Be94C92632392263d,
0x3FeeEe369A581F260c5CfF186D8843fD7BAeA021,
0x3FF158629291b758332D3f85619026477fB18240,
0x3FF642FCD73381B9D6D65a9B3679A3D7c529b40C,
0x40003aeD7795650193e8c149aCbF7b5b9A395cEF,
0x4003EC66153c090ed649CE822E30CaBa11727527,
0x40065aA98429679A899618da09ea2BD71752CA9c,
0x400e05172f576eF22fe0c70D28C197E5Fb89a64c,
0x4022B84C8BE29fb49025c53D818FffE3aaa83A6A,
0x4027A0DC8c6e39823AaDEFD5402a85E39155eE52,
0x4035fED042B0069174B5C5452Ffa10e638178443,
0x403AD49A15edD528923Cef69c6d252208AB6549b,
0x40469121F023e7EC8252ad0EeA05c31234c3E2c3,
0x40498B0dc1fB800219AfeC728c4A10ac93276730,
0x404E0D948c27b34Db42365FF2C26b27bd9628BF7,
0x4058b62f933A78bECaF48685B6851cc6d09034F1,
0x406Cbb7824D6824d5fD30227EC02Ffa2D2970aE2,
0x40932A4c4b12D4f7A77091E2c140E0A7F94E999E,
0x4098EcD3d1682E9bBd925F49229bDb8594f42F6a,
0x4099fc07Ca4fdE95ef67C15FE034F12A03B4C49e,
0x409c245877928C8dcEEB7228FAc032e53CE33C12,
0x409C8C9ea976ED4914f2e47618F74C5C53d9Ce47,
0x40A6369E84392Ed21ce556239F78B56b28880B2b,
0x40c1a7e7c2858389B9032438AdfA497Ab34a9AE0
    ];

    uint256[] public amounts = [
        274357493715395800000,
0,
867181370176926000,
22451292939065288000,
378979095779552180000,
1458171627376226000,
35539576039977376000,
2545994628575400000,
349627749335986640000,
171160725583551218000,
248118909356636000,
69362186928716326000,
0,
30007401626514708000,
39576607224960422000,
6132412866278034416000,
0,
89362178918455568000,
0,
1862600363004427726000,
64546555681440014000,
1420162425779999866000,
8600161578462776000,
1797514685689182000,
20194575254539038000,
38911633793899782000,
386412514651141706000,
39451829351814200000,
106386799398807548000,
2158001002755000000,
49228297166093900000,
761200479675956224000,
5729464405066266000,
0,
0,
1032336061024942082000,
7290858134881130000,
25441816298981752000,
593351706056442604000,
2283724088234896000,
0,
126701837120120996000,
55924630010181388000,
37259721531396754000,
16056661949021862000,
1298269415465945818000,
0,
2980936442831492000,
658702494746463664000,
14698319738474920000,
12593288945107600000,
203320933597719200000,
36132735177173400000,
10829711493748331100000,
47487251122890194000,
610211445128200000,
42664656040993970000,
0,
36132735177173400000,
471694112778716000,
577845572574965144000,
2088905340247482000,
1316463234981571002000,
6063049984945986000,
211620055242938618000,
51765663046486766000,
5109467679961470000,
196959973171350000000,
1120149711748242856000,
457233559533791418000,
0,
29661660298389700000,
18932968726094004000,
7872495641301100000,
7812758172065062000,
27014787269299200000,
86731841853382824000,
151882615787595278000,
520636382748730676000,
2486339736295192806000,
12267347580151100000,
63568508464966334000,
28414130799328102000,
198426576145874938000,
43507670129723122000,
60850755522158222000,
0,
20411027356040644000,
207559233423703900000,
372764756772398844000,
385770480364516262000,
183540648816155400000,
1550070388731092774000,
52246842145370710000,
256496940132240672000,
1633484464092216042000,
1317790824023650000,
302336406540005220000,
36187109201494604000,
795050715697316000
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