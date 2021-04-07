// contracts/SimpleCrowdsale.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.5.5;

import "@openzeppelin/contracts/crowdsale/Crowdsale.sol";
import "@openzeppelin/contracts/crowdsale/emission/AllowanceCrowdsale.sol";
import "@openzeppelin/contracts/crowdsale/validation/CappedCrowdsale.sol";

contract Crd is Crowdsale, AllowanceCrowdsale, CappedCrowdsale {
    constructor(
        uint256 rate,
        address payable wallet,
        IERC20 token,
        address tokenWallet,  // <- new argument
        uint256 cap             // total cap, in wei
    )
        AllowanceCrowdsale(tokenWallet)  // <- used here
        CappedCrowdsale(cap)
        Crowdsale(rate, wallet, token)
        public
    {

    }
}
