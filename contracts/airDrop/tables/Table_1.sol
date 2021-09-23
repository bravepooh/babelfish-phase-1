pragma solidity ^0.5.16;
    
import { Table } from "../Table.sol";

contract Table_1 is Table {
    address[] public addresses = [
        0x0006230B517B06e63b9086e7a43E4E70C523751d,
0x0019cf2D5476d5006260b582Ee973f0dE6212DF3,
0x002B24Bd31cC35c72c78007bb3f309a489AF5D26,
0x00309826dc86140Ef9f11aBFa3742Df035A10934,
0x00397D81c4b005e86Df0492fd468891AD2153377,
0x004d5c3C8BE30478A5b58f1ff1a98F38f65d3b1D,
0x004fDbc8C22aE5ab06cA84D933f45Dd87e9e252a,
0x00537a7aEaF33b66f8BA73De66512a10F50C1239,
0x00587210A5c18690Da1B825fd6F3F9c583f52268,
0x007565a945232d3C434fa5A20e691764702D65Cc,
0x0078A0c1D523181E3CDd798647aD1c6d0306Bb47,
0x0084607fFFA62eae449CEeA975bb9710ADa455c2,
0x0095AFC96094160CeA6a5E00b5858369F25F3d74,
0x00b8290F5fbf354656856b4DEf6961b59dEed8e6,
0x00bE24972a705eeCeD07053c84F01cC8B860B70b,
0x00c93592A6d4Fb0b7829027044DcaF2A4Ac47c86,
0x00f63088800E6a1891E05843bB6dC96FBB54F354,
0x00Fb98b676e6677b9B20c5A2A1Ed51D45734FFea,
0x01081b1821383E48289828B8B1d03ee8e5b31E44,
0x0111F8768b123EEFE2B4D645Af85E331DA9C445C,
0x0117E91a70d7A2Ca31e838069a585003798BCd7D,
0x01190DA45dE5151e69D906bE9CB2BdE4d486caF8,
0x011ae0B0B6DAef84492f9812399a9404068c6a14,
0x012284b9DcA8D887d5Ca0F746100A960aB0803B9,
0x01252BdB4927bFEED7e4c87a4a33d4DA8D3D5Aa5,
0x01485557C2BC6E26c7187ff4cC38d5d9474405D4,
0x0148715bF8F3dD3fB39C742EfbDC564a5693A884,
0x0149F4Ffb5d9628fdC269b835f3BA6428770226e,
0x0156c17fe07392D81B870805a6a061C751C90F34,
0x016feeca99CEa3019dd6E2796C6DF786F887b8cA,
0x01740c9FCff3607531B363dC940378D2A9fE837D,
0x018f9e9e09d8A3e817128882Eaaf9a0d3BB24054,
0x0196aD265c56F2b18B708C75CE9358A0b6DF64CF,
0x01A06B5a3C2F556Be150DDFbF0d3Dd30d06952F7,
0x01Ab06F4Eb304a6f804E26CbE5f16D23D06b68a5,
0x01B5FceFa2fD6bA0B569781B3dc3B2989D5249fC,
0x01C116715455AaaE57304C8C510A4277CB14f9B6,
0x01C65748f6E291B2d05df8FfF86FF5221bFB57d5,
0x01d80BdD0c83c99465698e77E829C015950B220F,
0x01DEd24346ED09CB7f672A6A9B88ADDB1FD39a39,
0x01e6694700Fcea08883a6378d4AD82441BfE4217,
0x01ebe736c12fE6915C615c159C801433b98273BE,
0x02145c044f5880F9479240f413dE7129b58e3e09,
0x02482219a0d939dd6e224dcfA0Cd7Dc45C1296e3,
0x024BBf657AabB7E80f920A81d46260732e8C2167,
0x025C22f47E0367Bb04555CF0f3aCC79347b02c09,
0x025d776844Ac13F1E9B3D454F55137a233B8a3B2,
0x026Fc425d692C52C43D69Aea0feC9B927a606a37,
0x0274c89Ea0e3388a692366c48763245C5433A888,
0x028C2875D7A41A17981DA23a8ae1Cb805304fcc4,
0x0295a1f13D2bD7b20b35877CAb187d15C1e231a8,
0x029A62aA7225fDf44B502A0f3dcFd28b580b5D50,
0x02ac35778918809fdE7E19980629372A6Ae7389A,
0x02b1040cD6746328BA5bc9F81FA7690522cc6df0,
0x02B2117A836aB14e547E3E7110395bE506422671,
0x02B4c44a97DBD61a16fA7A5a1B4924A4BdFF0D78,
0x02CC2508Ea74e19CAf469d0eb7E3A97f2b4bF902,
0x02E3f540bE055029cD072a46899e61eB0D8566E8,
0x02e96cfd2daF1EA22C86C6686FbA28103628f045,
0x02F1828f21B7Ec274DD9E5BC1b83354d5225beF6,
0x02f6b1FdcA6ce98fBC0f76F2b264d9c0518d99a9,
0x02fEC1e5e224Da14Dfe29237042D56a96523949E,
0x031010BE201ecA7cB5c4a6726b8a6A2d1895b26F,
0x0321Aa423f8A97f3929A65aaFbAA4878a4760312,
0x03286AF628fA73BACda875270a4251b24e24a467,
0x0339cef12a92eCFb9700d051400abFa6Ee585c97,
0x036059DeDD4E37ED0B1e71e40A972C1EB9daB464,
0x0361FeEd2783a0A953B1A9e94A53494Ed09B65ef,
0x0378525aa9805D64561B56B4c040E7aF2675ddFf,
0x03813CE38a3ED7785FA0920706cc010790C8a05f,
0x0385C6469BaBD8d910954aBfb95bb4f980730A32,
0x03B0b0Fc2c5F042D5d1d744f19464903FF3789E6,
0x03C25c81E480BC73Db92bD71b04c25167891D426,
0x03d37f058A014Ab1FCdD19C92644dbF80aB8c311,
0x03e3999592D194b5A2dD9209102b9B534CaEcdF9,
0x03fF1B9a48FBA6B5D0b6c8Da5cA723471c1C655F,
0x0409dDAf7e22189a847383429818AD3d81659e2A,
0x04325a2242D24Fb0BF23ae5Bcb952aDcf68359B6,
0x043df2FCDce668c8221BE5dae21b07b3bf483448,
0x0456515e5cFf85ad245b4bcd33EBdb28dA6a6493,
0x0487248d0fFbCD2cE5fC75AB27640E16ced7Ad66,
0x049aA75E6ab5e2ab2ae21ddab95252aB76EC800a,
0x049BC20fa95Ba1403c0Fd78Ef1455C342E67B8D8,
0x04a542178490A736a6d93B522c39b8114B3458E3,
0x04aDDC2569DFdf5649Ff15603c935F081f17CB8f,
0x04b199C1E53b8742501363262dBb2f13c65B6A97,
0x04C5c5E26B6342341106834851d45D48ad049745,
0x04D15eE4E0f4195054129f2D84cE2571E3e1a07c,
0x04E4AC7941D8227e41cfB61d594A528a9fB233Db,
0x04E7092f86560518b952D71885153425397B990b,
0x04EaD9464E267451846238A0a18aDa31F543a315,
0x04f1789B54B58c6C5b6DF7FD485F6fc98Dd5D29c,
0x050e4e12B409a13ABF2CD2CFd8a4db6759A4b59f,
0x052e0b2615dc9ca10aC3644a796BBE5Cb8b78d1A,
0x053BBE06Ad4F726C55367742A57A194B729a24e7,
0x05421C8303c7E36dcf2314E27b6a32209Ad3B7b7,
0x0544A863c353A33717b29C56c90f6b19ebD28C4b,
0x05480882C86BE2bd9D3da7464CA67dd4046e101D,
0x055f559BE7943dE7396999F1406cE1733A8F192d,
0x05768d66b343C78cd97Fa0ec8Af168efa65BFFdD
    ];

    uint256[] public amounts = [
        429383199637197000000,
34161703861979200000,
142426142735991000000,
160788651514899000000,
155017447722436000000,
5079612467808320000,
45216199753527700000,
3990001566518560000000,
267360635657175000000,
3574664362118020000000,
6624869802437360000,
19197022499345500000,
8381765537476970000,
1806399045551920000,
222501518332509000000,
514088649359490000000,
271042298089403000,
4265606770923530000,
74031137574947200000,
1303180010504300000000,
2909223651779850000,
607031841104454000000,
34671562073256200000,
441990041471290000,
1559765869132690000000,
39332493067948100000,
6332326464900690000,
1813577494685880000,
2437808801712460000,
170622871236160000000,
884785435989261000000,
66177636902220600000,
0,
24759149722998900000,
294593852635127000000,
3331157802112010000,
362562597094145000,
207213349760533000000,
2603049227516210000000,
186013031141233000000,
1701514904896500000,
4181569854356050000,
28728701422591100000,
487998943341207000000,
1673435664030300000000,
7652998666915740000,
119949433620684000000,
51724029697830100000,
14962034295651400000,
70511556867002800000,
2222665823175890000,
233169206919556000000,
7682510122310380000,
1194261241537380000000,
47178315448588600000,
231993202281397000000,
88650751397261400000,
755554229442527000000,
326530096359957000000,
37240946954113000000,
109507498930314000000,
69380859043559300000,
568776536865199000000,
35519421310904200000,
325250757707284000000,
32094353065111700000,
22486308260737000000,
26216981229919900000,
2258685817411690000,
610240536419427000000,
95630226092414100000,
1701514904896500000,
970151332562884000000,
1218293778860210000000,
677724112341969000000,
32436994391010300000,
65952153331219900000,
351936021226395000000,
491350304929135000000,
5109467679961910000,
69735103432907200000,
44430392698963300000,
2859233324561460000,
155560514130363000000,
267221831181680000000,
72256371946950700000,
14917466235856700000,
8866671390212820000,
75160628054590100000,
864888808659077000000,
537904124681309000000,
5662599693165440000,
2104079742564060000000,
120,
201730598457143000000,
353256677359431000000,
12031321420991300000000,
32515182819934600000,
107326681302222000000,
3870926055784620000000
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
