// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract bank{
    mapping(address=>uint) balance;
    function getbalance() public view returns(uint)
    {
        return balance[msg.sender];
    }
    function deposite() public payable 
    {
        balance[msg.sender]=balance[msg.sender]+msg.value;
    }
    function withdraw(uint amount) public{
        balance[msg.sender]=balance[msg.sender]-amount;
        payable (msg.sender).transfer(amount);
    }
    function transfer(address a, uint amount) public{
        balance[msg.sender]=balance[msg.sender]-amount;
        balance[a]=balance[a]+amount;
    }
}