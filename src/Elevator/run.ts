import { ethers, network } from "hardhat";
import { Elevator } from "../../typechain-types";

// Used for deploying to FireBlocks
async function main() {
  const ImplementationFact = await ethers.getContractFactory("Elevator");
  const contract = await ImplementationFact.deploy({ gasLimit: 1000000 });
  const instance = (await contract.deployed()) as Elevator;
  await instance.tryit();
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
