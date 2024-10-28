import { task, types } from "hardhat/config";
import { deployContract } from "../scripts/utils/deploy";
import { verifyContract } from "../scripts/utils/verify";
import { EmitterName } from "../configs/constants";
import { emitAllEvents } from "../scripts/emitter/Emitter.script";

// DEPLOYMENT

task("EmitterDeploy", "Deploy Emitter contract").setAction(
  async (args, hre) => {
    await hre.run("compile");
    await deployContract(hre, EmitterName, []);
  }
);

task("EmitterVerify", "Verify Emitter contract").setAction(
  async (args, hre) => {
    await verifyContract(hre, EmitterName, []);
  }
);

// WRITE TASKS

task("EmitterEmitAllEvents", "Emit all defined events").setAction(
  async (args, hre) => {
    await emitAllEvents(hre);
  }
);
