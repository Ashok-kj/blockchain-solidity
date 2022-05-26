//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
/*
contract A {
    string internal x;

    function setA() external {
        x = "Hello Ashok";
    }
}

contract B {
    uint internal mul;

    function setB() external{
        uint a = 10;
        uint b = 12;
        mul = a * b;
    }
}

contract C is A,B {
    function getString() external returns (string memory) {
        return x;
    }

    function getMultiple() external returns (uint) {
        return mul;
    }
}

contract caller {
    C obj = new C();

    function testInheritance() public returns (string memory, uint) {
        obj.setA();
        obj.setB();
        return(obj.getString(), obj.getMultiple());
    }
}
*/

contract A  {
    string internal x;

    function setA() external {
        x="Blockchain";

    }
}

contract B {
    uint internal power;

    function setB() external{
        uint a = 3;
        uint rise = 2;

        power = a * rise;
    }
}

contract C is A,B{
    function getStr() external returns(string memory) {
        return x;
    }

    function getNum() external returns(uint) {
        return power;
    }
}

contract caller {

    C obj = new C();

    function multipleInherit() public returns(string memory, uint) {
        obj.setA();
        obj.setB();
        return(obj.getStr(), obj.getNum());
    }
}






