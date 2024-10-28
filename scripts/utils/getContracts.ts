import { HardhatRuntimeEnvironment } from "hardhat/types";
import { getContractAddress } from "./contractData";
import { EmitterName, TestValueEmitterName } from "../../configs/constants";
import { Emitter, TestValueEmitter } from "../../typechain-types";

export async function getEmitterContract(hre: HardhatRuntimeEnvironment) {
  return (await getContract(hre, EmitterName)) as unknown as Emitter;
}

export async function getTestValueEmitterContract(
  hre: HardhatRuntimeEnvironment
) {
  return (await getContract(
    hre,
    TestValueEmitterName
  )) as unknown as TestValueEmitter;
}

export async function getContract(
  hre: HardhatRuntimeEnvironment,
  contractName: string
) {
  try {
    const address = getContractAddress(hre, contractName);
    return await hre.ethers.getContractAt(contractName, address);
  } catch (e) {
    throw new Error(`Get contract ${contractName} err: ${e}`);
  }
}
