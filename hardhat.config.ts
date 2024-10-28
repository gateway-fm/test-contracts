import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import "./tasks/index";
import { network } from "./configs/config";

const config: HardhatUserConfig = {
  defaultNetwork: network.name,
  solidity: {
    compilers: [
      {
        version: "0.8.24",
        settings: {
          optimizer: {
            enabled: true,
            runs: 200,
          },
        },
      },
    ],
  },
  gasReporter: { enabled: true },
  mocha: {
    timeout: 200000,
  },
  networks: {
    [network.name]: {
      url: network.rpc,
      accounts: process.env.PRIVATE_KEY ? [process.env.PRIVATE_KEY] : undefined,
      chainId: network.chainId,
    },
    cardona: {
      url: "https://rpc.cardona.zkevm-rpc.com/",
      accounts: process.env.PRIVATE_KEY ? [process.env.PRIVATE_KEY] : undefined,
      chainId: 2442,
    },
    sepolia: {
      url: "https://rpc.sepolia.org/",
      accounts: process.env.PRIVATE_KEY ? [process.env.PRIVATE_KEY] : undefined,
      chainId: 11155111,
    },
    chiado: {
      url: "https://rpc.chiadochain.net/",
      accounts: process.env.PRIVATE_KEY ? [process.env.PRIVATE_KEY] : undefined,
      chainId: 10200,
    },
  },
  etherscan: {
    apiKey: process.env.ETHERSCAN_API_KEY ?? "",
    customChains: [
      {
        network: network.name,
        chainId: network.chainId,
        urls: {
          apiURL: network.apiURL,
          browserURL: network.browserURL,
        },
      },
    ],
  },
};

export default config;
