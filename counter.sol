//SPDX-License-Identifier : MIT

pragma solidity ^0.8.0;
/*
contract counter {
    uint256 count;

    function get() public view returns(uint256){
        return count;
    }

    function inc() public {
        count+=1;
    }

    function dec() public{
        count-=1;
    }
}
*/

contract counter {
    uint public i;

    function get() public view returns(uint){
        return i;
    }

    function inc() public {
        i+=1;
    }

    function dec() public {
        i-=1;
    }
}
