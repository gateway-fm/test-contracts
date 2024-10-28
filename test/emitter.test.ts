import { loadFixture } from "@nomicfoundation/hardhat-network-helpers";
import { expect } from "chai";
import { ethers } from "hardhat";
import { EmitterName } from "../configs/constants";

describe.skip("Emitter unit tests", function () {
  async function deployContractsFixture() {
    const emitter = await ethers.deployContract(EmitterName);
    await emitter.waitForDeployment();

    return {
      emitter,
    };
  }

  describe("Deploy", function () {
    it("Should deploy with proper address", async function () {
      const { emitter } = await loadFixture(deployContractsFixture);

      expect(await emitter.getAddress()).to.be.properAddress;
    });
  });

  describe("Emit", function () {
    it("Should emit struct event", async function () {
      const { emitter } = await loadFixture(deployContractsFixture);

      const tx = await emitter.emitAllEvents();

      await expect(tx).to.emit(emitter, "StructEvent");

      const block = await tx.getBlock();

      // const logs = await emitter.queryFilter(emitter.filters.StructEvent);
      // console.log(logs);
    });
  });
});
