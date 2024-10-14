BETA
This code is in Beta, it is not ready for production

Solidity Statistics Library
This Solidity library provides a set of statistical functions that can be used for performing basic descriptive statistics as well as statistical inference on-chain. The library is designed to operate efficiently with Solidity’s constraints and offers a variety of common statistical functions.

Features
The following statistical functions are included in this library:

Mean: Calculates the average of a given set of values.
Median: Finds the middle value in a sorted data set.
Mode: Determines the most frequent value(s) in the data set.
Range: Computes the difference between the maximum and minimum values.
Variance: Measures the dispersion of data points in relation to the mean.
Standard Deviation: Determines the amount of variation or dispersion of a data set.
Phi Function (Φ): Calculates the cumulative distribution function (CDF) of the normal distribution. This is useful for statistical inference and hypothesis testing in situations involving normally distributed data.

How It Works
The library is built with Solidity's constraints in mind, such as gas limits and the absence of floating-point arithmetic. It ensures compatibility by leveraging fixed-point math for handling decimal values and makes use of efficient algorithms to perform computations. For this we use DS-Math by DappHub in order to operate with floating-point arithmetic to calculate the Phi function, which is then used to calculate the Z-value of normal distribution. 

Phi Function for Statistical Inference
The Phi function in this library calculates the CDF of the standard normal distribution. It allows users to compute the probability that a value drawn from a normal distribution is less than or equal to a specified z value. This is particularly useful in hypothesis testing and other statistical inference scenarios.

Solidity Version
This library is compatible with Solidity >=0.8.0, leveraging the built-in overflow protections introduced in newer versions of Solidity.

Installation
Clone this repository.
Import the StatsLibrary.sol into your Solidity project.
Future Work
We aim to continue improving the library by adding more advanced statistical functions and optimizing gas usage for larger datasets.

INFERENCE LIBRARY

Solinference is a statistical inference library made in Solidity. The library is composed by two contracts: Solniference and Z-mapping. Solinference is the contract that containes the main statistical inference fucntions: mean, harmonic mean, median, mode, range, variance, standard deviation, population variance, population standard deviation, covariance, correlation, and a mapping from Phi to the normal distribution density. The normal distribution (A.K.A Gaussian or bell curve distribution) is used for modelling randomness and it is commmonly used for the pricing of financial assets. The issue with using distribution function in Solidity is that they use a lot of irrational numbers as well as many decimals. We believe that by creating a library with Phi values corresponding to values within the ddensity, we can remove the necessity to hardcode aproximations for irrational numbers and instead just deal with decimals of Phi [-3.49,3.49]. By using DS-Math by DappHub, we can safely use fixed-point decimal nuumbers to interact with the Inference library. It is very GAS inefficient to run the complex calculations that probability distributions do, so having a library with the proper mapping of Phi values to porbability density can be of great use to the community.
