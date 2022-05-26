//SPDX-License-Identifier : MIT
pragma solidity ^0.8.0;

contract errorhandle{
    function testRequire(uint _i) public pure {
        require (_i > 10, "input should be greater than 10");
    }

    function testRevert(uint _j) public pure {
        if(_j < 10) {
            revert("input value is less than 10");
        }
    }

    uint public num = 9;
    function testAssert() public view {
        assert(num == 0);
    }
}