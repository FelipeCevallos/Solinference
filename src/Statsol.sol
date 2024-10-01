// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import { DSMath } from "../lib/ds-math/src/math.sol";

contract StatSol  is DSMath {


    // Calculate the mean of an array of values
    function mean(uint[] memory data) public pure returns (uint) {
        require(data.length > 0, "Data array is empty");
        uint sum = 0;
        for (uint i = 0; i < data.length; i++) {
            sum = DSMath.add(sum, data[i]);
        }
        return DSMath.wdiv(sum, data.length * WAD);
    }

    // Sort the array in ascending order
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

    // Calculate the median of an array of values
    function median(uint[] memory data) public pure returns (uint) {
        require(data.length > 0, "Data array is empty");
        uint[] memory sortedData = bubbleSort(data);
        uint middle = sortedData.length / 2;
        if (sortedData.length % 2 == 0) {
            return (sortedData[middle - 1] + sortedData[middle]) / 2;
        } else {
            return sortedData[middle];
            
        }
    }

    // Calculate the range of an array of values
    function range(uint[] memory data) public pure returns (uint) {
        require(data.length > 0, "Data array is empty");
        uint[] memory sortedarray = bubbleSort(data);
        return sortedarray[sortedarray.length - 1] - sortedarray[0];
    }
    

    // Calculate the mode of an array of values
    function mode( uint256[] memory data) public pure returns (uint256) {
        uint256 max = 0;
        uint256 mode = 0;
        for (uint256 i = 0; i < data.length; i++) {
            if (data[i] > max) {
                max = data[i];
                mode = i;
            }
        }
        return mode;
    }

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
