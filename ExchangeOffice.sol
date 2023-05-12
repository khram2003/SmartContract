// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract CurrencyExchangeOffice {
    
    address public owner;
    mapping (IERC20 => uint256) private exchageRates;

    

    constructor() payable {
        owner = msg.sender;
    }

    function setExchangeRate(address token, uint256 _newRate) public {
        exchageRates[IERC20(token)] = _newRate;
    }

    function getExchangeRate(address token) public view returns(uint256){
        return exchageRates[IERC20(token)];
    }

    function buyToken(address token, uint256 _amount) public payable {
        require(IERC20(token).transfer(msg.sender, _amount), "Failed transaction");
    }

    function sellTokens(address token, uint256 _amount) public payable {
        require(IERC20(token).transferFrom(msg.sender, address(this), _amount), "Failed transaction");
        require(payable(msg.sender).send(exchageRates[IERC20(token)] * _amount), "Failed transaction");
    }

    function getBalance(address token) public view returns(uint256){
        return IERC20(token).balanceOf(address(this));
    }

    function destroySmartContract(address payable _to) public {
        require(msg.sender == owner, "You are not the owner");
        selfdestruct(_to);
    }
    
}