//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
/*
contract variables{
    string public text = "Hello & Welcome";
    uint256 public num = 123;
    uint public timestamp = block.timestamp;
    address public sender = msg.sender;

    function basicfunc() public{
        uint i= 400;
    }
}
*/

contract variables {
    //state variables
    string public text = "Hello";
    uint16 public num = 256;

    function var_loc() public returns(uint8){
        uint8 i8 = 8;
        return i8;
    }

    uint public timestamp = block.timestamp;
    address public sender_addr = msg.sender;

}