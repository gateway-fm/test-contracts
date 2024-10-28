import { HardhatRuntimeEnvironment } from "hardhat/types";
import { getContractAddress, saveContractAbi } from "./contractData";
import { Contract } from "ethers";

export async function upgradeProxy(hre: HardhatRuntimeEnvironment, contractName: string) {
  const [deployer] = await hre.ethers.getSigners();

  console.log(contractName);

  const proxyAddress = getContractAddress(hre, contractName);

  if (!hre.ethers.isAddress(proxyAddress)) {
    throw new Error("Invalid proxy address, deploy reverted");
  }

  const oldImplementationAddress = await hre.upgrades.erc1967.getImplementationAddress(proxyAddress);

  if (!hre.ethers.isAddress(deployer.address)) {
    throw new Error("Invalid address of deployer, deploy reverted");
  }

  console.log(`Upgrading contract ${contractName} with address ${deployer.address}`);

  let contract: Contract;

  try {
    const UpgradeContractFactory = await hre.ethers.getContractFactory(contractName);
    contract = await hre.upgrades.upgradeProxy(proxyAddress, UpgradeContractFactory);
  } catch (e) {
    const err = e as Error;
    console.error("Error occurred while proxy upgrade:", err.message);
    return;
  }

  console.log("Waiting 10 seconds before implementation address updating...");
  await new Promise(f => setTimeout(f, 10000));

  const implementationAddress = await hre.upgrades.erc1967.getImplementationAddress(proxyAddress);
  if (oldImplementationAddress == implementationAddress) {
    throw new Error("Implementation address was not updated after 10 sec.");
  }

  console.log(`Proxy-contract: ${contractName}, with address: ${proxyAddress} was upgraded`);
  console.log(`New implementation address: ${implementationAddress}`);

  const networkName = hre.network.name;
  if (networkName != "hardhat" && networkName != "localhost") {
    saveContractAbi(contract.interface.formatJson(), networkName, contractName);

    console.log("Waiting 15 seconds before etherscan verification...");
    await new Promise(f => setTimeout(f, 15000));

    console.log(`Verifying new implementation of ${contractName}...`);

    try {
      await hre.run("verify:verify", {
        address: implementationAddress,
      });
    } catch (e) {
      const err = e as Error;
      console.error("An error occurred while verifying new implementation: ", err.message);
    }
  }
}

export async function importToManifest(hre: HardhatRuntimeEnvironment, contractName: string) {
  const contractAddressProxy = getContractAddress(hre, contractName);

  const contractImplFactory = await hre.ethers.getContractFactory(contractName);

  await hre.upgrades.forceImport(contractAddressProxy, contractImplFactory);
}

export async function validateUpgradeContract(hre: HardhatRuntimeEnvironment, contractName: string) {
  const contractAddressProxy = getContractAddress(hre, contractName);

  const contractImplFactory = await hre.ethers.getContractFactory(contractName);

  try {
    await hre.upgrades.validateUpgrade(contractAddressProxy, contractImplFactory);
  } catch (e) {
    const err = e as Error;
    throw new Error(`Upgrade validation: ${err.message}`);
  }
  console.log("Success validation");
}
