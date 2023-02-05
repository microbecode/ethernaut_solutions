import { ethers, network } from "hardhat";
import { Denial } from "../../typechain-types";

// Used for deploying to FireBlocks
async function main() {
  const ImplementationFact = await ethers.getContractFactory("Denial");
  const contract = await ImplementationFact.deploy({
    gasLimit: 1000000,
    value: 100,
  });
  const instance = (await contract.deployed()) as Denial;

  console.log("Deployed", instance.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
