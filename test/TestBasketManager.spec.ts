/* eslint-disable @typescript-eslint/explicit-function-return-type */
/* eslint-disable @typescript-eslint/no-use-before-define */
import { expectRevert, expectEvent, time } from "@openzeppelin/test-helpers";
import * as t from "types/generated";
import { ZERO_ADDRESS, TEN_MINS, MAX_UINT256 } from "@utils/constants";
import { StandardAccounts } from "@utils/standardAccounts";
import envSetup from "@utils/env_setup";
import {
    MassetProxyInstance,
    MockERC20Instance,
    ThresholdProxyAdminContract,
    ThresholdProxyAdminInstance,
    IMockDummyInstance,
} from "types/generated";

const { expect } = envSetup.configure();

const ThresholdProxyAdmin = artifacts.require("ThresholdProxyAdmin");
const BasketManager = artifacts.require("BasketManager");
const Masset = artifacts.require("Masset");
const MockERC20 = artifacts.require("MockERC20");

contract("BasketManager", async (accounts) => {
    const sa = new StandardAccounts(accounts);

    before("before all", async () => {});

    describe("constructor", async () => {
        it("should succeed", async () => {
            const inst = await Masset.new();
        });
    });

    describe("initialize", async () => {
        let masset;
        let mockToken1, mockToken2, mockToken3, mockToken4;
        let bassets, factors;
        before(async () => {
            masset = await Masset.new();
            mockToken1 = await MockERC20.new("", "", 18, sa.dummy1, 1);
            mockToken2 = await MockERC20.new("", "", 18, sa.dummy1, 1);
            mockToken3 = await MockERC20.new("", "", 18, sa.dummy1, 1);
            mockToken4 = await MockERC20.new("", "", 18, sa.dummy1, 1);
            bassets = [mockToken1.address, mockToken2.address, mockToken3.address];
            factors = [1, 1, 1];
        });
        context("should succeed", async () => {
            it("when given all the params", async () => {
                const inst = await BasketManager.new();
                await inst.initialize(masset.address, bassets, factors);
            });
        });
        context("should fail", async () => {
            it("when masset missing", async () => {
                const inst = await BasketManager.new();
                await expectRevert(
                    inst.initialize(ZERO_ADDRESS, bassets, factors),
                    "VM Exception while processing transaction: revert invalid masset address",
                );
            });
            it("when bassets missing", async () => {
                const inst = await BasketManager.new();
                await expectRevert(
                    inst.initialize(masset.address, [], factors),
                    "VM Exception while processing transaction: revert some basset required",
                );
            });
            it("when factors missing", async () => {
                const inst = await BasketManager.new();
                await expectRevert(
                    inst.initialize(masset.address, bassets, []),
                    "VM Exception while processing transaction: revert factor array length mismatch",
                );
            });
        });
        context("checking if bassets are valid", () => {
            let inst;
            beforeEach(async () => {
                inst = await BasketManager.new();
                await inst.initialize(masset.address, bassets, factors);
            });
            context("isValidBasset", () => {
                it("should return false if basset is in the basket", async () => {
                    expect(await inst.isValidBasset(mockToken1.address)).to.equal(true);
                    expect(await inst.isValidBasset(mockToken2.address)).to.equal(true);
                    expect(await inst.isValidBasset(mockToken3.address)).to.equal(true);
                });
                it("should return true if basset is not in the basket", async () => {
                    expect(await inst.isValidBasset(ZERO_ADDRESS)).to.equal(false);
                    expect(await inst.isValidBasset(mockToken4.address)).to.equal(false);
                });
            });
            context("checkBasketBalanceForDeposit", () => {
                it("should return false if basset is in the basket", async () => {
                    expect(await inst.isValidBasset(mockToken1.address)).to.equal(true);
                    expect(await inst.isValidBasset(mockToken2.address)).to.equal(true);
                    expect(await inst.isValidBasset(mockToken3.address)).to.equal(true);
                });
                it("should return true if basset is not in the basket", async () => {
                    expect(await inst.isValidBasset(ZERO_ADDRESS)).to.equal(false);
                    expect(await inst.isValidBasset(mockToken4.address)).to.equal(false);
                });
            });
            context("checkBasketBalanceForWithdrawal", () => {
                it("should return false if basset is in the basket", async () => {
                    expect(await inst.isValidBasset(mockToken1.address)).to.equal(true);
                    expect(await inst.isValidBasset(mockToken2.address)).to.equal(true);
                    expect(await inst.isValidBasset(mockToken3.address)).to.equal(true);
                });
                it("should return true if basset is not in the basket", async () => {
                    expect(await inst.isValidBasset(ZERO_ADDRESS)).to.equal(false);
                    expect(await inst.isValidBasset(mockToken4.address)).to.equal(false);
                });
            });
        });
    });
});
