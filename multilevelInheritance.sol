//SPDX-License-Identifier : MIT
pragma solidity ^0.8.0;

//Parent Contract 
contract A{
    string internal x;
    string a = "Hello, ";
    string b = "iNeuron ";

    function getA() external{
        x = string(abi.encodePacked(a,b));
    } 

}


//Child contract inherited from A
contract B is A {
    string public y;
    string c = "OneNeuron.";

    function getB() external returns(string memory) {
        y = string(abi.encodePacked(x,c));
    }
}

contract C is B {
    function getC() external view returns (string memory) {
        return y;
    }

}


//define the caller contract
contract caller {
    C obj = new C();

    function testInheritance() public returns(string memory) {
        obj.getA();
        obj.getB();
        return obj.getC();
    }
}
