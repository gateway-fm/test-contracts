import { HardhatRuntimeEnvironment } from "hardhat/types";
import { getContractAddress } from "./contractData";

export async function verifyContract(hre: HardhatRuntimeEnvironment, contractName: string, args: unknown[]) {
  const contractAddress = getContractAddress(hre, contractName);

  // Сhecking the correctness of the address
  if (!hre.ethers.isAddress(contractAddress)) {
    throw new Error(`Error invalid contract ${contractName} address: ${contractAddress}`);
  }

  console.log(`Verifying contract ${contractName} with address ${contractAddress} on ${hre.network.name} network`);

  try {
    await hre.run("verify:verify", {
      address: contractAddress,
      constructorArguments: args,
    });
  } catch (e) {
    const err = e as Error;
    console.error("An error occurred while verifying contract: ", err.message);
  }
}

export async function verifyProxy(hre: HardhatRuntimeEnvironment, contractName: string) {
  const contractAddress = getContractAddress(hre, contractName);

  // Сhecking the correctness of the address
  if (!hre.ethers.isAddress(contractAddress)) {
    throw new Error(`Error invalid contract ${contractName} proxy address: ${contractAddress}`);
  }

  console.log(
    `Verifying proxy contract ${contractName} with address ${contractAddress} on ${hre.network.name} network`,
  );

  try {
    await hre.run("verify:verify", {
      address: contractAddress,
    });
  } catch (e) {
    const err = e as Error;
    console.error("An error occurred while verifying proxy contract: ", err.message);
  }
}
