// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract V3_SabrinaCarpenter {
    uint256 public totalSum;

    function calculateSum(uint256 n) public returns (uint256) {
        uint256 _tempSum = 0;
        // Se removió el ciclo innecesario
        for(uint256 i = 1; i <= n; i++) {
            _tempSum += i ** 2;
        }
        totalSum = _tempSum;
        return totalSum;
    }

    function measureCalculateSum(uint256 n) public returns (uint256 result, uint256 gasUsed) {
        uint256 startGas = gasleft();
        result = calculateSum(n);
        gasUsed = startGas - gasleft();
    }
}
