// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockUSDT is ERC20 {
    // Define the total supply of the mock token
    uint256 public initialSupply = 1000000 * (10 ** uint256(decimals()));

    constructor() ERC20("Mock USDT", "USDT") {
        _mint(msg.sender, initialSupply);
    }

    // Allow minting additional tokens if needed for testing purposes
    function mint(address to, uint256 amount) external {
        _mint(to, amount);
    }
}