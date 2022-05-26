//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Parent {
    uint internal sum; // if private even child can't access

    function setVal() external {
        uint a = 10;
        uint b = 5;
        sum = a + b;
    }
}

contract child is Parent {
    function getVal() external view returns(uint) {
        return sum;
    }
}

contract caller {

    //creating child contract object
    child cc = new child();

    function testInheritance() public returns(uint){
        cc.setVal();
        return cc.getVal();

    }
}