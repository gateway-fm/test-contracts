/*import { HardhatRuntimeEnvironment } from "hardhat/types";
import { getContractRegisterContract } from "./utils/getContracts";
import { ContractRegister } from "../typechain-types";
import { ContractRegisterName } from "../configs/constants";
import { deployContract, deployProxy } from "./utils/deploy";
import { oracleAddress } from "../configs/config";

export async function deploy(hre: HardhatRuntimeEnvironment) {
  console.log("-------- DEPLOY CONTRACT REGISTRY --------");
  await deployContract(hre, ContractRegisterName, []);
  const contractRegister = await getContractRegisterContract(hre);

  console.log("-------- SET ORACLE ADDRESSES --------");
  await contractRegister.setOracle(oracleAddress);

  console.log("-------- DEPLOY SUCCESS --------");
}

async function _deployAndSetAddress(
  hre: HardhatRuntimeEnvironment,
  contractName: string,
  args: unknown[],
  contractRegister: ContractRegister,
) {
  const { proxyAddress, implementationAddress, adminAddress } = await deployProxy(hre, contractName, args);
  if (
    hre.ethers.isAddress(proxyAddress) &&
    hre.ethers.isAddress(implementationAddress) &&
    hre.ethers.isAddress(adminAddress)
  ) {
    await contractRegister.setContract(contractName.replace("Test", ""), proxyAddress);
  } else {
    throw new Error(`Invalid addresses of ${contractName} proxy, deploy reverted`);
  }
  return proxyAddress;
}
*/
