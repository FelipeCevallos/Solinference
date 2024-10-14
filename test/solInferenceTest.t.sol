//SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import { Solinference } from "../src/Solinference.sol";


contract solInferenceTest  is Solinference {

    function mean_test(uint[] memory values) public pure returns (bool) {
        return Solinference.mean(values) == 1;    
    }

    function median_test(uint[] memory values) public pure returns (bool) {
        return Solinference.median(values) == 1;
    }

    function range_test(uint[] memory values) public pure returns (bool) {
        return Solinference.range(values) == 1;
    }

    function variance_test(uint[] memory values) public pure returns (bool) {
        return Solinference.variance(values) == 1;
    }

    function stdDeviation_test(uint[] memory values) public pure returns (bool) {
        return Solinference.stdDeviation(values) == 1;
    }

    function zValue_test(uint[] memory values, uint proposedMean) public pure returns (bool) {
        return Solinference.zValue(values, proposedMean) == 1;
    }   
}