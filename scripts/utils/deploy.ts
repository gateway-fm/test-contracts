import { HardhatRuntimeEnvironment } from "hardhat/types";
import { saveContractData } from "./contractData";

export async function deployContract(hre: HardhatRuntimeEnvironment, contractName: string, args: unknown[]) {
  const [deployer] = await hre.ethers.getSigners();

  if (!hre.ethers.isAddress(deployer.address)) {
    throw new Error("Invalid address of deployer, deploy reverted");
  }

  console.log(
    `Deploying contract ${contractName} to ${hre.network.name} network. Deployer address ${deployer.address}`,
  );

  const art = await hre.artifacts.readArtifact(contractName);

  const contractFactory = await hre.ethers.getContractFactoryFromArtifact(art);
  const deployTx = await contractFactory.getDeployTransaction(...args);

  const gas = await hre.ethers.provider.estimateGas({ data: deployTx.data });

  console.log(`Deployment estimation gas ${gas.toString()}`);

  const deployerBalance = await hre.ethers.provider.getBalance(deployer.address);

  console.log(`Deployer balance ${hre.ethers.formatEther(deployerBalance)}`);

  const contract = await hre.ethers.deployContract(contractName, args);
  await contract.waitForDeployment();

  const contractAddress = await contract.getAddress();

  console.log(`Contract ${contractName} deployed to address ${contractAddress}`);

  const chainId = hre.network.config.chainId ?? 0;
  const networkName = hre.network.name;
  saveContractData(chainId, networkName, art, contractAddress, contractName);

  if (networkName != "hardhat" && networkName != "localhost") {
    console.log("Waiting 15 seconds before etherscan verification...");
    await new Promise(f => setTimeout(f, 15000));

    try {
      await hre.run("verify:verify", {
        address: contractAddress,
        constructorArguments: args,
      });
    } catch (e) {
      const err = e as Error;
      console.log("Error occured while verification: ", err.message);
    }
  }
  return contractAddress;
}
