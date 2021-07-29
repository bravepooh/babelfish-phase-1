import { ZERO_ADDRESS } from "@utils/constants";
import { HardhatRuntimeEnvironment } from "hardhat/types";
import { MassetV3Instance } from "types/generated";
import addresses, { BassetInstanceDetails } from './utils/addresses';
import { conditionalDeploy, conditionalInitialize, getDeployed, printState } from "./utils/state";

const BasketManagerV3 = artifacts.require("BasketManagerV3");
const BasketManagerProxy = artifacts.require("BasketManagerProxy");
const MassetV3 = artifacts.require("MassetV3");
const MassetProxy = artifacts.require("MassetProxy");
const FeesVault = artifacts.require("FeesVault");
const FeesVaultProxy = artifacts.require("FeesVaultProxy");
const RewardsVault = artifacts.require("RewardsVault");
const RewardsVaultProxy = artifacts.require("RewardsVaultProxy");
const RewardsManager = artifacts.require("RewardsManager");
const RewardsManagerProxy = artifacts.require("RewardsManagerProxy");

const MAX_VALUE = 1000;

const deployFunc = async ({ artifacts, network, deployments, getUnnamedAccounts }: HardhatRuntimeEnvironment) => {
    const { deploy } = deployments;
    const [default_, _admin] = await getUnnamedAccounts();

    const addressesForNetwork = addresses[network.name];

    const feesVault = await conditionalDeploy(FeesVault, "FeesVault", { from: default_ }, deploy);
    const feesVaultProxy = await conditionalDeploy(FeesVaultProxy, "FeesVaultProxy", { from: default_ }, deploy);

    await conditionalInitialize("FeesVaultProxy",
        async () => { await feesVaultProxy.methods["initialize(address,address,bytes)"](feesVault.address, _admin, "0x"); }
    );
    const vaultFake = await FeesVault.at(feesVaultProxy.address);

    const rewardsVault = await conditionalDeploy(RewardsVault, "RewardsVault", { from: default_ }, deploy);
    const rewardsVaultProxy = await conditionalDeploy(RewardsVaultProxy, "RewardsVaultProxy", { from: default_ }, deploy);

    const initFunc = rewardsVault.contract.methods.initialize().encodeABI();
    await conditionalInitialize("RewardsVaultProxy",
        async () => { rewardsVaultProxy.methods["initialize(address,address,bytes)"](rewardsVault.address, _admin, initFunc); }
    );
    const rewardsVaultFake = await RewardsVault.at(rewardsVaultProxy.address);

    async function upgradeInstance(
        symbol: string,
        addressesForInstance: BassetInstanceDetails,
        depositFee: number | BN,
        depositBridgeFee: number | BN,
        withdrawFee: number | BN,
        withdrawBridgeFee: number | BN
    ): Promise<void> {
        const massetFake: MassetV3Instance = await getDeployed(MassetV3, `${symbol}_MassetProxy`);
        const massetVersion = await massetFake.getVersion();

        console.log(symbol, ' Masset version: ', massetVersion);
        if (massetVersion >= '3.0') {
            console.log('Skipping...');
            return;
        }

        const tokenAddress = await massetFake.getToken();

        const basketManager = await conditionalDeploy(BasketManagerV3, `${symbol}_BasketManagerV3`, { from: default_ }, deploy);
        const basketManagerProxy = await conditionalDeploy(BasketManagerProxy, `${symbol}_BasketManagerProxy`, { from: default_ }, deploy);

        const initAbi = basketManager.contract.methods['initialize(address)'](massetFake.address).encodeABI();
        await conditionalInitialize(`${symbol}_BasketManagerProxy`,
            async () => { await basketManagerProxy.methods["initialize(address,address,bytes)"](basketManager.address, _admin, initAbi); }
        );

        const basketManagerFake = await BasketManagerV3.at(basketManagerProxy.address);

        if (network.name === 'development') {
            const ERC20 = artifacts.require("ERC20");
            addressesForInstance.bassets = [(await ERC20.new()).address, (await ERC20.new()).address, (await ERC20.new()).address];
            addressesForInstance.factors = [1, 1, 1];
            addressesForInstance.bridges = [ZERO_ADDRESS, ZERO_ADDRESS, ZERO_ADDRESS];
            addressesForInstance.ratios = [300, 300, 400];
        }

        const promises: Array<Promise<Truffle.TransactionResponse<Truffle.AnyEvent>>> = [];

        if (await basketManagerProxy.admin() === _admin) {
            const existingAssets = await basketManagerFake.getBassets();
            const addAsset = (index: number) => {
                console.log('adding asset: ',
                    addressesForInstance.bassets[index],
                    addressesForInstance.factors[index],
                    addressesForInstance.bridges[index]);
                promises.push(
                    basketManagerFake.addBasset(
                        addressesForInstance.bassets[index],
                        addressesForInstance.factors[index],
                        addressesForInstance.bridges[index],
                        0,
                        MAX_VALUE,
                        addressesForInstance.ratios[index],
                        false
                    )
                );
            };

            for (let i = 0; i < addressesForInstance.bassets.length; i++) {
                if (!existingAssets.find(ta => ta === addressesForInstance.bassets[i])) {
                    addAsset(i);
                }
            }

            await Promise.all(promises);

            if (network.name !== 'development') {
                if (await basketManagerFake.owner() === default_) {
                    await basketManagerFake.transferOwnership(addressesForInstance.multisig);
                }
                await basketManagerProxy.changeAdmin(addressesForInstance.multisig, { from: _admin });
            }
        }

        const rewardsManager = await conditionalDeploy(RewardsManager, `${symbol}_RewardsManager`, { from: default_ }, deploy);
        const rewardsManagerProxy = await conditionalDeploy(RewardsManagerProxy, `${symbol}_RewardsManagerProxy`, { from: default_ }, deploy);
        
        await conditionalInitialize(`${symbol}_RewardsManagerProxy`,
            async () => { rewardsManagerProxy.methods["initialize(address,address,bytes)"](rewardsManager.address, _admin, "0x"); }
        );

        const rewardsManagerFake = await RewardsManager.at(rewardsManagerProxy.address);

        const masset = await conditionalDeploy(MassetV3, `${symbol}_MassetV3`, { from: default_ }, deploy);
        const massetProxy = await MassetProxy.at(massetFake.address);
            
        await rewardsVaultFake.addApprover(massetFake.address);

        await massetProxy.upgradeTo(masset.address, { from: _admin });
        await massetFake.upgradeToV3(
            basketManagerFake.address,
            tokenAddress,
            vaultFake.address,
            depositFee,
            depositBridgeFee,
            withdrawFee,
            withdrawBridgeFee,
            rewardsManagerFake.address,
            rewardsVaultFake.address
        );
    }

    await upgradeInstance('ETHs', addressesForNetwork.ETHs, 0, 0, 0, 0);
    await upgradeInstance('XUSD', addressesForNetwork.XUSD, 0, 0, 0, 0);
    await upgradeInstance('BNBs', addressesForNetwork.BNBs, 0, 0, 0, 0);

    printState();
};

deployFunc.tags = ["migration"];

export default deployFunc;