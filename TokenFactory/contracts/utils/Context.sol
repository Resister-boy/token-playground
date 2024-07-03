// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

abstract contract Context {
  function _msgSender() internal view virtual returns (address) {
    return msg.sender;
  }

  function _msgData() internal view virtual returns (bytes calldata) {
    return msg.data;
  }

  function _msgValue() internal view virtual returns (uint256) {
    return msg.value;
  }

  function _msgGas() internal view virtual returns (uint256) {
    return gasleft();
  }

  function _msgTimestamp() internal view virtual returns (uint256) {
    return block.timestamp;
  }

  function _msgBlockNumber() internal view virtual returns (uint256) {
    return block.number;
  }
  
  function _msgDifficulty() internal view virtual returns (uint256) {
    return block.prevrandao;
  }

  function _msgCoinbase() internal view virtual returns (address) {
    return block.coinbase;
  }

  function _msgTxOrigin() internal view virtual returns (address) {
    return tx.origin;
  }

  function _msgGasPrice() internal view virtual returns (uint256) {
    return tx.gasprice;
  }

  function _contextSuffixLength() internal pure virtual returns (uint256) {
    return 0;
  }
}