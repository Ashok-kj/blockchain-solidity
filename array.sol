//SPDX-License-Identifier : MIT
pragma solidity ^0.8.0;

/*
contract Array {
    uint[] public arr;
    uint[3] public arr1 = [1,2,3];
    uint256[10] public fixedArr;

    function get(uint i) public view returns(uint) {
        return arr[i];
    }

    function getArr() public view returns (uint[] memory) {
        return arr;
    }

    function push(uint i) public {
        arr.push(i);
    }

    function pop() public {
        return arr.pop();
    } 

    function getlen() public view returns (uint) {
        return arr.length;
    }

    function remove (uint index) public {
        delete arr[index];
    }

}
*/

contract Arrays{
    
    uint[10] public fixedArray;
    uint[] public arr1 = [1,2,3,4,5];
    uint[] public arr2;

    function get(uint i) public returns (uint){
        return arr2[i];
    } 

    function getArr2() public view returns(uint [] memory) {
        return arr2;
    }

    function getArr1() public view returns(uint [] memory) {
        return arr1;
    }

    function push(uint i) public {
        // Add new element to the array to the end of the array list
        // increment the length of the array by 1
        arr2.push(i);
    }

    function pop() public {
        // get last element in the array
        // decrements the length of the array by 1 
        arr2.pop();
    }

    function remove(uint index) public {
        // remove the element at that index, set to zero 
        // will not decrement the size
        delete arr2[index];
    }

    function getArrLen() public view returns (uint) {
        return arr2.length;
    }

}

