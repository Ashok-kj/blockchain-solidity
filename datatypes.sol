// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
/*
contract types {
    bool public b1 = true;
    bool public b2 = false;

    uint256 public var1 = 6;
    uint8 public var2 = 20;
    uint public var3 = 30;

    int public var4 = -1;
    int8 public var5 = -20;
    int256 public var6 =-100000;

    address public addr= 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    int24 public min = type(int24).min;
    int24 public max = type(int24).max;

    bytes1 public a = 0xab;
    bytes1 public b = 0xEF;

    string public str = "Ashok";

}
*/

contract datatypes{
    bool public boo = true;

    uint public u1 = 56;
    int public u2 = -100;
    uint8 public u8 = 200;
    uint56 public u56 = 100000;
    uint256 public u256 = 67010101;

    int public i = 30;
    int8 public i8 = 20;
    int72 public i7 = 57575;
    int120 public i120 = -13343434;
    int256 public i256 = 32443231325;

    int public maxint = type(int).max;
    int public minint = type(int).min;

    int8 public maxint8 = type(int8).max;
    int8 public minint8 = type(int8).min;

    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    bool public default_bool;
    int8 public default_i8;
    uint8 public default_ui8;
    address public default_addr;

}