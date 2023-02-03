import { ethers, network } from "hardhat";
import { Force } from "../../typechain-types";

// Used for deploying to FireBlocks
async function main() {
  const ImplementationFact = await ethers.getContractFactory("Force");
  const contract = await ImplementationFact.deploy({ value: 1 });
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
