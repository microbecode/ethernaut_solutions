import { ethers, network } from "hardhat";
import { GatekeeperOneSolution } from "../../typechain-types";

// Used for deploying to FireBlocks
async function main() {
  const ImplementationFact = await ethers.getContractFactory(
    "GatekeeperOneSolution"
  );
  const contract = await ImplementationFact.deploy();
  const instance = (await contract.deployed()) as GatekeeperOneSolution;
  console.log("Deployed", instance.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
