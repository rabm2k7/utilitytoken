// SPDX-License-Identifier: UNLICENCED

// SPDX-License-Identifier: MIT

pragma solidity ^0.5.5;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Mintable.sol";

/**
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 */
contract Tkn is Context, ERC20, ERC20Detailed, ERC20Mintable {

    using Roles for Roles.Role;

    Roles.Role private _minters;

    constructor(
        string memory name,
        string memory symbol,
        uint256 initialSupply
    ) public ERC20Detailed(name, symbol, 18) {
        _minters.add(_msgSender());
        _mint(_msgSender(), initialSupply);
    }

}
