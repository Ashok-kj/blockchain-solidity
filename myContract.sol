//SPDX-Lisance-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;
/*
contract MyContract {
    // this variable is stored onto the storage and not memory.
    // these variables would store the value onto the blockchain.
    // they are contract scoped and not local scoped.
    // state variables - since they persist data on to the blockchain
    string value;

    // we created a function here.
    // public - modifier will tell that smart contract function is available to everyone on blockchain
    // view - this function wouldn't be changing or muttating the state of the smar contract.
    // returns - tells the return type of the function

    function get() public view returns(string memory){
        return value;
    }

    function set(string memory _value) public {
        value = _value;
    } 

    constructor() public {
        value = "defaut value";
    }
}


*/

contract MyContract {
    string public value = "Default value";

    function setValue(string memory _value) public {
        value = _value;
    }

    bool public myBool = true;

    function setBool(bool _bool)  public {
        myBool = _bool;
    } 

    int public myInt = 1;
    uint public myUint = 10;

    int8 public myInt8 = 1;
    uint public myUint8 = 10;

    int256 public muInt256 = 100;
    uint256 public myUint256 = 200;

    enum Countries { India, USA, Australia, Singapore}

    Countries public country;

    constructor () {
        country = Countries.India;
    }

    function changeCountrytoAustralia() public {
        country = Countries.Australia;        
    }

    function getCountry() public view returns(Countries) {
        return country;
    }

    function iscountryIndia() public view returns(bool) {
        return country == Countries.India;
    }

}