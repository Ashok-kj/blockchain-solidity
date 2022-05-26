pragma solidity ^0.8.0;

contract DataLocationContract {

    int[] public numbers;

    function Numbers() public returns(int[] memory) {
        numbers.push(1);
        numbers.push(2);
        // analogy - memory - ram, storage - harddrive. Storage writes to blockchain. 

        int[] storage myArray = numbers;  // result - 0, 2
       // int[] memory myArray = numbers; // result - 1, 2

        myArray[0] = 0;
        return numbers;
    }
}