// SPDX-License-Identifier: MIT

pragma solidity =0.8.3;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";

interface IBentoBox {
    function deposit(
        IERC20Upgradeable token_,
        address from,
        address to,
        uint256 amount,
        uint256 share
    ) external returns (uint256 amountOut, uint256 shareOut);

    function withdraw(
        IERC20Upgradeable token_,
        address from,
        address to,
        uint256 amount,
        uint256 share
    ) external returns (uint256 amountOut, uint256 shareOut);

    function balanceOf(IERC20Upgradeable token_, address addr) public view returns (uint256);
}
