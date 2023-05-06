// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Calculator {
    int public result;
    
    //for addition
    function add(int a, int b) public {
        result = a + b;
    }
    
    //for substraction
    function subtract(int a, int b) public {
        result = a - b;
    }
    
    //for multiplication
    function multiply(int a, int b) public {
        result = a * b;
    }
    
    //for divition
    function divide(int a, int b) public {
        require(b != 0, "Cannot divide by zero.");
        result = a / b;
    }
}
