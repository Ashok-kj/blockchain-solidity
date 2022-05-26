pragma solidity ^0.8.0;
/*
contract A {
    string greeting = "Hello";

    function sayHello() external view returns(string memory) {
        return greeting;
    }
}

contract B {
    address Aaddress;

    constructor(address a) {
        Aaddress = a;
    }

    function callHello() external returns(string memory) {
        A a = new A();
        return a.sayHello();
    }
}
*/

contract Child {
    uint data;
    bool public isEnabled;
    uint public index;

    constructor(uint _data, uint _index) {
        data = _data;
        isEnabled = true;
        index = _index;
    }

    function disable() external {
        isEnabled = false;
    }
}

contract Factory {
    Child[] public children;
    uint disabledCount;

    event ChildCreated(address childAddress, uint data);

    function createChile(uint data) external {
        Child child = new Child(data, children.length);
        children.push(child);
        emit ChildCreated(address(child), data);
    }

    function getChildren() external view returns(Child[] memory _children){
        _children = new Child[](children.length - disabledCount);
        uint count;
        for(uint i = 0; i < children.length; i++) {
            if(children[i].isEnabled()) {
                _children[count] = children[i];
                count++;
            }
        }
    }

    function disable(Child child) external {
        children[child.index()].disable();
        disabledCount++;
    }
}