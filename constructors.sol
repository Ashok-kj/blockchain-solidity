//SPDX-License-Identifier : MIT
pragma solidity ^0.8.0;

contract constructExample{

    string public str;
    uint256 public a;
    uint256 public b;

    constructor () public{
        str = "Ashok";
        a = 10;
        b = 16;
    }

    function getVal() public view returns(string memory, uint256, uint256){
        return(str,a,b);
    }
}