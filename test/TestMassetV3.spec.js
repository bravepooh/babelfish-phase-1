"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
exports.__esModule = true;
/* eslint-disable @typescript-eslint/explicit-function-return-type */
/* eslint-disable @typescript-eslint/no-use-before-define */
var test_helpers_1 = require("@openzeppelin/test-helpers");
var web3_utils_1 = require("web3-utils");
var tools_1 = require("@utils/tools");
var env_setup_1 = require("@utils/env_setup");
var constants_1 = require("@utils/constants");
var standardAccounts_1 = require("@utils/standardAccounts");
var expect = env_setup_1["default"].configure().expect;
var BasketManagerV3 = artifacts.require("BasketManagerV3");
var MassetV3 = artifacts.require("MassetV3");
var Token = artifacts.require("Token");
var MockERC20 = artifacts.require("MockERC20");
var MockBridge = artifacts.require("MockBridge");
var standardAccounts;
var tokens = function (amount) { return (0, web3_utils_1.toWei)(new tools_1.BN(amount), 'ether'); };
contract("MassetV3", function (accounts) { return __awaiter(void 0, void 0, void 0, function () {
    return __generator(this, function (_a) {
        standardAccounts = new standardAccounts_1.StandardAccounts(accounts);
        before("before all", function () { return __awaiter(void 0, void 0, void 0, function () { return __generator(this, function (_a) {
            return [2 /*return*/];
        }); }); });
        describe("initialize", function () { return __awaiter(void 0, void 0, void 0, function () {
            var masset, basketManagerObj, token;
            return __generator(this, function (_a) {
                beforeEach(function () { return __awaiter(void 0, void 0, void 0, function () {
                    return __generator(this, function (_a) {
                        switch (_a.label) {
                            case 0: return [4 /*yield*/, MassetV3["new"]()];
                            case 1:
                                masset = _a.sent();
                                return [4 /*yield*/, createBasketManager(masset, [18, 18], [1, 1])];
                            case 2:
                                basketManagerObj = _a.sent();
                                return [4 /*yield*/, createToken(masset)];
                            case 3:
                                token = _a.sent();
                                return [2 /*return*/];
                        }
                    });
                }); });
                context("should succeed", function () { return __awaiter(void 0, void 0, void 0, function () {
                    return __generator(this, function (_a) {
                        it("when given a valid basket manager", function () { return __awaiter(void 0, void 0, void 0, function () {
                            var version, setToken, setBasketManager;
                            return __generator(this, function (_a) {
                                switch (_a.label) {
                                    case 0: return [4 /*yield*/, masset.initialize(basketManagerObj.basketManager.address, token.address, false)];
                                    case 1:
                                        _a.sent();
                                        return [4 /*yield*/, masset.getVersion()];
                                    case 2:
                                        version = _a.sent();
                                        expect(version).to.eq("1.0");
                                        return [4 /*yield*/, masset.getToken()];
                                    case 3:
                                        setToken = _a.sent();
                                        expect(setToken).to.eq(token.address);
                                        return [4 /*yield*/, masset.getBasketManager()];
                                    case 4:
                                        setBasketManager = _a.sent();
                                        expect(setBasketManager).to.eq(basketManagerObj.basketManager.address);
                                        return [2 /*return*/];
                                }
                            });
                        }); });
                        return [2 /*return*/];
                    });
                }); });
                context("should fail", function () { return __awaiter(void 0, void 0, void 0, function () {
                    return __generator(this, function (_a) {
                        it("when basket manager missing", function () { return __awaiter(void 0, void 0, void 0, function () {
                            return __generator(this, function (_a) {
                                switch (_a.label) {
                                    case 0: return [4 /*yield*/, (0, test_helpers_1.expectRevert)(masset.initialize(constants_1.ZERO_ADDRESS, token.address, false), "VM Exception while processing transaction: reverted with reason string 'invalid basket manager'")];
                                    case 1:
                                        _a.sent();
                                        return [2 /*return*/];
                                }
                            });
                        }); });
                        it("when token missing", function () { return __awaiter(void 0, void 0, void 0, function () {
                            return __generator(this, function (_a) {
                                switch (_a.label) {
                                    case 0: return [4 /*yield*/, (0, test_helpers_1.expectRevert)(masset.initialize(basketManagerObj.basketManager.address, constants_1.ZERO_ADDRESS, false), "VM Exception while processing transaction: reverted with reason string 'invalid token'")];
                                    case 1:
                                        _a.sent();
                                        return [2 /*return*/];
                                }
                            });
                        }); });
                        it("when already initialized", function () { return __awaiter(void 0, void 0, void 0, function () {
                            return __generator(this, function (_a) {
                                switch (_a.label) {
                                    case 0: return [4 /*yield*/, masset.initialize(basketManagerObj.basketManager.address, token.address, false)];
                                    case 1:
                                        _a.sent();
                                        return [4 /*yield*/, (0, test_helpers_1.expectRevert)(masset.initialize(basketManagerObj.basketManager.address, token.address, false), "VM Exception while processing transaction: reverted with reason string 'already initialized'")];
                                    case 2:
                                        _a.sent();
                                        return [2 /*return*/];
                                }
                            });
                        }); });
                        return [2 /*return*/];
                    });
                }); });
                return [2 /*return*/];
            });
        }); });
        describe("mint", function () { return __awaiter(void 0, void 0, void 0, function () {
            var masset, basketManagerObj, token, mockTokenDummy;
            return __generator(this, function (_a) {
                beforeEach(function () { return __awaiter(void 0, void 0, void 0, function () {
                    return __generator(this, function (_a) {
                        switch (_a.label) {
                            case 0: return [4 /*yield*/, MassetV3["new"]()];
                            case 1:
                                masset = _a.sent();
                                return [4 /*yield*/, createToken(masset)];
                            case 2:
                                token = _a.sent();
                                return [4 /*yield*/, createBasketManager(masset, [18, 18], [1, 1])];
                            case 3:
                                basketManagerObj = _a.sent();
                                return [4 /*yield*/, masset.initialize(basketManagerObj.basketManager.address, token.address, false)];
                            case 4:
                                _a.sent();
                                return [4 /*yield*/, MockERC20["new"]("", "", 12, standardAccounts.dummy1, 1)];
                            case 5:
                                mockTokenDummy = _a.sent();
                                return [2 /*return*/];
                        }
                    });
                }); });
                context("should succeed", function () {
                    it("if all params are valid", function () { return __awaiter(void 0, void 0, void 0, function () {
                        var sum, tx, balance;
                        return __generator(this, function (_a) {
                            switch (_a.label) {
                                case 0:
                                    sum = tokens(1);
                                    return [4 /*yield*/, basketManagerObj.mockToken1.approve(masset.address, sum, {
                                            from: standardAccounts.dummy1
                                        })];
                                case 1:
                                    _a.sent();
                                    return [4 /*yield*/, masset.mint(basketManagerObj.mockToken1.address, sum, {
                                            from: standardAccounts.dummy1
                                        })];
                                case 2:
                                    tx = _a.sent();
                                    return [4 /*yield*/, (0, test_helpers_1.expectEvent)(tx.receipt, "Minted", {
                                            minter: standardAccounts.dummy1,
                                            recipient: standardAccounts.dummy1,
                                            massetQuantity: sum,
                                            bAsset: basketManagerObj.mockToken1.address,
                                            bassetQuantity: sum
                                        })];
                                case 3:
                                    _a.sent();
                                    return [4 /*yield*/, token.balanceOf(standardAccounts.dummy1)];
                                case 4:
                                    balance = _a.sent();
                                    expect(balance.toString()).to.equal("" + sum);
                                    return [2 /*return*/];
                            }
                        });
                    }); });
                });
                context("should fail", function () {
                    it("if basset is invalid", function () { return __awaiter(void 0, void 0, void 0, function () {
                        return __generator(this, function (_a) {
                            switch (_a.label) {
                                case 0: return [4 /*yield*/, (0, test_helpers_1.expectRevert)(masset.mint(constants_1.ZERO_ADDRESS, 10), "VM Exception while processing transaction: reverted with reason string 'invalid basset'")];
                                case 1:
                                    _a.sent();
                                    return [2 /*return*/];
                            }
                        });
                    }); });
                    it("if basset is not in the basket", function () { return __awaiter(void 0, void 0, void 0, function () {
                        return __generator(this, function (_a) {
                            switch (_a.label) {
                                case 0: return [4 /*yield*/, (0, test_helpers_1.expectRevert)(masset.mint(mockTokenDummy.address, 10), "VM Exception while processing transaction: reverted with reason string 'invalid basset'")];
                                case 1:
                                    _a.sent();
                                    return [2 /*return*/];
                            }
                        });
                    }); });
                    it("if amount is greater than the balance", function () { return __awaiter(void 0, void 0, void 0, function () {
                        return __generator(this, function (_a) {
                            switch (_a.label) {
                                case 0: return [4 /*yield*/, (0, test_helpers_1.expectRevert)(masset.mint(basketManagerObj.mockToken1.address, 100000), "VM Exception while processing transaction: reverted with reason string 'ERC20: transfer amount exceeds balance'")];
                                case 1:
                                    _a.sent();
                                    return [2 /*return*/];
                            }
                        });
                    }); });
                });
                return [2 /*return*/];
            });
        }); });
        describe("mintTo", function () { return __awaiter(void 0, void 0, void 0, function () {
            var masset, basketManagerObj, token;
            return __generator(this, function (_a) {
                beforeEach(function () { return __awaiter(void 0, void 0, void 0, function () {
                    return __generator(this, function (_a) {
                        switch (_a.label) {
                            case 0: return [4 /*yield*/, MassetV3["new"]()];
                            case 1:
                                masset = _a.sent();
                                return [4 /*yield*/, createBasketManager(masset, [18, 18], [1, 1])];
                            case 2:
                                basketManagerObj = _a.sent();
                                return [4 /*yield*/, createToken(masset)];
                            case 3:
                                token = _a.sent();
                                return [4 /*yield*/, masset.initialize(basketManagerObj.basketManager.address, token.address, false)];
                            case 4:
                                _a.sent();
                                return [2 /*return*/];
                        }
                    });
                }); });
                context("should succeed", function () {
                    it("if all params are valid", function () { return __awaiter(void 0, void 0, void 0, function () {
                        var sum, tx, balance;
                        return __generator(this, function (_a) {
                            switch (_a.label) {
                                case 0:
                                    sum = "100000000000000000";
                                    return [4 /*yield*/, basketManagerObj.mockToken1.approve(masset.address, sum, {
                                            from: standardAccounts.dummy1
                                        })];
                                case 1:
                                    _a.sent();
                                    return [4 /*yield*/, masset.mintTo(basketManagerObj.mockToken1.address, sum, standardAccounts.dummy4, { from: standardAccounts.dummy1 })];
                                case 2:
                                    tx = _a.sent();
                                    return [4 /*yield*/, (0, test_helpers_1.expectEvent)(tx.receipt, "Minted", {
                                            minter: standardAccounts.dummy1,
                                            recipient: standardAccounts.dummy4,
                                            massetQuantity: sum,
                                            bAsset: basketManagerObj.mockToken1.address,
                                            bassetQuantity: sum
                                        })];
                                case 3:
                                    _a.sent();
                                    return [4 /*yield*/, token.balanceOf(standardAccounts.dummy4)];
                                case 4:
                                    balance = _a.sent();
                                    expect(balance.toString()).to.equal("" + sum);
                                    return [2 /*return*/];
                            }
                        });
                    }); });
                });
                return [2 /*return*/];
            });
        }); });
        describe("redeem", function () { return __awaiter(void 0, void 0, void 0, function () {
            var masset, basketManagerObj, token, mockTokenDummy;
            return __generator(this, function (_a) {
                beforeEach(function () { return __awaiter(void 0, void 0, void 0, function () {
                    return __generator(this, function (_a) {
                        switch (_a.label) {
                            case 0: return [4 /*yield*/, MassetV3["new"]()];
                            case 1:
                                masset = _a.sent();
                                return [4 /*yield*/, createToken(masset)];
                            case 2:
                                token = _a.sent();
                                return [4 /*yield*/, createBasketManager(masset, [18, 18], [1, 1])];
                            case 3:
                                basketManagerObj = _a.sent();
                                return [4 /*yield*/, masset.initialize(basketManagerObj.basketManager.address, token.address, false)];
                            case 4:
                                _a.sent();
                                return [4 /*yield*/, MockERC20["new"]("", "", 12, standardAccounts.dummy1, 1)];
                            case 5:
                                mockTokenDummy = _a.sent();
                                return [2 /*return*/];
                        }
                    });
                }); });
                context("should succeed", function () {
                    it("if all params are valid", function () { return __awaiter(void 0, void 0, void 0, function () {
                        var initialBalance, sum, balance, tx;
                        return __generator(this, function (_a) {
                            switch (_a.label) {
                                case 0:
                                    initialBalance = tokens(1);
                                    sum = new tools_1.BN(10).pow(new tools_1.BN(2));
                                    return [4 /*yield*/, basketManagerObj.mockToken1.approve(masset.address, sum, {
                                            from: standardAccounts.dummy1
                                        })];
                                case 1:
                                    _a.sent();
                                    return [4 /*yield*/, masset.mint(basketManagerObj.mockToken1.address, sum, {
                                            from: standardAccounts.dummy1
                                        })];
                                case 2:
                                    _a.sent();
                                    return [4 /*yield*/, token.balanceOf(standardAccounts.dummy1)];
                                case 3:
                                    balance = _a.sent();
                                    expect(balance).bignumber.to.equal(sum);
                                    return [4 /*yield*/, basketManagerObj.mockToken1.balanceOf(standardAccounts.dummy1)];
                                case 4:
                                    balance = _a.sent();
                                    expect(balance).bignumber.to.equal(initialBalance.sub(sum));
                                    return [4 /*yield*/, masset.redeem(basketManagerObj.mockToken1.address, sum, {
                                            from: standardAccounts.dummy1
                                        })];
                                case 5:
                                    tx = _a.sent();
                                    return [4 /*yield*/, (0, test_helpers_1.expectEvent)(tx.receipt, "Redeemed", {
                                            redeemer: standardAccounts.dummy1,
                                            recipient: standardAccounts.dummy1,
                                            massetQuantity: sum,
                                            bAsset: basketManagerObj.mockToken1.address,
                                            bassetQuantity: sum
                                        })];
                                case 6:
                                    _a.sent();
                                    return [4 /*yield*/, token.balanceOf(standardAccounts.dummy1)];
                                case 7:
                                    balance = _a.sent();
                                    expect(balance).bignumber.to.equal(tokens(0));
                                    return [4 /*yield*/, basketManagerObj.mockToken1.balanceOf(standardAccounts.dummy1)];
                                case 8:
                                    balance = _a.sent();
                                    expect(balance).bignumber.to.equal(initialBalance);
                                    return [2 /*return*/];
                            }
                        });
                    }); });
                });
                context("should fail", function () {
                    it("if basset is invalid", function () { return __awaiter(void 0, void 0, void 0, function () {
                        return __generator(this, function (_a) {
                            switch (_a.label) {
                                case 0: return [4 /*yield*/, (0, test_helpers_1.expectRevert)(masset.redeem(constants_1.ZERO_ADDRESS, 10), "VM Exception while processing transaction: reverted with reason string 'invalid basset'")];
                                case 1:
                                    _a.sent();
                                    return [2 /*return*/];
                            }
                        });
                    }); });
                    it("if basset is not in the basket", function () { return __awaiter(void 0, void 0, void 0, function () {
                        return __generator(this, function (_a) {
                            switch (_a.label) {
                                case 0: return [4 /*yield*/, (0, test_helpers_1.expectRevert)(masset.redeem(mockTokenDummy.address, 10), "VM Exception while processing transaction: reverted with reason string 'invalid basset'")];
                                case 1:
                                    _a.sent();
                                    return [2 /*return*/];
                            }
                        });
                    }); });
                    it("if amount is greater than the balance", function () { return __awaiter(void 0, void 0, void 0, function () {
                        return __generator(this, function (_a) {
                            switch (_a.label) {
                                case 0: return [4 /*yield*/, (0, test_helpers_1.expectRevert)(masset.redeem(basketManagerObj.mockToken1.address, 100000), "VM Exception while processing transaction: reverted with reason string 'basset balance is not sufficient'")];
                                case 1:
                                    _a.sent();
                                    return [2 /*return*/];
                            }
                        });
                    }); });
                });
                return [2 /*return*/];
            });
        }); });
        describe("redeemTo", function () { return __awaiter(void 0, void 0, void 0, function () {
            var masset, basketManagerObj, token;
            return __generator(this, function (_a) {
                beforeEach(function () { return __awaiter(void 0, void 0, void 0, function () {
                    return __generator(this, function (_a) {
                        switch (_a.label) {
                            case 0: return [4 /*yield*/, MassetV3["new"]()];
                            case 1:
                                masset = _a.sent();
                                return [4 /*yield*/, createToken(masset)];
                            case 2:
                                token = _a.sent();
                                return [4 /*yield*/, createBasketManager(masset, [18, 18], [1, 1])];
                            case 3:
                                basketManagerObj = _a.sent();
                                return [4 /*yield*/, masset.initialize(basketManagerObj.basketManager.address, token.address, false)];
                            case 4:
                                _a.sent();
                                return [2 /*return*/];
                        }
                    });
                }); });
                context("should fail", function () {
                    it("when recipient is not valid", function () { return __awaiter(void 0, void 0, void 0, function () {
                        return __generator(this, function (_a) {
                            switch (_a.label) {
                                case 0: return [4 /*yield*/, (0, test_helpers_1.expectRevert)(masset.redeemTo(basketManagerObj.mockToken1.address, tokens(10), constants_1.ZERO_ADDRESS, { from: standardAccounts.dummy1 }), "VM Exception while processing transaction: reverted with reason string 'must be a valid recipient'")];
                                case 1:
                                    _a.sent();
                                    return [2 /*return*/];
                            }
                        });
                    }); });
                });
                context("should succeed", function () {
                    it("if all params are valid", function () { return __awaiter(void 0, void 0, void 0, function () {
                        var sum, recipient, balance;
                        return __generator(this, function (_a) {
                            switch (_a.label) {
                                case 0:
                                    sum = new tools_1.BN(10).pow(new tools_1.BN(2));
                                    recipient = standardAccounts.dummy2;
                                    return [4 /*yield*/, basketManagerObj.mockToken1.approve(masset.address, sum, { from: standardAccounts.dummy1 })];
                                case 1:
                                    _a.sent();
                                    return [4 /*yield*/, masset.mint(basketManagerObj.mockToken1.address, sum, { from: standardAccounts.dummy1 })];
                                case 2:
                                    _a.sent();
                                    return [4 /*yield*/, masset.redeemTo(basketManagerObj.mockToken1.address, sum, recipient, { from: standardAccounts.dummy1 })];
                                case 3:
                                    _a.sent();
                                    return [4 /*yield*/, basketManagerObj.mockToken1.balanceOf(recipient)];
                                case 4:
                                    balance = _a.sent();
                                    expect(balance).bignumber.to.equal(sum, "should transfer bassets to correct recipient");
                                    return [2 /*return*/];
                            }
                        });
                    }); });
                });
                return [2 /*return*/];
            });
        }); });
        describe("redeemToBridge", function () { return __awaiter(void 0, void 0, void 0, function () {
            var masset, basketManagerObj, token, mockBridge;
            return __generator(this, function (_a) {
                beforeEach(function () { return __awaiter(void 0, void 0, void 0, function () {
                    return __generator(this, function (_a) {
                        switch (_a.label) {
                            case 0: return [4 /*yield*/, MassetV3["new"]()];
                            case 1:
                                masset = _a.sent();
                                return [4 /*yield*/, createToken(masset)];
                            case 2:
                                token = _a.sent();
                                return [4 /*yield*/, MockBridge["new"]()];
                            case 3:
                                mockBridge = _a.sent();
                                return [4 /*yield*/, createBasketManager(masset, [18, 18], [1, 1], [mockBridge.address, mockBridge.address])];
                            case 4:
                                basketManagerObj = _a.sent();
                                return [4 /*yield*/, masset.initialize(basketManagerObj.basketManager.address, token.address, false, { from: standardAccounts["default"] })];
                            case 5:
                                _a.sent();
                                return [4 /*yield*/, basketManagerObj.mockToken1.approve(masset.address, tokens(1), { from: standardAccounts.dummy1 })];
                            case 6:
                                _a.sent();
                                return [4 /*yield*/, masset.mint(basketManagerObj.mockToken1.address, tokens(1), { from: standardAccounts.dummy1 })];
                            case 7:
                                _a.sent();
                                return [2 /*return*/];
                        }
                    });
                }); });
                context("should fail", function () {
                    it("when bridge is not valid", function () { return __awaiter(void 0, void 0, void 0, function () {
                        return __generator(this, function (_a) {
                            switch (_a.label) {
                                case 0: return [4 /*yield*/, basketManagerObj.basketManager.setBridge(basketManagerObj.mockToken1.address, constants_1.ZERO_ADDRESS, { from: standardAccounts["default"] })];
                                case 1:
                                    _a.sent();
                                    return [4 /*yield*/, (0, test_helpers_1.expectRevert)(masset.methods["redeemToBridge(address,uint256,address)"](basketManagerObj.mockToken1.address, tokens(1), standardAccounts.dummy2, { from: standardAccounts.dummy1 }), "VM Exception while processing transaction: reverted with reason string 'invalid bridge'")];
                                case 2:
                                    _a.sent();
                                    return [2 /*return*/];
                            }
                        });
                    }); });
                });
                context("should succeed", function () {
                    it("if all params are valid", function () { return __awaiter(void 0, void 0, void 0, function () {
                        var bridgeBalance;
                        return __generator(this, function (_a) {
                            switch (_a.label) {
                                case 0: return [4 /*yield*/, masset.methods["redeemToBridge(address,uint256,address)"](basketManagerObj.mockToken1.address, tokens(1), standardAccounts.dummy2, { from: standardAccounts.dummy1 })];
                                case 1:
                                    _a.sent();
                                    return [4 /*yield*/, getBalance(basketManagerObj.mockToken1, mockBridge.address)];
                                case 2:
                                    bridgeBalance = _a.sent();
                                    expect(bridgeBalance).to.bignumber.eq(tokens(1), "should transfers bassets to bridge");
                                    return [2 /*return*/];
                            }
                        });
                    }); });
                });
                return [2 /*return*/];
            });
        }); });
        describe("onTokensMinted", function () { return __awaiter(void 0, void 0, void 0, function () {
            var masset, basketManagerObj, token, mockBridge, encodedRecipientAddress;
            return __generator(this, function (_a) {
                beforeEach(function () { return __awaiter(void 0, void 0, void 0, function () {
                    return __generator(this, function (_a) {
                        switch (_a.label) {
                            case 0: return [4 /*yield*/, MassetV3["new"]()];
                            case 1:
                                masset = _a.sent();
                                return [4 /*yield*/, createToken(masset)];
                            case 2:
                                token = _a.sent();
                                return [4 /*yield*/, MockBridge["new"]()];
                            case 3:
                                mockBridge = _a.sent();
                                encodedRecipientAddress = web3.eth.abi.encodeParameters(['bytes'], [standardAccounts.dummy1]);
                                return [4 /*yield*/, createBasketManager(masset, [18, 18], [1, 1], [mockBridge.address, mockBridge.address])];
                            case 4:
                                basketManagerObj = _a.sent();
                                return [4 /*yield*/, masset.initialize(basketManagerObj.basketManager.address, token.address, false)];
                            case 5:
                                _a.sent();
                                return [2 /*return*/];
                        }
                    });
                }); });
                context("should fail", function () { return __awaiter(void 0, void 0, void 0, function () {
                    return __generator(this, function (_a) {
                        it("when it's not called by bridge", function () { return __awaiter(void 0, void 0, void 0, function () {
                            return __generator(this, function (_a) {
                                switch (_a.label) {
                                    case 0: return [4 /*yield*/, (0, test_helpers_1.expectRevert)(masset.onTokensMinted(tokens(1), basketManagerObj.mockToken1.address, encodedRecipientAddress, { from: standardAccounts["default"] }), "VM Exception while processing transaction: reverted with reason string 'only bridge may call'")];
                                    case 1:
                                        _a.sent();
                                        return [2 /*return*/];
                                }
                            });
                        }); });
                        it("when recipient address is invalid", function () { return __awaiter(void 0, void 0, void 0, function () {
                            return __generator(this, function (_a) {
                                switch (_a.label) {
                                    case 0: return [4 /*yield*/, (0, test_helpers_1.expectRevert)(mockBridge.callOnTokensMinted(masset.address, tokens(1), basketManagerObj.mockToken1.address, constants_1.ZERO_ADDRESS, { from: standardAccounts["default"] }), "VM Exception while processing transaction: reverted with reason string 'Converter: Error decoding extraData'")];
                                    case 1:
                                        _a.sent();
                                        return [2 /*return*/];
                                }
                            });
                        }); });
                        it("when amount is zero", function () { return __awaiter(void 0, void 0, void 0, function () {
                            return __generator(this, function (_a) {
                                switch (_a.label) {
                                    case 0: return [4 /*yield*/, (0, test_helpers_1.expectRevert)(mockBridge.callOnTokensMinted(masset.address, tokens(0), basketManagerObj.mockToken1.address, standardAccounts.dummy1, { from: standardAccounts["default"] }), "VM Exception while processing transaction: reverted with reason string 'amount must be > 0'")];
                                    case 1:
                                        _a.sent();
                                        return [2 /*return*/];
                                }
                            });
                        }); });
                        it("when basset is invalid", function () { return __awaiter(void 0, void 0, void 0, function () {
                            return __generator(this, function (_a) {
                                switch (_a.label) {
                                    case 0: return [4 /*yield*/, (0, test_helpers_1.expectRevert)(mockBridge.callOnTokensMinted(masset.address, tokens(1), standardAccounts.other, standardAccounts.dummy1, { from: standardAccounts["default"] }), "VM Exception while processing transaction: reverted with reason string 'invalid basset'")];
                                    case 1:
                                        _a.sent();
                                        return [2 /*return*/];
                                }
                            });
                        }); });
                        it("when basket is out of balance", function () { return __awaiter(void 0, void 0, void 0, function () {
                            return __generator(this, function (_a) {
                                switch (_a.label) {
                                    case 0: return [4 /*yield*/, basketManagerObj.basketManager.setRange(basketManagerObj.mockToken1.address, 0, 10, { from: standardAccounts["default"] })];
                                    case 1:
                                        _a.sent();
                                        return [4 /*yield*/, (0, test_helpers_1.expectRevert)(mockBridge.callOnTokensMinted(masset.address, tokens(10000), basketManagerObj.mockToken1.address, standardAccounts.dummy1, { from: standardAccounts["default"] }), "VM Exception while processing transaction: reverted with reason string 'basket out of balance'")];
                                    case 2:
                                        _a.sent();
                                        return [2 /*return*/];
                                }
                            });
                        }); });
                        return [2 /*return*/];
                    });
                }); });
                context("should succeed", function () { return __awaiter(void 0, void 0, void 0, function () {
                    return __generator(this, function (_a) {
                        it("whit all valid params", function () { return __awaiter(void 0, void 0, void 0, function () {
                            var recipient, amount, recepit, balance;
                            return __generator(this, function (_a) {
                                switch (_a.label) {
                                    case 0:
                                        recipient = standardAccounts.dummy1;
                                        amount = tokens(1);
                                        return [4 /*yield*/, mockBridge.callOnTokensMinted(masset.address, tokens(1), basketManagerObj.mockToken1.address, recipient, { from: standardAccounts["default"] })];
                                    case 1:
                                        recepit = _a.sent();
                                        return [4 /*yield*/, test_helpers_1.expectEvent.inTransaction(recepit.tx, MassetV3, "Minted", {
                                                minter: mockBridge.address,
                                                recipient: recipient,
                                                massetQuantity: amount,
                                                bAsset: basketManagerObj.mockToken1.address,
                                                bassetQuantity: amount
                                            }, {})];
                                    case 2:
                                        _a.sent();
                                        return [4 /*yield*/, token.balanceOf(recipient)];
                                    case 3:
                                        balance = _a.sent();
                                        expect(balance, "should mint proper amount of tokens to recipient").bignumber.to.eq(amount);
                                        return [2 /*return*/];
                                }
                            });
                        }); });
                        return [2 /*return*/];
                    });
                }); });
                return [2 /*return*/];
            });
        }); });
        describe("precision conversion", function () { return __awaiter(void 0, void 0, void 0, function () {
            var masset, basketManagerObj, token;
            return __generator(this, function (_a) {
                beforeEach(function () { return __awaiter(void 0, void 0, void 0, function () {
                    return __generator(this, function (_a) {
                        switch (_a.label) {
                            case 0: return [4 /*yield*/, MassetV3["new"]()];
                            case 1:
                                masset = _a.sent();
                                return [4 /*yield*/, createToken(masset)];
                            case 2:
                                token = _a.sent();
                                return [4 /*yield*/, createBasketManager(masset, [20, 12], [100, -1000000])];
                            case 3:
                                basketManagerObj = _a.sent();
                                return [4 /*yield*/, masset.initialize(basketManagerObj.basketManager.address, token.address, false)];
                            case 4:
                                _a.sent();
                                return [2 /*return*/];
                        }
                    });
                }); });
                it("works both ways", function () { return __awaiter(void 0, void 0, void 0, function () {
                    var initialToken1Balance, initialToken2Balance, _a, _b, _c, _d, _e, _f, _g, _h;
                    return __generator(this, function (_j) {
                        switch (_j.label) {
                            case 0:
                                initialToken1Balance = new tools_1.BN(10).pow(new tools_1.BN(20));
                                initialToken2Balance = new tools_1.BN(10).pow(new tools_1.BN(12));
                                _a = expect;
                                return [4 /*yield*/, getBalance(basketManagerObj.mockToken1, standardAccounts.dummy1)];
                            case 1:
                                _a.apply(void 0, [_j.sent()]).bignumber.to.equal(initialToken1Balance);
                                _b = expect;
                                return [4 /*yield*/, getBalance(basketManagerObj.mockToken2, standardAccounts.dummy1)];
                            case 2:
                                _b.apply(void 0, [_j.sent()]).bignumber.to.equal(initialToken2Balance);
                                return [4 /*yield*/, basketManagerObj.mockToken1.approve(masset.address, initialToken1Balance, {
                                        from: standardAccounts.dummy1
                                    })];
                            case 3:
                                _j.sent();
                                return [4 /*yield*/, masset.mint(basketManagerObj.mockToken1.address, initialToken1Balance, {
                                        from: standardAccounts.dummy1
                                    })];
                            case 4:
                                _j.sent();
                                return [4 /*yield*/, basketManagerObj.mockToken2.approve(masset.address, initialToken2Balance, {
                                        from: standardAccounts.dummy1
                                    })];
                            case 5:
                                _j.sent();
                                return [4 /*yield*/, masset.mint(basketManagerObj.mockToken2.address, initialToken2Balance, {
                                        from: standardAccounts.dummy1
                                    })];
                            case 6:
                                _j.sent();
                                _c = expect;
                                return [4 /*yield*/, getBalance(token, standardAccounts.dummy1)];
                            case 7:
                                _c.apply(void 0, [_j.sent()]).bignumber.to.equal(tokens(2));
                                _d = expect;
                                return [4 /*yield*/, getBalance(basketManagerObj.mockToken1, standardAccounts.dummy1)];
                            case 8:
                                _d.apply(void 0, [_j.sent()]).bignumber.to.equal(tokens(0));
                                _e = expect;
                                return [4 /*yield*/, getBalance(basketManagerObj.mockToken2, standardAccounts.dummy1)];
                            case 9:
                                _e.apply(void 0, [_j.sent()]).bignumber.to.equal(tokens(0));
                                return [4 /*yield*/, token.transfer(standardAccounts.dummy2, tokens(1), {
                                        from: standardAccounts.dummy1
                                    })];
                            case 10:
                                _j.sent();
                                _f = expect;
                                return [4 /*yield*/, getBalance(token, standardAccounts.dummy1)];
                            case 11:
                                _f.apply(void 0, [_j.sent()]).bignumber.to.equal(tokens(1));
                                return [4 /*yield*/, masset.redeem(basketManagerObj.mockToken2.address, tokens(1), {
                                        from: standardAccounts.dummy2
                                    })];
                            case 12:
                                _j.sent();
                                _g = expect;
                                return [4 /*yield*/, getBalance(token, standardAccounts.dummy2)];
                            case 13:
                                _g.apply(void 0, [_j.sent()]).bignumber.to.equal(tokens(0));
                                _h = expect;
                                return [4 /*yield*/, getBalance(basketManagerObj.mockToken2, standardAccounts.dummy2)];
                            case 14:
                                _h.apply(void 0, [_j.sent()]).bignumber.to.equal(initialToken2Balance);
                                return [2 /*return*/];
                        }
                    });
                }); });
                return [2 /*return*/];
            });
        }); });
        return [2 /*return*/];
    });
}); });
var zeroBridges = [constants_1.ZERO_ADDRESS, constants_1.ZERO_ADDRESS];
function createBasketManager(masset, decimals, factors, bridges) {
    if (bridges === void 0) { bridges = zeroBridges; }
    return __awaiter(this, void 0, void 0, function () {
        var mockToken1, mockToken2, bassets, mins, maxs, pauses, basketManager;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0: return [4 /*yield*/, MockERC20["new"]("", "", decimals[0], standardAccounts.dummy1, 1, { from: standardAccounts["default"] })];
                case 1:
                    mockToken1 = _a.sent();
                    return [4 /*yield*/, MockERC20["new"]("", "", decimals[1], standardAccounts.dummy1, 1, { from: standardAccounts["default"] })];
                case 2:
                    mockToken2 = _a.sent();
                    bassets = [mockToken1.address, mockToken2.address];
                    mins = [0, 0];
                    maxs = [1000, 1000];
                    pauses = [false, false];
                    return [4 /*yield*/, BasketManagerV3["new"]({ from: standardAccounts["default"] })];
                case 3:
                    basketManager = _a.sent();
                    return [4 /*yield*/, basketManager.initialize(masset.address, { from: standardAccounts["default"] })];
                case 4:
                    _a.sent();
                    return [4 /*yield*/, basketManager.addBassets(bassets, factors, bridges, mins, maxs, pauses, { from: standardAccounts["default"] })];
                case 5:
                    _a.sent();
                    return [2 /*return*/, {
                            mockToken1: mockToken1,
                            mockToken2: mockToken2,
                            bassets: bassets,
                            basketManager: basketManager
                        }];
            }
        });
    });
}
function createToken(masset) {
    return __awaiter(this, void 0, void 0, function () {
        var token;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0: return [4 /*yield*/, Token["new"]("Mock1", "MK1", 18)];
                case 1:
                    token = _a.sent();
                    token.transferOwnership(masset.address);
                    return [2 /*return*/, token];
            }
        });
    });
}
function getBalance(token, who) {
    return __awaiter(this, void 0, void 0, function () {
        return __generator(this, function (_a) {
            return [2 /*return*/, token.balanceOf(who)];
        });
    });
}
