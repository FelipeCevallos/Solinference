// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import { DSMath } from "../lib/ds-math/src/math.sol";

contract Solinference  is DSMath {


    // Calculate the mean of an array of values
    function mean(uint[] memory data) public pure returns (uint256) {
        require(data.length > 0, "Data array is empty");
        uint sum = 0;
        for (uint i = 0; i < data.length; i++) {
            sum = DSMath.add(sum, data[i]);
        }
        return DSMath.wdiv(sum, data.length * WAD);
    }

    // Sort the array in ascending order
    function bubbleSort(uint[] memory arr) public pure returns (uint256[] memory) {
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
    function median(uint[] memory data) public pure returns (uint256) {
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
    function range(uint[] memory data) public pure returns (uint256) {
        require(data.length > 0, "Data array is empty");
        uint[] memory sortedarray = bubbleSort(data);
        return sortedarray[sortedarray.length - 1] - sortedarray[0];
    }
    
    // Calculate the mode of an array of values
    function mode(uint256[] memory data) public pure returns (uint256[] memory) {
        uint256 len = data.length;
        require(len > 0, "Array is empty");
        
        // Temporary arrays for unique numbers and their frequencies
        uint256[] memory uniqueNumbers = new uint256[](len);
        uint256[] memory frequencies = new uint256[](len);
        uint256 uniqueCount = 0;
        uint256 highestCount = 0;
        
        // Loop through the array and count occurrences
        for (uint256 i = 0; i < len; i++) {
            uint256 num = data[i];
            bool found = false;
            
            // Check if the number has been encountered before
            for (uint256 j = 0; j < uniqueCount; j++) {
                if (uniqueNumbers[j] == num) {
                    frequencies[j]++;
                    found = true;
                    if (frequencies[j] > highestCount) {
                        highestCount = frequencies[j];
                    }
                    break;
                }
            }
            
            // If the number is unique, add it to the uniqueNumbers array
            if (!found) {
                uniqueNumbers[uniqueCount] = num;
                frequencies[uniqueCount] = 1;
                if (1 > highestCount) {
                    highestCount = 1;
                }
                uniqueCount++;
            }
        }
        
        // Count how many numbers have the highest frequency
        uint256 resultCount = 0;
        for (uint256 i = 0; i < uniqueCount; i++) {
            if (frequencies[i] == highestCount) {
                resultCount++;
            }
        }
        
        // Create a new array to store the result
        uint256[] memory result = new uint256[](resultCount);
        uint256 index = 0;
        
        // Populate the result array with numbers that have the highest frequency
        for (uint256 i = 0; i < uniqueCount; i++) {
            if (frequencies[i] == highestCount) {
                result[index] = uniqueNumbers[i];
                index++;
            }
        }
        
        return result;
    }

    // Calculate the variance of an array of values
    function variance(uint[] memory values) public pure returns (uint256) {
        require(values.length > 0, "Array is empty");
        uint256 meanValue = mean(values);
        uint256 sumOfSquaredDifferences = 0;

        for (uint i = 0; i < values.length; i++) {
            uint256 difference = DSMath.sub(values[i], meanValue);
            uint256 squaredDifference = DSMath.wmul(difference, difference);
            sumOfSquaredDifferences = DSMath.add(sumOfSquaredDifferences, squaredDifference);
        }
        return DSMath.wdiv(sumOfSquaredDifferences, values.length * WAD);
    }

    // Custom square root function
    function sqrt(uint x) internal pure returns (uint y) {
        uint z = (x + 1) / 2;
        y = x;
        while (z < y) {
            y = z;
            z = (x / z + z) / 2;
        }
    }

    // Calculate the standard deviation of an array of values
    function stdDeviation(uint[] memory values) public pure returns (uint) {
        uint _variance = variance(values);
        return sqrt(_variance); 
    }
    // Function to round to the nearest integer
    function roundToNearestInteger(uint256 number) public pure returns (uint256) {
        // If the number is positive
        if (number >= 0) {
            return (number + 5 * 10**17) / 10**18 * 10**18;
        }
        // If the number is negative
        else {
            return (number - 5 * 10**17) / 10**18 * 10**18;
        }
    }

    // Function to calculate z-value
    // z = (proposed mean - sample mean) / (standard deviation / sqrt(array size))
    function zValue(uint[] memory values, uint proposedMean) public pure returns (uint) {
        uint sampleMean = mean(values);
        uint stdDev = stdDeviation(values);
        uint arraySize = values.length * WAD;

        uint sqrtSize = sqrt(arraySize);  // sqrt(array size)
        uint stdError = wdiv(stdDev, sqrtSize);  // Standard error = stdDev / sqrt(array size)

        uint _zValue = wdiv(sub(proposedMean, sampleMean), stdError);  // z = (proposedMean - sampleMean) / stdError
        uint ZValue = roundToNearestInteger(_zValue);
        return ZValue;
    }
}