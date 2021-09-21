pragma solidity ^0.5.16;
    
import { Table } from "../Table.sol";

contract Table_14 is Table {
    address[] public addresses = [
        0x4Bb243C76eb4313cD0AfA43d7c792077038092cE,
0x4bBe03e8f66A97842E9BAcB69302Cae3557bF3d2,
0x4bBe0Fd0bDEC55E074C5E6ea9f4f627AFf31E93a,
0x4bD3A0745B3787fC2672CCD052C2d555E446f184,
0x4be92A5b6d76A55B5FD398719fD00011E918Ff13,
0x4BF48297908105204751BcCDe20be0b03cDd60A0,
0x4c0b45f9b4fe3F5F8a35fCd15ABA4347a0A8f4a4,
0x4C0db6794A600383A788F312A0C7a28CA6d99628,
0x4c15c890B6a2547a687492a5A0392c7E51fEfB22,
0x4c1Ca681f090a42AF7FDdef4262349Dd2AD43e42,
0x4C3B74A506951577949c2eeCA13Df78710a446dE,
0x4C3d3505d34213751c4b4d621cB6bDe7E664E222,
0x4C4f337B64c0c063c04ca39a96F94933F03DdB2C,
0x4c679D206d5C5927e5869B8E5e1502087e185D21,
0x4c9B6E9224b47AfE2aEBdfBc6CC908f4e1EB9c0a,
0x4CA1692357F441C755993c530FF24F506f03F78F,
0x4CAD0A87FaD78e47133DCb2611C5273F57Cefc3e,
0x4cad2d2Ca48FD96862A9b9af11e81f534381a6F5,
0x4cb240Ba4756BEF82A8D86ed60aA79C4E7C9AC58,
0x4CbD0697098543613040A18EBDbA786476eB6b14,
0x4CC90528AE039D594a5Aaa7f09daA320b1E61B6d,
0x4cDCCE48D50D35c4d6066444160ea55F6A2B018e,
0x4CEfE9c52c380B73F4461DA4D2A3a3c37022E2eE,
0x4CFc8192955a74f80fB0AFd37f892E8Dcaa04933,
0x4D322DFbC16CF38e65Cd19Eda193899fF89f9E7a,
0x4d40e2541F943e48EC81Dcce70647386b0E89132,
0x4D464CF5396e2DCe37CC32776E2f8c4fc0a779CC,
0x4d4CaECdfce7Bf80Fb3717C2EE8a96a759C21315,
0x4D58EF463641dBf348daE391ca8Ee91A62C5e1Ca,
0x4D61af539f8baf6BcC1db47060a0BfE80e3F93e6,
0x4D6e32Ca0fA631482C9AED14c7E6951E097F8404,
0x4D86A703d686F0B55ac3D584EcA29bE70ad8F6Ec,
0x4d9923547635686384695e4Bc6745aE2Be7e8F77,
0x4DA6dc8C12Ee4Cb02Df7b346fe8d2729636A237C,
0x4DAb6a88B11A4bD6EAE8cc965dB2140739c0c548,
0x4DB4b435b6174dEE4745891a5ad91f4ae9F2c97f,
0x4dB941c235B7cA3940825dcB9d6d4b8C9054DAF6,
0x4dbb49dDa9C5E83661Af1Be3a6EaC5b77b59e948,
0x4De4EF28Db8893C16DEa9E791E7aF50e68918A0E,
0x4Dfcf1E63062BECAd88A6C5DBB72C82C3fbb2721,
0x4Dfd01933C8af1151d208a897b97926A2a47867E,
0x4E132ac3bAF0C9Df73A9157cD4606D068390EcDC,
0x4e15aC6D5F8A6b5c5a84436955C9f38F4195Bf61,
0x4e22D075361767eFa9EacB1f7187AF8faB12628f,
0x4e3eF3Aa2396D4D238aacb6F39CbbefEe8e58699,
0x4e43D53277fb323E2aAc0124e15C55D706DBA040,
0x4E450Ac74d0a2aab2f93997BA3270b1b91A28F11,
0x4E45F687E71A4a87066146C9Af53E365C530fC2c,
0x4e4842749E799B384601489f1653213d86C31E1B,
0x4E49F3814DE088AD970B3c6A6dac28c8a067E2fB,
0x4E62E484A415264072bDD4d2C1fB0406A4E79657,
0x4E631eC5E991edD899459af90D46Fd7A3B46710F,
0x4E7A35E672256F854D4e0a8851CD7965b8B53D67,
0x4E87762CBC1627952A00CCFE9e9bFC8c3C2Fa5dE,
0x4E93c6ed4DBA442859794D5141959935241Ca045,
0x4ea80c0f2fbf02a011530CEF7fD0aa024b345290,
0x4eaBa80c9E184C10488cF0F8629677c788c7d5eC,
0x4EaC14ff9e35560cdC8fb9347726A01b39C43afF,
0x4EBcEA83e815021c5bc7a13baa4A46331975Ca50,
0x4eD9c6193ede88A5D41b2E833E46508800420780,
0x4EE58A3585a42a8c947a1dE7184D7BF05d273D6B,
0x4eE68c5565ab1E2D1db8aD1499c7dad07dCfb5E4,
0x4ef59E60d5eB5b35ef4b4d570CfAFA752d581cf7,
0x4F1171110e0436529E9D9306D7bd25dadE527457,
0x4F11C969f1530561E4DAf8710Bf27Cd9E2778f56,
0x4f128574eCb9839A9B490580c6c46846Eb8B2bBf,
0x4f256D98Ffe70362Da43b2eE407891679Fa7E77E,
0x4F27F4C6E66718676C0Ab646aAeCE16DC38E5a9C,
0x4F327FE9d11e89F482397273FE8A207AcE7A8411,
0x4f428525b96C7e8Fb0B8F7E3e7064743d0b3c661,
0x4f56F4Ea1e21B9BfB27caD5f59BC7fC132683c60,
0x4F5EA134FD2D445e446a418abc679425371BDf90,
0x4F5EA307a5f2AE2B213B0f38B6baf39c53EC9fD1,
0x4F66b17A1E1da5ACE2E6bB307992f4DBabAe3959,
0x4f6ccCA58bf222F1edEC87757a302C0ba14e6B1f,
0x4f750503C11563D6e1e6431700B2a40F8Ce9A7a3,
0x4f7e8446231Fe14656F0e543741F584f9281D55c,
0x4F8b4ceab0081CE6f0fD3449BD948F917099649B,
0x4f8EbB9A9e347054B22fD4E8D3b4F3092B9362E7,
0x4fd1553713a551283D6533EEEccE37e0Bc684460,
0x4fDA03DD0e4eAf958F48862E1E8019E02c064D9F,
0x4FDB6CB4cc65c7Cc24a928F1aca37807f589F8b6,
0x4fdf422AeCe95aE4bC05f24bbFf03038Da6BC823,
0x4FED422AB6B4a9Ac2BDaA9B86b7e356a7832D611,
0x50072AA47D80A291B57607AA3f458007a41312D4,
0x500D12bcF9465568BE7a678371eB6c0a5C4EaD80,
0x501C91f1d44177c84b9964a64c76F4036080E260,
0x50250bBE7eed8f679b184f53a8F7D9a73A29474e,
0x50375458dAEb8ad0A3022FCC56F40c8Ea93D9117,
0x503820442505327B2388fb6808f1dfC503cfDe12,
0x5039B7c1B929cb5c9dA62C2b45574a47463e406a,
0x503a3dbA4d8f7058bb5916C50DEf11f27222c243,
0x504d9b9af48868a2c38Df27846836325de423129,
0x50693E63A0Abb825B1Ba99564954D45B6e45A632,
0x5072D9e034b97d32af8f14176F3Abe111aC39Ffe,
0x507382FeC4DA4aa326B46dF753bB836920500585,
0x50755c470B12593f9a552d56ABE097200b4ff76b,
0x507c28eB3806cf36Fc8336f7Bfcc5428F518706a,
0x5085246b958763Ef49CD2134CEe105386dB79342,
0x509AB85bD9eFADfA3DEa8F2305f5d8CbC8c70B1B
    ];

    uint256[] public amounts = [
        5122733941927266000,
87445916397869400000,
38505378456089076000,
8670233537656446000,
3898201569029206026000,
316644853084831404000,
1796941662112502010000,
234677782680035100000,
1220565462263502600000,
66435800540042304000,
281733565306241538000,
591133200641123700000,
6409891711372296000,
109247358035808300000,
19505414110736244306000,
17805190849734414000,
84388878241857882000,
8589441863389632000,
7227794615717340000,
3613897307858670000,
225868581740340000,
3331896941829434328000,
122550902198380614000,
2267263827447199980000,
1080649757653359600000,
524381687121805464000,
114289997294545800000,
386006232888486000,
154928180268150786000,
156834220847529204000,
27194577241636602000,
5952120762440790000,
43651153443098040000,
1806948653928894000,
43011814357344210000,
40656344713410258000,
721464291469884018000,
890542209856576494000,
281679369826859718000,
38298982104978924000,
304922585350577376000,
0,
48274503956743638000,
318700661634069624000,
165842186555973900000,
11283862255271298000,
27210515239596024000,
9072542383765266000,
62068986067317600000,
54716964047380614000,
829755309857530854000,
9276942938334540000,
5109467679961470000,
13597288620817860000,
1171390909090500000,
0,
33682192326843900000,
553188600658070538000,
76194187017122496000,
415826795731491900000,
1921863801572400000,
174582829224546078000,
373627941930547500000,
3785674994139192000,
577397943833895954000,
34962786238735782000,
151783686930065022000,
319134608558882424000,
6608028308722722000,
2108381011819027890000,
88669980096167400000,
9542322177530520000,
10839230967846330000,
14906288900697852000,
1701514904895204000,
50553164135590494000,
440206293761389512000,
2535917555347218000,
2999452048998427806000,
316216014437635830000,
43622869630166694000,
7227794615717340000,
23931077497013064000,
859284897492084000,
160880256787309416000,
1127687477393620500000,
25092380135560500000,
84613868240402004000,
97479121722350088000,
19176669015191814000,
14917466235855162000,
12349815653243586000,
149485719197831100000,
163502965758778632000,
200618731545163932000,
10914898403544534000,
11889231116527548000,
7254633414819420000,
25299423972664758000,
195771276445096926000
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