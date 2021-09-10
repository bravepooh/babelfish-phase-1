pragma solidity ^0.5.16;
import { Table } from "../Table.sol";

contract Table_42 is Table {
    address[] public addresses = [
        0xc56eebfb0F82D7CF02CdB6999EDa914D02e8c62b,
0xC5839Dac53e2BAcf909127A66CAB1f6a74bE4C99,
0xc5Aa161e780e3c2c7834F4969C86e0a97aeDE24B,
0xC5b93182d5AcdC93f468D03aBC0B093C9116285D,
0xc5BDa6FFd2de26e5De33Cdf04429aEDd6081Efb9,
0xC5c62B53D2219eD6B36446aeC951c423d5654Bb8,
0xC5c6FCd2Fb507aB00C90C58a2094AF28cd7Af1e0,
0xc5D8336B3a02Cfc04552eBE5eCCe82B22b99616f,
0xc5F21BcaF4d8Dd0468b0eAc9fC0FC14DE89a93E8,
0xC600E7C946cf8095033e2f955cb1C89a5fa05977,
0xc62303907CE7D7b0dA69d61c7b16B739a039640c,
0xC637E72167f63c1b2531F4B0358C97275F478bFd,
0xC639BECE23b46b968B721C276fBC0df907D4202d,
0xC653D3405cb3c8a5003403279a225a5704e4Ba12,
0xC67AFE04a7B66907fF8320C40dDdE16F91003F3a,
0xc69633aaF814969010E3f8755c1d598F305A2660,
0xc69f8157D5A873F98800dBcd86CEA868dC4B6e85,
0xc6aa0625301B8Cb6b31086C3660Ca90Ea41A7c9D,
0xC6AF98A0B995397B56A5022119D4593950cEFd9C,
0xc6b1105bfA147341E6Bf77C95726F76C9Efe42D2,
0xc6cB96CC1727eC701E5483C565195B01E3C1da2b,
0xc6d1bCe351C25c749Fe3b2a5E09739cEFF04Bc0F,
0xc6d37AEdfEec795FF31a02012aa7E3a05Da9a9b1,
0xC6D74688e59Cb9Ea1295fBDaCa08e145E605b289,
0xC6dD21f85A530Af4D2B49b419FF22E5947d5FBB5,
0xc6Ea61a2134A4E171E69A0E29c35E20c90CB3A8B,
0xC6EEd518b74158dddC2BEF7619E4b4E5EF379286,
0xC6f66cB792d07e85baE1554e76ABFbCb32001E4B,
0xc6fd276ABc8677070c1Ee0b4d3f75a641348ae23,
0xC756c7d6c4fdAc1D817d8E69BFBE541ae2242945,
0xC762e8fDFc2B3fd83f5A0ed77DB1851955Dc993a,
0xC76e5a4Cd2DB861b94b7f5091c1B30EC86ab7147,
0xc77A1A688bc965C81c03984cC202A0B112d9a097,
0xC78a2b33C05ae76b2F2f3251390dAC7Ba2721C5E,
0xc78e7731dA04aA6E6ce730cCA7aaE517523f49df,
0xC797c126aeE0739658793b9847a95a55b2A7E820,
0xC7C9B825CC504792ef7e5c407b2aEa4d4EBe2b8A,
0xc7d23FE48F3DAE21b5B91568eDFF2a103b1E2E6A,
0xc7D27F59c037Ea62F6bAe676Be0C8ba58123E9BC,
0xc7Dc3d5B06d0Cb817B96AD8A70F237417D8Cf782,
0xC7E1090d066Fe3066797f431D05B8c16CDAEac65,
0xC7Ee90910Ee96CC5b5D33352c2FE1F1BFe04aD14,
0xc82E96e298fceef55B77d8099fE5d71fefefE8aB,
0xC83a0eCCDB2d2633F3d300aB9934388E4A918328,
0xC83A5eC2504E7c8c541f6ad5Fd1fDd004b973228,
0xC86cB6194613980A9cC03E0776d1400dE5943c8c,
0xc88EbCB1E9490bD293774f18B1e426b8F87AD524,
0xc896E266368D3Eb26219C5cc74A4941339218d86,
0xC8Bf4f837DC2ab91362B5a43D0B89c58539E783A,
0xc8f0483dE4C87Ac8b2b0868c9D875cfAEbf88d49,
0xC9074cCc5c1b017B3479a24ebeC5D3c7feeb54f4,
0xc91895734Edc7c47CC5c1Fd05034DE9982BEd464,
0xc948403Bee7e637F27C59c1e7cc545E5ea103d24,
0xC95B69CC986877F473ADaac1664f850592A4115A,
0xC965303befCa2991633fE5c13e1389E6E43EF41E,
0xc968416370639A9B74B077A4a8f97076e4Ae1D9E,
0xc96c39B38B1a10548E48DA2a149F1a425d341142,
0xC972A0628ACfb325D713E61E5F4CCcE61fC8e0b8,
0xC9783F55bdD6F61f67DB1d2356Ee6f15558782Ea,
0xC996552aB087012cBaF108CA44a6DC1644Af2CA2,
0xC9BC426F2676D813398E75973aBFf4D275dB49c7,
0xC9C8A048bC55EEBd17F1092E2963d61c337C9B19,
0xc9E393aA3Dd73188D4cb9CaAC3466da8FE2B98c0,
0xC9ebCC2330C68Ae1Cb74A11641832c74EB86FBFC,
0xcA18c4A65416c80583597291aD05bf89e2AE22D9,
0xCA2fcDEFC09c1EaB0b91b66EbD3eB8401852fE5D,
0xCa3289529ae8E97F96e88C2eB50BA09CF24c429a,
0xCa3A06a5c7c75b68b8203290AF83af5695ef8435,
0xca3f53B2Aa6bfA82Af3993a4C8F4Cc27aCF47b77,
0xca448d4FB03b29B33692A314B8D4DEAA6fb3f221,
0xCA50FfDa78dfAeaf1ba7bc17C2249B3736556118,
0xcA55a1D0B31046174f18a03D1e79E7219e071c84,
0xCa6769D96762Fa4cF0256eB4e1D11d9Cf6F6a85C,
0xCa69d43791F28F5B192b0693B42597e105D59A0b,
0xCA6dD9AE808eE1D47D1dB9d0Ceb2B9235E7EBa13,
0xCa8840414bd9fd4b4CDE666724Eb60F5e7884C2e,
0xCAA710F2610EEE74e136F5a3996C74982e21660D,
0xcAAaba704e5bE1e557eC160217b9C71F54fb6d3A,
0xCAbE9a07454C906CA63E88f54CEbAE440fB08bA0,
0xcAcBc774260458D8ddaFA33c3D2FcCd39627B52f,
0xCAE559b65bE528B9ade256fF7870A4b06E0A51e2,
0xcAF252DCf1d6F60d079B55684f301043261A6738,
0xcAF548B15644b0CBF92dE0179D52d0B562Bc3abB,
0xcB062BD4163B4273A72b0284C40a85Dc9997461E,
0xCB39bc87a59BA7937597742050FD9695B80C42eF,
0xCb5503e358cA8A41cCc2b2F5a502459dF193884b,
0xCBaEfAe484f7b0CFED616f39Eeb1a75917127718,
0xcbebCF4fd59E082d8F95F8C9a7D2585C3229DA84,
0xcbF09F18fc6AA3336e178Dea16e43D14150E484C,
0xCbFaDe7768Fb0C562f33E958dEfb1810dBbfEd99,
0xcc013ecF4ea3Ece29930451e2Cc7c60Df6Db6841,
0xCc03e33fc298f2D627c62AC42CCa953A4e01bD4C,
0xcc0560F9Bb11FB279b5A4b96Ac3cd0a6278164f2,
0xCc0aec768012ce21b3124a2B32c666f5DF4a3D73,
0xcc209a2ee842f5786A07C5231D0A831da1C64832,
0xcc260928D51D6B8Fc27D5c6093AB2bFD58199C20,
0xCc7EA6F21F5ff9DCE31b5e7ef5893f5551Eca24E,
0xcc936984596af4F39d098Ed38c2A7df308f46578,
0xcc9D23b76655E3A5BF535E32030EF78CD639805d,
0xcCB51204c11e697fD924C873F407704588C9178B
    ];

    uint256[] public amounts = [
        29591728589187600000,
1657536827176710000,
2811169071728470000,
149744445473272000,
361452109763071000,
562316210759977000,
277065800714016000000,
511196555236343000,
67023548353209400,
16321518325214400000,
584639160371028000000,
471,
201380461153711000,
5717559624956230000,
297854611050258000000,
408688885991810000,
14974444547327200000,
13355504695998700000,
16516312098541000000,
3495368692727380000,
101721405782709000000,
155316631684855000000,
3718969808266850000,
15652285340623100000,
31074554236488000000,
4214457187678790000,
340797703490895000,
8757468259402400000,
86016328749184100000,
101675769081654000000,
504256674728892000000,
475051344260036000,
991757462369481000,
475051344260036000,
3754454700124690000,
2121364966675580000,
453056629335260000000,
18022317138444900000,
289161687810456000,
1394054809489430000,
5163385625289770000,
7088592232610620000,
17839033404043100000,
5020474180393490000,
33487617814952400000,
671784564002507000000,
42440922641633800000,
8833461454640450000,
540687010278825000000,
24349514269733100000,
1394172423371840000,
11367129016269400000,
18346136016338000000,
1290900392010970000,
22719846899393000,
704438833466527000000,
64452184825610600000,
187449522379305000000,
28929122953649100000,
84665629364887500000,
12666575077342000000,
698327949427403000000,
17984009625916600000,
21744829939379400000,
33741623366227500000,
4566779467778350000,
277233768188378000,
5735455589235700000,
131234648541431000000,
214474729062565000000,
14110728913040500000,
178092618081833000000,
253554760113114000000,
339431491736653000000,
511196555236343000,
14037596658559400000,
740847433220404000,
2875438859101980000,
1022393110472690000,
98907590043707000,
291051534995866000,
1875090652728310000,
82088829010618500000,
7768922155846810000,
510708506706076000000,
1187628360650090000,
5606002636649250000,
535630969709903000000,
15059125458793900000,
12837692050873400000,
8571267449206630000,
100331080606234000000,
51881397617373600000,
9254075634013540000,
1394,
13247712789960200000,
2822940977249580000,
1858896564495790000,
158764018148268000000,
1583387358956940000
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