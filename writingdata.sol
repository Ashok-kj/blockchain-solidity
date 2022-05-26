//SPDX-License-Identifier : MIT
pragma solidity ^0.8.0;
/*
contract simpleStorage{
    uint256 public num;

    function set (uint256 _num) public{
        num = _num;
    }

    function get () public view returns (uint256){
        return num;
    }
}
*/

contract Storage{
    uint public num;

    function set (uint _num) public {
        num = _num;
    }

    function get() public returns(uint) {
        num *= 2;
        return num;
    }
}