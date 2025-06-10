//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
contract DynamicArraySum {
    uint256[] public numbers;

    // Function to add a number to the dynamic array
    function addNumber(uint256 _number) public {
        numbers.push(_number);
    }
    // Function to calculate the sum of all numbers in the dynamic array
    function sum() public view returns (uint256) {
        uint256 total = 0;
        for (uint256 i = 0; i < numbers.length; i++) {
            total += numbers[i];
        }
        return total;
    }
}