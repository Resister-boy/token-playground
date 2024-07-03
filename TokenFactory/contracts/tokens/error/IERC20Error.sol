// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface IERC20Error {
  error ERC20InsufficientBalance(address sender, uint256 balance, uint256 needed);

  error ERC20InvalidSender(address sender);

  error ERC20InvalidReceiver(address receiver);

  error ERC20InsufficientAllowance(address sender, uint256 allowance, uint256 needed);

  error ERC20InvalidApprover(address approver);

  error ERC20InvalidSpender(address spender);
}