// contracts/myErc1155.sol
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../openzeppelin-contracts/contracts/token/ERC1155/ERC1155.sol";
// import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/master/contracts/token/ERC1155/ERC1155.sol";


contract myErc1155 is ERC1155 {

    uint256 public constant GOLD = 0;
    uint256 public constant SILVER = 1;
    uint256 public constant THORS_HAMMER = 2;

    constructor() public ERC1155("https://abcoathup.github.io/SampleERC1155/api/token/{id}.json") {
        _mint(msg.sender, GOLD, 10**18, "");
        _mint(msg.sender, SILVER, 10**27, "");
        _mint(msg.sender, THORS_HAMMER, 1, "");
    }
}
