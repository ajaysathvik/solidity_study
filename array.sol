// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyContract {
    uint[] public myArray;
    // to add a new value in array
    function addValue(uint _value) public {
        myArray.push(_value);
    }
    
    //to get a value of a certain index in a array
    function getValue(uint _index) public view returns (uint) {
        require(_index < myArray.length, "Index out of range");
        return myArray[_index];
    }
    
    
    //to get the array length
    function getArrayLength() public view returns (uint) {
        return myArray.length;
    }
    
    //to find the max value in the array
    function maxvalue() public view returns (uint){
        uint length=myArray.length;
        uint maxvalue=myArray[0];
        for (uint i=1;  i<length; i++) 
        {
            if (maxvalue<myArray[i]){maxvalue=myArray[i];}
        }
        
    }
}
