import { HardhatRuntimeEnvironment } from "hardhat/types";
import { waitForTxAndPrintHash } from "../utils/waitForTxAndPrintHash";
import { getEmitterContract } from "../utils/getContracts";

export async function emitAllEvents(hre: HardhatRuntimeEnvironment) {
  const contract = await getEmitterContract(hre);

  let tx;
  try {
    tx = await contract.emitAllEvents();
  } catch (e) {
    const err = e as Error;
    throw new Error(`Emit all events err:  ${err.message}`);
  }

  await waitForTxAndPrintHash(tx);
}
