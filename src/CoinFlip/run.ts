import { ethers, network } from "hardhat";
import { CoinFlipSolution } from "../../typechain-types";

// Used for deploying to FireBlocks
async function main() {
  const ImplementationFact = await ethers.getContractFactory(
    "CoinFlipSolution"
  );
  const contract = await ImplementationFact.deploy();
  const instance = (await contract.deployed()) as CoinFlipSolution;

  for (let i = 0; i < 5; i++) {
    try {
      console.log("trying");
      await instance.tryit();
    } catch (_) {}
  }
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
