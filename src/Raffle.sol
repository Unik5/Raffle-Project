// Layout of Contract:
// version
// imports
// errors
// interfaces, libraries, contracts
// Type declarations
// State variables
// Events
// Modifiers
// Functions

// Layout of Functions:
// constructor
// receive function (if exists)
// fallback function (if exists)
// external
// public
// internal
// private
// internal & private view & pure functions
// external & public view & pure functions

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

/**
 * @title A Sample Raffle Contract
 * @author Unique Lama
 * @notice This contract is for creating a sample raffle
 * @dev Implements Chainlink VRFv2
 */

contract Raffle {
    error Raffle__NotEnoughETHSent(); // error banako for suru ma enterance fee ko eth pugena bhane

    uint256 private immutable i_enteranceFee;
    address payable[] private s_players;

    /**Events */
    event EnteredRaffle(address indexed player);

    constructor(uint256 enteranceFee) {
        i_enteranceFee = enteranceFee;
    }

    function enterRaffle() external payable {
        //require(msg.value >= i_enteranceFee, "Not enough ETH Sent!");
        if (msg.value <= i_enteranceFee) {
            revert Raffle__NotEnoughETHSent();
        }
        s_players.push(payable(msg.sender));

        emit EnteredRaffle(msg.sender);
    }

    function pickWinner() public {}

    /**Getter Functions */

    function getEnteranceFee() external view returns (uint256) {
        return i_enteranceFee;
    }
}
