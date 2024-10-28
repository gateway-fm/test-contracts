import { HardhatRuntimeEnvironment } from "hardhat/types";
import { waitForTxAndPrintHash } from "../utils/waitForTxAndPrintHash";
import { getTestValueEmitterContract } from "../utils/getContracts";
import {
  bytesStruct,
  intStruct,
  mixedStruct,
  uintStruct,
} from "../../test/testData";

export async function emitIntEvents(hre: HardhatRuntimeEnvironment) {
  const contract = await getTestValueEmitterContract(hre);

  try {
    await contract
      .emitIntEvents(intStruct)
      .then((tx) => waitForTxAndPrintHash(tx));
  } catch (e) {
    const err = e as Error;
    throw new Error(`Emit int events err:  ${err.message}`);
  }
}

export async function emitUintEvents(hre: HardhatRuntimeEnvironment) {
  const contract = await getTestValueEmitterContract(hre);

  try {
    await contract
      .emitUintEvents(uintStruct)
      .then((tx) => waitForTxAndPrintHash(tx));
  } catch (e) {
    const err = e as Error;
    throw new Error(`Emit uint events err:  ${err.message}`);
  }
}

export async function emitBytesEvents(hre: HardhatRuntimeEnvironment) {
  const contract = await getTestValueEmitterContract(hre);

  try {
    await contract
      .emitBytesEvents(bytesStruct)
      .then((tx) => waitForTxAndPrintHash(tx));
  } catch (e) {
    const err = e as Error;
    throw new Error(`Emit bytes events err:  ${err.message}`);
  }
}

export async function emitMixedEvents(hre: HardhatRuntimeEnvironment) {
  const contract = await getTestValueEmitterContract(hre);

  try {
    await contract
      .emitMixedEvent(mixedStruct)
      .then((tx) => waitForTxAndPrintHash(tx));
  } catch (e) {
    const err = e as Error;
    throw new Error(`Emit mixed events err:  ${err.message}`);
  }
}
