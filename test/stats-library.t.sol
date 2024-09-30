//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { statslibrary } from "../src/statslibrary.sol";


contract statslibraryTest  is statslibrary {

    function mean_test() public {
        assert(statslibrary.test() == 1);
    }
}
