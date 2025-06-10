const { ethers } = require("hardhat");

async function main() {
    const DynamicArraySum = await ethers.getContractFactory("DynamicArraySum");
    const dynamicArraySum = await DynamicArraySum.deploy();
    await dynamicArraySum.deployed();

    console.log("DynamicArray deployed to:", dynamicArraySum.address);
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});