//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract loop {
    function loop1() public {
        for (uint256 i = 0; i < 10; i++) {
            if (i == 3) {
                continue;
            }
            if(i == 5) {
                break;
            }
        }
    }
}