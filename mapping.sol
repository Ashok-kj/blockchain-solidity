//SPDX-License-Identifier : MIT
pragma solidity ^0.8.0;
/*
contract Mapping{
    //mapping (key => value) accessing name
    mapping(address => uint256) public myMap;

    function getmap (address _addr) public view returns(uint256) {
        return myMap[_addr];
    }

    function setmap(address _addr, uint256 _i) public {
        myMap[_addr] = _i;
    }
}

contract nestedMapping{
    //mapping (key => mapping(key => value)) access_name
    mapping(address => mapping(uint => bool)) public nestedMap;

    function getmap(address _addr, uint _i) public view returns (bool) {
        return nestedMap[_addr] [_i];
    }

    function setmap(address _addr1, uint _i, bool _boo) public {
        nestedMap [_addr1][_i] = _boo;
    }
}


contract nestedMapping1{
    // mapping (key => mapping(key => value)) access_name
    mapping (address => mapping(uint => string)) public nestMap;

    function setmap1(address _addr, uint _i, string memory _s) public {
        nestMap[_addr][_i] = _s;
    }

    function getmap1(address _adr, uint _x) public view returns(string memory) {
        return nestMap[_adr][_x];
    }
}
*/

contract mapping_type{
    mapping(address => int) public simplemap;

    function get(address _addr) public returns(int) {
        return simplemap[_addr];
    }

    function set(address _addr, int i) public {
        simplemap[_addr] = i;
    }

    function remove(address _addr) public {
        delete simplemap[_addr];
    }
}

contract nestedmap {
    mapping(address => mapping(uint =>bool)) public nestedMap;

    function get(address _addr, uint _i) public returns(bool) {
        return nestedMap[_addr][_i];
    } 

    function set(address _addr, uint _i, bool _boo) public {
        nestedMap[_addr][_i] = _boo;
    }
}