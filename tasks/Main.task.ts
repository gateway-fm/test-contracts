import { task, types } from "hardhat/config";
import { saveContractAbi } from "../scripts/utils/contractData";

task("SaveContractABI", "Save contract ABI")
  .addParam("name", "Name of the contract", "", types.string)
  .setAction(async (args, hre) => {
    await hre.run("compile");
    const art = hre.artifacts.readArtifactSync(args.name);
    saveContractAbi(art.abi, hre.network.name, args.name);
  });

task("Balance", "Check deployer balance").setAction(async (args, hre) => {
  const [deployer] = await hre.ethers.getSigners();
  const balance = await hre.ethers.provider.getBalance(deployer);
  console.log(`Address: ${deployer.address}, balance: ${hre.ethers.formatEther(balance)}`);
});
