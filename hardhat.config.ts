import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";

const config: HardhatUserConfig = {
  defaultNetwork: "testNet",
  gasReporter: { enabled: true },
  solidity: {
    version: "0.8.24",
    settings: {
      optimizer: {
        enabled: true,
        runs: 200,
      },
    },
  },
  networks: {
    testNet: {
      url: process.env.PROVIDER_URL ?? "",
      accounts: [process.env.PRIVATE_KEY ?? "0000000000000000000000000000000000000000000000000000000000000000"],
      chainId: process.env.CHAIN_ID as unknown as number,
    },
  },
  etherscan: {
    apiKey: {
      testNet: process.env.ETHERSCAN_API_KEY ?? "",
    },
  },
};

export default config;
