//SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import { Statistics } from "../src/Statsol.sol";


contract statslibraryTest  is Statistics {

    function mean_test() public {
        assert(Statistics.test() == 1);
    }
}
