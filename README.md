Contracts

- statslibrary
  functions
  How to use each function and what it does
- zmapping

············································································································································

BETA

This code is in Beta, it is not ready for production

INFERENCE LIBRARY

{Nameplaceholder} is a statistical inference library made in Solidity. The library is composed by two contracts: StatsLibrary and Z-mapping. Statslibrary is the contract that containes the main statistical inference fucntions: mean, harmonic mean, median, mode, range, variance, standard deviation, population variance, population standard deviation, covariance, correlation, and a mapping from Phi to the normal distribution density. The normal distribution (A.K.A Gaussian or bell curve distribution) is used for modelling randomness and it is commmonly used for the pricing of financial assets. The issue with using distribution function in Solidity is that they use a lot of irrational numbers as well as many decimals. We believe that by creating a library with Phi values corresponding to values within the ddensity, we can remove the necessity to hardcode aproximations for irrational numbers and instead just deal with decimals of Phi [-3.49,3.49]. By using DS-Math by DappHub, we can safely use fixed-point decimal nuumbers to interact with the Inference library. It is very GAS inefficient to run the complex calculations that probability distributions do, so having a library with the proper mapping of Phi values to porbability density can be of great use to the community.

HOW TO USE

bla bla bla

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
