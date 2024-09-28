// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import {ERC20} from "../ERC20.sol";
import {Context} from "../Context.sol";

abstract contract ERC20Burnable is Context, ERC20 {
    function burn(uint256 value) public virtual {
        _burn(_msgSender(), value);
    }

    function burnFrom(address account, uint256 value) public virtual {
        _spendAllowance(account, _msgSender(), value);
        _burn(account, value);
    }
}