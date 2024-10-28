import dotenv from "dotenv";
dotenv.config();

// Custom network
export const network = {
  name: process.env.NETWORK_NAME ?? "",
  rpc: process.env.PROVIDER_URL ?? "",
  browserURL: process.env.BROWSER_URL ?? "",
  apiURL: process.env.BROWSER_URL ? process.env.BROWSER_URL + "api/" : "",
  chainId: parseInt(process.env.CHAIN_ID ?? "0"),
};
