//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
/*
contract IfElse{
    
    function test1(uint _x) public returns(uint){
        if(_x < 10){
            return 0;
        }
        else if (_x < 20) {
            return 1;
        }
        else 
            return 2;
    }

    function ternary(uint256 _x) public returns(uint256) {
        return _x <10 ? 1 : 2;

    }
    
    function test(uint x) public returns (string memory) {
        return x % 2 == 1 ? "odd" : "Even"; // 0 - even ; 1 - odd ;
        
    }
}*/

contract IfElse{
    function func(uint _x) public returns (uint) {
        if(_x < 10) {
            return 0;
        }
        else if (_x < 20) {
            return 1;
        }
        else {
            return 2;
        }
    }

    function ternary(uint _y) public returns (uint) {
        return _y < 10 ? 0 : 1;
    }
}