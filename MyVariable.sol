// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyVariable {
    // state variable
    
    int256 myInt256 =1;
    uint public myUint = 1;
    uint public Count = 5;
    uint256 public myUint256 =1;
    uint8 public myUint8 =1;

    string public myString = 'Hello, World';
    bytes32 public myBytes32 = 'Hello, World';

    address public myAddress = 0x04897743463563478623465775;

    struct MyStruct {
        uint256 myUint256;
        string myString;
    }
    
    MyStruct public myStruct = MyStruct(1, 'hello, world');

    // local variable
    function getValue() public pure returns(uint) {
        uint value = 1;

        return value;
    }
}