//SPDX-License-Identifier : MIT

pragma solidity ^0.8.0;
/*
contract EtherUnits{
    uint public one_wei = 1 wei;
    bool public is_onewei = 1 wei ==1;  // bool public is_onewei = (1 wei ==1);

    uint public one_eth = 1 ether;
    bool public is_oneeth = 1 ether == 1e18; // bool public is_oneeth = (1 ether == 1e18);
}
*/

contract etherunits{
    uint public onewei = 1 wei;
    bool public isOnewei = 1 wei == 1;

    uint public oneether = 1 ether;
    bool public isoneether = 1 ether == 1e18;
}