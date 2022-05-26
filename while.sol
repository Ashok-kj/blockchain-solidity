//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract whileLoop {
    function whilein(uint256 i) public returns (uint256){
         while (i != 10){
            i++;
            
        }
        return i;
    }
}