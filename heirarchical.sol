//SPDX-License-Identifier : MIT
pragma solidity ^0.8.0;

contract A {
    string internal a;

    function getA() external {
        a = "Welcome";
    }

    uint internal sum;
    function setA() external {
        uint x = 10;
        uint y = 25;
        sum = x + y;
    }
}

contract B is A {
    function getAString() external view returns(string memory) {
        return a;
    }
}

contract C is A {
    function getASum() external view returns(uint) {
        return sum;
    }
}

contract caller {
    B contract_B = new B();
    C contract_C = new C();

    function testInheritance() public returns (string memory, uint) {
        contract_B.getA();
        contract_C.setA();
        return(contract_B.getAString(), contract_C.getASum());
    }


}