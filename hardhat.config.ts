import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import Env from "dotenv";

Env.config({ path: "./.env" });

const config: HardhatUserConfig = {
  solidity: "0.8.17",
  paths: {
    sources: "src",
  },
  networks: {
    hardhat: {},
    goerli: {
      url: `https://eth-goerli.g.alchemy.com/v2/${process.env.ALCHEMY_API_KEY}`,
      accounts: process.env.GOERLI_PRIVATE_KEY
        ? [process.env.GOERLI_PRIVATE_KEY]
        : undefined,
      chainId: 5,
    },
  },
};

export default config;
