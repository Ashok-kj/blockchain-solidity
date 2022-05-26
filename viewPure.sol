/*
//SPDX-License-Identifier : MIT
pragma solidity ^0.8.0;

contract viewPure {

    uint public x = 1;
    uint public y = 5;

    function addToX(uint z) public view returns(uint) {
        //x = 3; - Error because function declared as view but it is trying to modify the state 
        return x+z; // but read of environment variable is allowed
    }

    function add2(uint i, uint j) public pure returns(uint) {
        //return x+i+j; - error you shouldn't even read the environment variable since function is pure.
        return i + j;
    }
}
*/

//SPDX-License-Identifier : GPL-3.0
pragma solidity ^0.8.0;

contract viewandpure{
    uint public x =1;

   /* function changeX(uint y) public returns(uint) {
        x = 8;
        return x+y;
    }
   */
    function addToX(uint y) public view returns(uint) {
        //x = 8;
        return x+y;
    }

    function add(uint i, uint j) public pure returns(uint) {
        return i + j;
    }
}