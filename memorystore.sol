//SPDX-License-Identifier : MIT
pragma solidity ^0.8.0;

contract memorydata {
    uint[] public numbers;

    function PushNumbers () public {
        numbers.push(1);
        numbers.push(2);

        uint[] memory newarray = numbers;

        newarray[0] = 0;

    }
}