import { loadFixture } from "@nomicfoundation/hardhat-network-helpers";
import { expect } from "chai";
import { ethers } from "hardhat";
import { TestValueEmitterName } from "../configs/constants";
import { bytesStruct, intStruct, mixedStruct, uintStruct } from "./testData";

describe.only("Value Emitter unit tests", function () {
  async function deployContractsFixture() {
    const emitter = await ethers.deployContract(TestValueEmitterName);
    await emitter.waitForDeployment();

    return {
      emitter,
    };
  }

  describe("Emit", function () {
    it("Should emit Int events", async function () {
      const { emitter } = await loadFixture(deployContractsFixture);

      const tx = await emitter.emitIntEvents(intStruct);

      await expect(tx).to.emit(emitter, "IntEvent1");
      await expect(tx).to.emit(emitter, "IntEvent2");
      await expect(tx).to.emit(emitter, "IntEvent3");

      const logs = await emitter.queryFilter(emitter.filters.IntEvent2);
      console.log(logs);
    });

    it("Should emit Uint events", async function () {
      const { emitter } = await loadFixture(deployContractsFixture);

      const tx = await emitter.emitUintEvents(uintStruct);

      await expect(tx).to.emit(emitter, "UintEvent1");
      await expect(tx).to.emit(emitter, "UintEvent2");
      await expect(tx).to.emit(emitter, "UintEvent3");
    });

    it("Should emit fixed Bytes events", async function () {
      const { emitter } = await loadFixture(deployContractsFixture);

      const tx = await emitter.emitBytesEvents(bytesStruct);

      await expect(tx).to.emit(emitter, "BytesEvent1");
      await expect(tx).to.emit(emitter, "BytesEvent2");
      await expect(tx).to.emit(emitter, "BytesEvent3");
    });

    it("Should emit mixed event", async function () {
      const { emitter } = await loadFixture(deployContractsFixture);

      const tx = await emitter.emitMixedEvent(mixedStruct);

      await expect(tx).to.emit(emitter, "MixedEvent");

      // const logs = await emitter.queryFilter(emitter.filters.MixedEvent);
      // console.log(logs);
    });
  });
});
