//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract findPrime{
    function isPrime(uint x) public returns (uint){
        if (x % 2 == 1){
            return 1;
        }
        else {
            return 0;
        }
    }
}