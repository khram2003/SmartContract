// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Tugrik is ERC20 {
    constructor(uint256 initialSupply) payable  ERC20("TUGRIK", "TGK") {
        _mint(msg.sender, initialSupply);
    }
}