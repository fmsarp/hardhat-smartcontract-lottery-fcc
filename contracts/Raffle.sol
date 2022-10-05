// Raffle

// Enter the lottery (paying some amount)
// Pick a random winner (verifiably random)
// Winner to be selected every x minutes -> completely automated
// chainlink Oracle -> Randomness, Automated Execution (Chainlink Keepers)

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

error Raffle__NotEnoughETHEntered();

contract Raffle {
    uint256 private immutable i_entranceFee;

    constructor(uint256 entranceFee) {
        i_entranceFee = entranceFee;
    }

    function enterRaffle() {
        if (msg.value < i_entranceFee) {
            revert Raffle__NotEnoughETHEntered();
        }
    }

    // function pickRandomWinner() {}

    function getEntranceFee() public view returns (uint256) {
        return i_entranceFee;
    }
}
