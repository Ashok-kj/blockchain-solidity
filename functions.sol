//SPDX-License-Identifier : MIT
pragma solidity ^0.8.0;

contract functions{
    function returnmany() public view returns(uint, bool, uint) {
        return (1, true, 5);
    }

    function named() public view returns(uint x, bool y, uint z) {
        return  (1, true, 16);
    }

    function assigned() public view returns (uint x, bool y, uint z) {
        x = 5;
        y = true;
        x = 10;
        return (x, y , z);
    }

    function destructuring() public view returns (uint, bool, uint, uint, uint){
        (uint i, bool j, uint k) = returnmany();
        //(uint x, uint y) = (10, 16);
        //(uint x, uint y,,,,) = (10, 16,1,2,3,4);
        (uint x,,,uint y,,) = (10, 16,1,2,3,4);
        return(i,j,k,x,y);
    }

    uint[] public arr;
    function arrayInput(uint [] memory _arr) public {
        arr = _arr;
    }

    function arrayOutput() public view returns (uint[] memory){
        return arr;
    }

    
    function getInput() public view returns(uint, bool, uint, bool) {
        (uint x, bool b1, uint y, bool b2) = (16, true, 10, false);
        return (x, b1, y, b2);
    }

    function moreInput(uint _w, uint _x , uint _y, uint _z)  public view returns(uint, bool, uint, bool, uint, uint) {
        (uint i, bool b1, uint j, bool b2) = getInput();
        //(uint w, uint x, uint y, uint z) = (uint _w, uint _x, uint _y, uint _z);
        
        uint w = _w;
        uint x = _x;
        //uint y = _y;
        //uint z = _z;
        return (i, b1, j, b2, w, x);
    }
}