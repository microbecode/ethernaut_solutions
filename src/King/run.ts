import { ethers, network } from "hardhat";
import { King } from "../../typechain-types";

// Used for deploying to FireBlocks
async function main() {
  const ImplementationFact = await ethers.getContractFactory("King");
  const contract = await ImplementationFact.deploy({
    value: 1000000000000001,
    gasLimit: 1_000_000,
  });
  const instance = (await contract.deployed()) as King;
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
