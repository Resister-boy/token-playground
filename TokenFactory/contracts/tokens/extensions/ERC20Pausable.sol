// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { ERC20 } from './../erc20/ERC20.sol';
import { Pausable } from './../../utils/Pausable.sol';
import { ECDSA } from './../../utils/cryptography/ECDSA.sol';

/**
 * @dev ERC20 token with pausable token transfers, minting and burning.
 *
 * Useful for scenarios such as preventing trades until the end of an evaluation
 * period, or having an emergency switch for freezing all token transfers in the
 * event of a large bug.
 *
 * IMPORTANT: This contract does not include public pause and unpause functions. In
 * addition to inheriting this contract, you must define both functions, invoking the
 * {Pausable-_pause} and {Pausable-_unpause} internal functions, with appropriate
 * access control, e.g. using {AccessControl} or {Ownable}. Not doing so will
 * make the contract pause mechanism of the contract unreachable, and thus unusable.
 */

abstract contract ERC20Pausable is ERC20, Pausable {
    /**
   * @dev See {ERC20-_update}.
   *
   * Requirements:
   *
   * - the contract must not be paused.
   */
  function _update(address from, address to, uint256 value) internal virtual override whenNotPaused {
      super._update(from, to, value);
  }
}