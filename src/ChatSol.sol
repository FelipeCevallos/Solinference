// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { DSMath } from "https://github.com/dapphub/ds-math/blob/master/src/math.sol";

contract StatsCalculator is DSMath {

    // Function to calculate the mean of an array of values
    function calculateMean(uint[] memory values) public returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < values.length; i++) {
            sum = add(sum, values[i]);
        }
        return wdiv(sum, values.length * WAD);  // Mean = sum / number of values
    }

    // Function to calculate the standard deviation of an array of values
    function calculateStandardDeviation(uint[] memory values) public pure returns (uint) {
        uint mean = calculateMean(values);
        uint varianceSum = 0;

        // Calculate variance
        for (uint i = 0; i < values.length; i++) {
            uint diff = sub(values[i], mean);
            uint diffSquared = wmul(diff, diff);
            varianceSum = add(varianceSum, diffSquared);
        }

        uint variance = wdiv(varianceSum, values.length * WAD);  // Variance = sum of squares / array size
        return sqrt(variance);  // Standard Deviation = sqrt(variance)
    }

    // Function to calculate z-value
    // z = (proposed mean - sample mean) / (standard deviation / sqrt(array size))
    function calculateZValue(uint[] memory values, uint proposedMean) public pure returns (uint) {
        uint sampleMean = calculateMean(values);
        uint stdDev = calculateStandardDeviation(values);
        uint arraySize = values.length * WAD;

        uint sqrtSize = sqrt(arraySize);  // sqrt(array size)
        uint stdError = wdiv(stdDev, sqrtSize);  // Standard error = stdDev / sqrt(array size)

        uint zValue = wdiv(sub(proposedMean, sampleMean), stdError);  // z = (proposedMean - sampleMean) / stdError
        return zValue;
    }

    // Needd to create a floor function that returns the nearest z-value to output the density value
}
