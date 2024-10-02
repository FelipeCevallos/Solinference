//SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import {Script} from "../lib/forge-std/src/Script.sol";
import {Solinference} from "../src/Solinference.sol";

contract DeploySolinference is Script {

    function run() external returns (Solinference) {
        vm.startBroadcast();

        Solinference solInference = new Solinference();

        vm.stopBroadcast();
        return solInference;
    }
}