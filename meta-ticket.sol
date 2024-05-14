// contracts/EventTickets.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract EventTicket is ERC1155 {
  // Declare the type ID for the single ticket type
  uint256 public constant GENERAL = 0;

  constructor() ERC1155("ipfs://storage.link/bafyreidtc6fs4xrnc5b7klvvtrs2bsijkt54qqnonk54stkjj3rtdb5wee/{id}.json") {
    _mint(msg.sender, GENERAL, 10**2, "");
  }
}
