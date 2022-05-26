//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;


contract A {
    string internal x;
    string a = "iNeuron";
    string b = "Token";

    function getA() external {
        x = string(abi.encodePacked(a,b));
    }
}

contract B is A {
    string public y;
    string c = "Ashok";

    function getB() external payable returns(string memory) {
        y = string(abi.encodePacked(x,c));
    }
}


contract C is B {
    function getC() external view returns (string memory) {
        return y;
    }
}

contract caller {
    C c = new C();

    function testInheritance() public returns(string memory) {
        c.getA();
        c.getB();
        return c.getC();
    }
}
