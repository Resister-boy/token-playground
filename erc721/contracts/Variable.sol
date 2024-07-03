// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract Variable {
  uint private _value;
  uint public value = 10;
  uint constant CONSTANT_VALUE = 10;
  uint immutable IMMUTABLE_VALUE;

  constructor() {
    IMMUTABLE_VALUE = 20;
  }
}