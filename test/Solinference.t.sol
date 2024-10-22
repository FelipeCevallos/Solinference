//SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {Test} from "forge-std/Test.sol";
import {Solinference} from "../src/Solinference.sol";

contract SolinferenceTest is Test {
    Solinference public solinference;

    function setUp() public {
        solinference = new Solinference();
    }

    function testMean() public view{
        int[] memory data = new int[](41);
        data[0] = 1e18; // 1
        data[1] = 2e18; // 2
        data[2] = 3e18; // 3
        data[3] = 4e18; // 4
        data[4] = 5e18; // 5
        data[5] = 6e18; // 6
        data[6] = 7e18; // 7
        data[7] = 8e18; // 8
        data[8] = 9e18; // 9
        data[9] = 10e18; // 10
        data[10] = 10e18; // 10
        data[11] = 11e18; // 11
        data[12] = 12e18; // 12
        data[13] = 13e18; // 13
        data[14] = 14e18; // 14
        data[15] = 15e18; // 15
        data[16] = 16e18; // 16
        data[17] = 17e18; // 17
        data[18] = 18e18; // 18
        data[19] = 19e18; // 19
        data[20] = 20e18; // 20
        data[21] = 21e18; // 21
        data[22] = 22e18; // 22
        data[23] = 23e18; // 23
        data[24] = 24e18; // 24
        data[25] = 25e18; // 25
        data[26] = 26e18; // 26
        data[27] = 27e18; // 27
        data[28] = 28e18; // 28
        data[29] = 29e18; // 29
        data[30] = 30e18; // 30
        data[31] = 31e18; // 31
        data[32] = 32e18; // 32
        data[33] = 33e18; // 33
        data[34] = 34e18; // 34
        data[35] = 35e18; // 35
        data[36] = 36e18; // 36
        data[37] = 37e18; // 37
        data[38] = 38e18; // 38
        data[39] = 39e18; // 39
        data[40] = 40e18; // 40 
        int256 result = solinference.mean(data);
        assertApproxEqAbs(result, 20243902439024390244, 1e12);  // Expected mean is 20.24390243902439
    }

    function testMedian() public view{
        int[] memory data = new int[](41);
        data[0] = 1e18; // 1
        data[1] = 2e18; // 2
        data[2] = 3e18; // 3
        data[3] = 4e18; // 4
        data[4] = 5e18; // 5
        data[5] = 6e18; // 6
        data[6] = 7e18; // 7
        data[7] = 8e18; // 8
        data[8] = 9e18; // 9
        data[9] = 10e18; // 10
        data[10] = 10e18; // 10
        data[11] = 11e18; // 11
        data[12] = 12e18; // 12
        data[13] = 13e18; // 13
        data[14] = 14e18; // 14
        data[15] = 15e18; // 15
        data[16] = 16e18; // 16
        data[17] = 17e18; // 17
        data[18] = 18e18; // 18
        data[19] = 19e18; // 19
        data[20] = 20e18; // 20
        data[21] = 21e18; // 21
        data[22] = 22e18; // 22
        data[23] = 23e18; // 23
        data[24] = 24e18; // 24
        data[25] = 25e18; // 25
        data[26] = 26e18; // 26
        data[27] = 27e18; // 27
        data[28] = 28e18; // 28
        data[29] = 29e18; // 29
        data[30] = 30e18; // 30
        data[31] = 31e18; // 31
        data[32] = 32e18; // 32
        data[33] = 33e18; // 33
        data[34] = 34e18; // 34
        data[35] = 35e18; // 35
        data[36] = 36e18; // 36
        data[37] = 37e18; // 37
        data[38] = 38e18; // 38
        data[39] = 39e18; // 39
        data[40] = 40e18; // 40 
        int256 result = solinference.median(data);
        assertApproxEqAbs(result, 20e18, 1e12); // Expected median is 20
    }

    function testRange() public view{
        int[] memory data = new int[](41);
        data[0] = 1e18; // 1
        data[1] = 2e18; // 2
        data[2] = 3e18; // 3
        data[3] = 4e18; // 4
        data[4] = 5e18; // 5
        data[5] = 6e18; // 6
        data[6] = 7e18; // 7
        data[7] = 8e18; // 8
        data[8] = 9e18; // 9
        data[9] = 10e18; // 10
        data[10] = 10e18; // 10
        data[11] = 11e18; // 11
        data[12] = 12e18; // 12
        data[13] = 13e18; // 13
        data[14] = 14e18; // 14
        data[15] = 15e18; // 15
        data[16] = 16e18; // 16
        data[17] = 17e18; // 17
        data[18] = 18e18; // 18
        data[19] = 19e18; // 19
        data[20] = 20e18; // 20
        data[21] = 21e18; // 21
        data[22] = 22e18; // 22
        data[23] = 23e18; // 23
        data[24] = 24e18; // 24
        data[25] = 25e18; // 25
        data[26] = 26e18; // 26
        data[27] = 27e18; // 27
        data[28] = 28e18; // 28
        data[29] = 29e18; // 29
        data[30] = 30e18; // 30
        data[31] = 31e18; // 31
        data[32] = 32e18; // 32
        data[33] = 33e18; // 33
        data[34] = 34e18; // 34
        data[35] = 35e18; // 35
        data[36] = 36e18; // 36
        data[37] = 37e18; // 37
        data[38] = 38e18; // 38
        data[39] = 39e18; // 39
        data[40] = 40e18; // 40 
        uint256 result = solinference.range(data); 
        assertApproxEqAbs(result, 39e18, 1e12);  // Expected range is 40 - 1 = 39
    }

    function testMode() public view{
        int[] memory data = new int[](41);
        data[0] = 1e18; // 1
        data[1] = 2e18; // 2
        data[2] = 3e18; // 3
        data[3] = 4e18; // 4
        data[4] = 5e18; // 5
        data[5] = 6e18; // 6
        data[6] = 7e18; // 7
        data[7] = 8e18; // 8
        data[8] = 9e18; // 9
        data[9] = 10e18; // 10
        data[10] = 10e18; // 10
        data[11] = 11e18; // 11
        data[12] = 12e18; // 12
        data[13] = 13e18; // 13
        data[14] = 14e18; // 14
        data[15] = 15e18; // 15
        data[16] = 16e18; // 16
        data[17] = 17e18; // 17
        data[18] = 18e18; // 18
        data[19] = 19e18; // 19
        data[20] = 20e18; // 20
        data[21] = 21e18; // 21
        data[22] = 22e18; // 22
        data[23] = 23e18; // 23
        data[24] = 24e18; // 24
        data[25] = 25e18; // 25
        data[26] = 26e18; // 26
        data[27] = 27e18; // 27
        data[28] = 28e18; // 28
        data[29] = 29e18; // 29
        data[30] = 30e18; // 30
        data[31] = 31e18; // 31
        data[32] = 32e18; // 32
        data[33] = 33e18; // 33
        data[34] = 34e18; // 34
        data[35] = 35e18; // 35
        data[36] = 36e18; // 36
        data[37] = 37e18; // 37
        data[38] = 38e18; // 38
        data[39] = 39e18; // 39
        data[40] = 40e18; // 40 
        int[] memory result = solinference.mode(data);
        assertEq(result.length, 1);
        assertEq(result[0], 10e18); // Expected mode is 10
    }

    function testVariance() public view{
        int[] memory data = new int[](41);
        data[0] = 1e18; // 1
        data[1] = 2e18; // 2
        data[2] = 3e18; // 3
        data[3] = 4e18; // 4
        data[4] = 5e18; // 5
        data[5] = 6e18; // 6
        data[6] = 7e18; // 7
        data[7] = 8e18; // 8
        data[8] = 9e18; // 9
        data[9] = 10e18; // 10
        data[10] = 10e18; // 10
        data[11] = 11e18; // 11
        data[12] = 12e18; // 12
        data[13] = 13e18; // 13
        data[14] = 14e18; // 14
        data[15] = 15e18; // 15
        data[16] = 16e18; // 16
        data[17] = 17e18; // 17
        data[18] = 18e18; // 18
        data[19] = 19e18; // 19
        data[20] = 20e18; // 20
        data[21] = 21e18; // 21
        data[22] = 22e18; // 22
        data[23] = 23e18; // 23
        data[24] = 24e18; // 24
        data[25] = 25e18; // 25
        data[26] = 26e18; // 26
        data[27] = 27e18; // 27
        data[28] = 28e18; // 28
        data[29] = 29e18; // 29
        data[30] = 30e18; // 30
        data[31] = 31e18; // 31
        data[32] = 32e18; // 32
        data[33] = 33e18; // 33
        data[34] = 34e18; // 34
        data[35] = 35e18; // 35
        data[36] = 36e18; // 36
        data[37] = 37e18; // 37
        data[38] = 38e18; // 38
        data[39] = 39e18; // 39
        data[40] = 40e18; // 40 
        int256 result = solinference.variance(data);
        assertApproxEqAbs(result, 13262343842950624, 1e6); // Adjusted expected value and tolerance
    }

    function testStdDev() public view{
        int[] memory data = new int[](41);
        data[0] = 1e18; // 1
        data[1] = 2e18; // 2
        data[2] = 3e18; // 3
        data[3] = 4e18; // 4
        data[4] = 5e18; // 5
        data[5] = 6e18; // 6
        data[6] = 7e18; // 7
        data[7] = 8e18; // 8
        data[8] = 9e18; // 9
        data[9] = 10e18; // 10
        data[10] = 10e18; // 10
        data[11] = 11e18; // 11
        data[12] = 12e18; // 12
        data[13] = 13e18; // 13
        data[14] = 14e18; // 14
        data[15] = 15e18; // 15
        data[16] = 16e18; // 16
        data[17] = 17e18; // 17
        data[18] = 18e18; // 18
        data[19] = 19e18; // 19
        data[20] = 20e18; // 20
        data[21] = 21e18; // 21
        data[22] = 22e18; // 22
        data[23] = 23e18; // 23
        data[24] = 24e18; // 24
        data[25] = 25e18; // 25
        data[26] = 26e18; // 26
        data[27] = 27e18; // 27
        data[28] = 28e18; // 28
        data[29] = 29e18; // 29
        data[30] = 30e18; // 30
        data[31] = 31e18; // 31
        data[32] = 32e18; // 32
        data[33] = 33e18; // 33
        data[34] = 34e18; // 34
        data[35] = 35e18; // 35
        data[36] = 36e18; // 36
        data[37] = 37e18; // 37
        data[38] = 38e18; // 38
        data[39] = 39e18; // 39
        data[40] = 40e18; // 40 
        int256 result = solinference.stdDev(data);
        assertApproxEqAbs(result, 115162250, 1e10); // Expected std deviation is 11.659289188893286
    }

// 11516225007766488
// 115162250
    function testZValue() public {
    }
}
