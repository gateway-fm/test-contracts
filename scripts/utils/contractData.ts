import path from "path";
import fs from "fs";
import { ContractFactory } from "ethers";
import {
  Artifact,
  CompilerInput,
  HardhatRuntimeEnvironment,
} from "hardhat/types";
import {
  abisDir,
  addressesDir,
  binsDir,
  contractsInfoDir,
} from "../../configs/constants";

/**
 * saveContractData is used to save all necessary contract data after deploy.
 * Saves contract address. In case of prod networks also saves abi and bytecode.
 *
 * @param chainId - chain Id of the network on which the contract was deployed;
 * @param networkName - name of the network on which the contract was deployed
 * @param artifact - artifact of the deployed contract (contain abi, bytecode and other contract info)
 * @param contractAddress - address of deployed contract;
 * @param contractName - name of deployed contract.
 */
export function saveContractData(
  chainId: number,
  networkName: string,
  artifact: Artifact,
  contractAddress: string,
  contractName: string
) {
  saveContractAddress(chainId, networkName, contractAddress, contractName);
  if (networkName != "hardhat" && networkName != "localhost") {
    saveContractAbi(artifact.abi, networkName, contractName);
    saveContractByteCode(artifact.bytecode, networkName, contractName);
  }
}

/**
 * saveContractAddress is used to save contract address after deploy.
 * Saves contract address to root/contracts/addresses/[chainId]-[networkName].json
 *
 * @param chainId - chain Id of the network on which the contract was deployed;
 * @param networkName - name of the network on which the contract was deployed;
 * @param contractAddress - address of deployed contract;
 * @param contractName - name of deployed contract.
 */
export function saveContractAddress(
  chainId: number,
  networkName: string,
  contractAddress: string,
  contractName: string
) {
  ensureDir(addressesDir);

  const filePath = path.join(addressesDir, `${chainId}-${networkName}.json`);

  let contractAddresses;

  if (!fs.existsSync(filePath)) {
    contractAddresses = { [contractName]: contractAddress };
  } else {
    try {
      contractAddresses = JSON.parse(fs.readFileSync(filePath).toString());
    } catch (e) {
      throw new Error(`Parse file: ${e}`);
    }

    contractAddresses[contractName] = contractAddress;
  }
  try {
    fs.writeFileSync(filePath, JSON.stringify(contractAddresses, undefined, 2));
  } catch (e) {
    throw new Error(`Save address: ${e}`);
  }
}

/**
 * saveContractByteCode is used to save contract bytecode after deploy.
 * Saves contract bytecode to root/contracts/bins/networkName/[contractName]-bytecode.json
 *
 * @param bytecode - bytecode of the contract;
 * @param networkName - name of the network on which the contract was deployed;
 * @param contractName - name of the contract.
 */
export function saveContractByteCode(
  bytecode: string,
  networkName: string,
  contractName: string
) {
  const networkDir = path.join(binsDir, networkName);
  ensureDir(networkDir);

  try {
    fs.writeFileSync(
      path.join(networkDir, `${contractName}-bytecode.bin`),
      bytecode
    );
  } catch (e) {
    const err = e as Error;
    throw new Error(`Save contract bytecode: ${err.message}`);
  }
}

/**
 * saveContractAbi is used to save contract abi after deploy.
 * Saves contract address to root/contracts/abis/networkName/[contractName]-abi.json
 *
 * @param contractAbi - abi of the contract;
 * @param networkName - name of the network on which the contract was deployed;
 * @param contractName - name of the contract.
 */
export function saveContractAbi(
  contractAbi: any,
  networkName: string,
  contractName: string
) {
  const networkDir = path.join(abisDir, networkName);
  ensureDir(networkDir);

  try {
    fs.writeFileSync(
      path.join(networkDir, `${contractName}-abi.json`),
      JSON.stringify(contractAbi, undefined, 2)
    );
  } catch (e) {
    throw new Error(`Save abi ${e}`);
  }
}
/**
 * saveContractInfo is used to save contract information after compiling.
 * Saves contract info to root/contracts/contractInfo/networkName/contractName-contractInfo.json
 *
 * @param networkName - name of current network;
 * @param contractName - name of contract;
 * @param contractFQN - full name of contract;
 * @param compilerVersion - full compiler version;
 * @param sourceCode - compiler input code;
 */
export function saveCompilerInputs(
  networkName: string,
  contractName: string,
  contractFQN: string,
  compilerVersion: string,
  sourceCode: CompilerInput
) {
  const networkDir = path.join(contractsInfoDir, networkName);
  ensureDir(networkDir);

  const contractInfo = {
    contractname: contractFQN,
    compilerversion: compilerVersion,
    sourceCode: sourceCode,
  };

  try {
    fs.writeFileSync(
      path.join(networkDir, `${contractName}-contractInfo.json`),
      JSON.stringify(contractInfo, undefined, 2)
    );
  } catch (e) {
    throw new Error(`Save contract info: ${e}`);
  }
}

export function getContractAddress(
  hre: HardhatRuntimeEnvironment,
  contractName: string
) {
  const chainID = hre.network.config.chainId ?? 0;
  const networkName = hre.network.name;

  try {
    const address = JSON.parse(
      fs
        .readFileSync(
          path.join(addressesDir, `/${chainID}-${networkName}.json`)
        )
        .toString()
    )[contractName];
    return address as string;
  } catch (e) {
    throw new Error(`Parse address ${e}`);
  }
}

function ensureDir(path: fs.PathLike) {
  if (!fs.existsSync(path)) {
    fs.mkdirSync(path, { recursive: true });
  }
}
