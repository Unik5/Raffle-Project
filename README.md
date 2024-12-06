# Proveably Random Raffle Contracts

## About

This code is to create a proveably ramdom smart contract lottery.

## What we want it to do?

1. Users can enter by paying for a ticket.
    1. The ticket fees are going to go to the winner during the draw
2. After X period of time, the lottery will automatically draw a winner
    1. And this will be donw programatically
3. Using Chainlink VRF and Chainlink Automation
    1. Chainlink VRF -> Randomness
    2. Chainlink Automation -> Time based trigger

## CEI: Checks,Effects and Interactions Method
1. Checks first: Check statements like if. 
2. Effects Second : Changes to variables
3. Interactions With Other Contaracts last

# Block.timestamp
```block.timestamp()```
Returns a uint256 value representing the timestamp of the current block. The output is the number of seconds that have passed since the Unix epoch (January 1, 1970, 00:00:00 UTC).

## Chainlink Automation


## Tests
1. Deploy Scripts
2. Write our tests
    1. Work on local chain
    2. Work on Testnet
    3. Work on Mainnet
    