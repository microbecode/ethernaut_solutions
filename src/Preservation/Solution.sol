// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface TemplateEthernaut {
    //function flip(bool _guess) external returns (bool);
}

contract Template {
    TemplateEthernaut public en;

    constructor() {
        en = TemplateEthernaut(
            address(0x8F3AF9Fe4B8fD15bA5851D08A9A85EC62658E162)
        );
    }

    function tryit() public {}
}
