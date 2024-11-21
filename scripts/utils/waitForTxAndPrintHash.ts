import { ContractTransactionResponse } from "ethers";

export const waitForTxAndPrintHash = async (tx: ContractTransactionResponse) => {
  console.log("Waiting for transaction confirmation...");
  const receipt = await tx.wait();
  if (receipt) {
    console.log(`Complete! Transaction hash: ${receipt.hash}`);
  } else {
    console.log(`Something went wrong with the transaction! Transaction hash: ${tx.hash}`);
  }
};
