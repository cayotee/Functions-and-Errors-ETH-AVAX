// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.13; 

contract sampleContract {
    uint256 public balance;
    
    function deposit(uint256 amount) external {
        require(amount > 0, "The amount cannot be zero.");
        
        assert(balance + amount >= balance);
        
        balance += amount;
    }
    
    function withdraw(uint256 amount) external {
        require(amount <= balance, "Not Enough balance");
        
        assert(balance - amount <= balance);
        
        balance -= amount;
    }
    
    function assertExample(uint256 a, uint256 b) external pure returns (uint256) {
        assert(a + b >= a);
        
        return a + b;
    }
    
    function revertExample() external pure {
        revert("Custom message applied and transaction reverted.");
    }
}
