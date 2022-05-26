//SPDX-License-Identifier : GPL-3.0
pragma solidity ^0.8.0;

contract Payable{
    address payable public owner;

    constructor() payable{
        owner = payable(msg.sender);
    }

    function deposit() public payable{
    
    }

    function notPaybale() public {

    }

    function withdraw() public {
        // this referes to the address of the smart contract
        uint amount = address(this).balance; 
    
    (bool success,) = owner.call{value:amount}("");
    require(success, " Failed to send ether to the target address");
    }

    function transfer(address payable _to, uint _amount) public {
        (bool success,)= _to.call{value: _amount}("");
        require(success, "Failed to send ether");
    }
}
