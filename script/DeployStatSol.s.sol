//SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import {Script} from "../lib/forge-std/src/Script.sol";
import {StatSol} from "../src/StatSol.sol";

contract DeployStatSol is Script {

    function run() external returns (StatSol) {
        vm.startBroadcast();

        StatSol statSol = new StatSol();

        vm.stopBroadcast();
        return statSol;
    }
}