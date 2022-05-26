pragma solidity >=0.7.0 < 0.9.0;

contract MyContract2 {

    //max of 17 different attributes
    struct Employee{
        string _firstName;
        string _lastName;
        uint _id;
    }

    // Employee array
    Employee[] public emp;

    uint[] public integerArray;

    //mapping -> dictionary in python or hash tables in Java
    //store key value pair
    mapping(uint => Employee) public empArray;

    uint i = 0;

    // external - own smart contracts would not be able to call this
    // Other smart contract would be able to call them.
    function myExternalFunc() external view {
        //do something
    }

    //private - called through the smart contract they are resideing in.
    function myPrivateFunc() private view {
        //do something
    }

    //internal - called through the smart contract they are residing in.
    //and also by the contracts that inherit this contract.
    function myInternalFunc() internal view {
        //do something
    }

    //modifier - modify the functions defined behavior
    //address - data type which can only store wallet address value 
    address hr;

    constructor() {
        hr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; //msg.sender;
    }

    modifier onlyHR {
        require(msg.sender == hr);
        _; // modifier function ended
    }

    function callMyfunc() public {
       // myExternalFunc(); - not visible in the contract where it resides.
       myPrivateFunc();
       myInternalFunc();
    }

    function addNewEmployee(string memory _firstName, string memory _lastName, uint _id) public  onlyHR{
        emp.push(Employee(_firstName, _lastName, _id));
        empArray[i] = Employee(_firstName, _lastName, _id);
        i += 1;
    }

    function getEmpAtIndex(uint index) public view returns(Employee memory) {
        return emp[index];
    }
    
    function getEmpAtIndexFromMap(uint index) public view returns(Employee memory) {
        return emp[index];
    }
}

contract con {

    function callExternalFunc() public {
        new MyContract2().myExternalFunc();
    }

    // not visible to other contracts
    
    function callPrivateFunc() public {
        //new MyContract2().myPrivateFunc();
        //new MyContract2().myInternalFunc();
    }
    


}