import { task } from "hardhat/config";
import { deployContract } from "../scripts/utils/deploy";
import { verifyContract } from "../scripts/utils/verify";
import { UniversalEmitterName } from "../configs/constants";

// DEPLOYMENT

task("UniversalEmitterDeploy", "Deploy Emitter contract").setAction(async (args, hre) => {
  await hre.run("compile");
  await deployContract(hre, UniversalEmitterName, []);
});

task("UniversalEmitterVerify", "Verify Emitter contract").setAction(async (args, hre) => {
  await verifyContract(hre, UniversalEmitterName, []);
});
