// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import { DSMath } from "../lib/ds-math/src/math.sol";

contract StatSol  is DSMath {


    // Calculate the mean of an array of values
    function mean(uint[] memory data) internal pure returns (uint) {
        require(data.length > 0, "Data array is empty");
        uint sum = 0;
        for (uint i = 0; i < data.length; i++) {
            sum += data[i];
        }
        return (sum / data.length * WAD);
    }

    function bubbleSort(uint[] memory arr) public pure returns (uint[] memory) {
        uint n = arr.length;
        for (uint i = 0; i < n - 1; i++) {
            for (uint j = 0; j < n - i - 1; j++) {
                if (arr[j] > arr[j + 1]) {
                (arr[j], arr[j + 1]) = (arr[j + 1], arr[j]);
                }
            }
        }
        return arr;
    }


    function calculateMedian(uint[] memory data) internal pure returns (uint) {
        // require(data.length > 0, "Data array is empty");
        // uint[] memory sortedData = sort(data);
        // uint middle = sortedData.length / 2;

    //     if (sortedData.length % 2 == 0) {
    //         return (sortedData[middle - 1] + sortedData[middle]) / 2;
    //     } else {
    //         return sortedData[middle];
    //     }
    }


    // function sort(uint[] memory data) internal pure returns (uint[] memory) {
    //     // Implement sorting algorithm (like bubble sort or quicksort)
    //     // Sorting is not gas-efficient but may be necessary for median calculation
    //     // You can also consider external sorting methods off-chain if the data size is large
    // }

    // // Function to calculate the mean of an array of values
    // function calculateMean(uint[] memory values) public returns (uint) {
    //     uint sum = 0;
    //     for (uint i = 0; i < values.length; i++) {
    //         sum = DSMath.add(sum, values[i]);
    //     }
    //     return DSMath.wdiv(sum, values.length * WAD);  // Mean = sum / number of values
    // }

    // Function to calculate the standard deviation of an array of values
    // function calculateStandardDeviation(uint[] memory values) public pure returns (uint) {
    //     uint mean = calculateMean(values);
    //     uint varianceSum = 0;

    //     // Calculate variance
    //     for (uint i = 0; i < values.length; i++) {
    //         uint diff = DSMath.sub(values[i], mean);
    //         uint diffSquared = wmul(diff, diff);
    //         varianceSum = add(varianceSum, diffSquared);
    //     }

    //     uint variance = wdiv(varianceSum, values.length * WAD);  // Variance = sum of squares / array size
    //     return sqrt(variance);  // Standard Deviation = sqrt(variance)
    // }

    // Function to calculate z-value
    // z = (proposed mean - sample mean) / (standard deviation / sqrt(array size))
    // function calculateZValue(uint[] memory values, uint proposedMean) public pure returns (uint) {
    //     uint sampleMean = calculateMean(values);
    //     uint stdDev = calculateStandardDeviation(values);
    //     uint arraySize = values.length * WAD;

    //     uint sqrtSize = sqrt(arraySize);  // sqrt(array size)
    //     uint stdError = wdiv(stdDev, sqrtSize);  // Standard error = stdDev / sqrt(array size)

    //     uint zValue = wdiv(sub(proposedMean, sampleMean), stdError);  // z = (proposedMean - sampleMean) / stdError
    //     return zValue;
    // }

    // Needd to create a floor function that returns the nearest z-value to output the density value




    //THE FOLLOWING IS TESTING CODE
    // function mean( uint256[] memory values)  returns (uint256) {
    //     return (values.sum() / values.length);
    // }

    // function median( uint256[] memory values)  returns (uint256) {
    //     values.sort();
    //     if (values.length % 2 == 0) {
    //         return (values[values.length / 2] + values[values.length / 2 - 1]) / 2;
    //     } else {
    //         return values[values.length / 2];
    //     }
    // }

    // function mode( uint256[] memory values)  returns (uint256) {
    //     uint256 max = 0;
    //     uint256 mode = 0;
    //     for (uint256 i = 0; i < values.length; i++) {
    //         if (values[i] > max) {
    //             max = values[i];
    //             mode = i;
    //         }
    //     }
    //     return mode;
    // }

    // function range( uint256[] memory values)  returns (uint256) {
    //     values.sort();
    //     return values[values.length - 1] - values[0];
    // }

    // fucntion variance (uint256[] memory values)  returns (uint256) {
    //     uint256 mean = mean(values);
    //     uint256 sum = 0;
    //     for (uint256 i = 0; i < values.length; i++) {
    //         sum += (values[i] - mean) * (values[i] - mean);
    //     }
    //     return sum / (values.length - 1);
    // }

    // function pvar( uint256[] memory values)  returns (uint256) {
    //     uint256 mean = mean(values);
    //     uint256 sum = 0;
    //     for (uint256 i = 0; i < values.length; i++) {
    //         sum += (values[i] - mean) * (values[i] - mean);
    //     }
    //     return sum / values.length;
    // }

    // function pstdev( uint256[] memory values)  returns (uint256) {
    //     return sqrt(pvar(values));
    // }

    // function stdev( uint256[] memory values)  returns (uint256) {
    //     return sqrt(var(values));
    // }
}
