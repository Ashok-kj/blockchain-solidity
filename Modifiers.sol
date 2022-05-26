//SPDX-License-Identifier : MIT
pragma solidity ^0.8.0;

contract funModifier {

    address public owner;
    uint public x = 10;
    bool public locked;

    constructor () {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, " Not Owner.");
        _; // execute rest of the code, used only under modifier  
    }

    modifier validAddress(address _addr) {
        require(_addr != address(0), "Not a valid address");
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner) {
        owner = _newOwner;
    }
}