// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface GatekeeperTwoEthernaut {
    function enter(bytes8) external;
}

contract GatekeeperTwoSolution {
    GatekeeperTwoEthernaut public en;

    constructor() {
        en = GatekeeperTwoEthernaut(0xb569737021FF0B6ACFc6637B44c2c42AC1b82328);

        // require(uint64(bytes8(keccak256(abi.encodePacked(msg.sender)))) ^ uint64(_gateKey) == type(uint64).max);

        uint64 gate = uint64(
            bytes8(keccak256(abi.encodePacked(address(this))))
        ) ^ type(uint64).max;

        bytes8 gate2 = bytes8(gate);
        en.enter(gate2);
    }
}
