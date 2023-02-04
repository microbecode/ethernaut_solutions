import { ethers, network } from "hardhat";
import { Reentrancy } from "../../typechain-types";

// Used for deploying to FireBlocks
async function main() {
  const ImplementationFact = await ethers.getContractFactory("Reentrancy");
  const contract = await ImplementationFact.deploy({ value: 1000000000000000 });
  const instance = (await contract.deployed()) as Reentrancy;

  await instance.tryit();
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
