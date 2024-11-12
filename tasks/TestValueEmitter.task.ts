import { task } from "hardhat/config";
import { deployContract } from "../scripts/utils/deploy";
import { verifyContract } from "../scripts/utils/verify";
import { TestValueEmitterName } from "../configs/constants";
import {
  emitBytesEvents,
  emitIntEvents,
  emitMixedEvents,
  emitUintEvents,
} from "../scripts/testEmitters/TestValueEmitter.script";

// DEPLOYMENT

task("TestValueEmitterDeploy", "Deploy TestValueEmitter contract").setAction(async (args, hre) => {
  await hre.run("compile");
  await deployContract(hre, TestValueEmitterName, []);
});

task("TestValueEmitterVerify", "Verify TestValueEmitter contract").setAction(async (args, hre) => {
  await verifyContract(hre, TestValueEmitterName, []);
});

// WRITE TASKS

task("TestValueEmitterEmitIntEvents", "Emit int events").setAction(async (args, hre) => {
  await emitIntEvents(hre);
});

task("TestValueEmitterEmitUintEvents", "Emit uint events").setAction(async (args, hre) => {
  await emitUintEvents(hre);
});

task("TestValueEmitterEmitBytesEvents", "Emit bytes events").setAction(async (args, hre) => {
  await emitBytesEvents(hre);
});

task("TestValueEmitterEmitMixedEvents", "Emit mixed events").setAction(async (args, hre) => {
  await emitMixedEvents(hre);
});
