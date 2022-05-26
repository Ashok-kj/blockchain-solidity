//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleEventStorageContract {

    uint favNum;

    event storedNum(
        uint indexed oldNum,
        uint indexed newNum,
        uint addNum,
        address sender
    );

    function store (uint _favNum) public {
        emit storedNum(
            favNum,
            _favNum,
            favNum + _favNum,
            msg.sender
        );

        favNum = _favNum;
    }

    function retrieve() public view returns(uint) {
        return favNum;
    }
}