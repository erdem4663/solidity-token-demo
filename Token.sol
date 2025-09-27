// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DemoToken {
    string public name = "DemoToken";
    string public symbol = "DMT";
    uint256 public totalSupply = 1000000;

    mapping(address => uint256) public balanceOf;

    constructor() {
        balanceOf[msg.sender] = totalSupply;
    }

    function transfer(address _to, uint256 _value) public returns (bool) {
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        return true;
    }
}
