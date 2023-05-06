// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MessageSender {
    // to send a message to a recipient
    address recipient = 0x6a4ef07DD39992F78dCacd79FB01d65849969D51;

    function sendMessage(string memory message) public payable {
        emit MessageSent(msg.sender, recipient, message);
    }
    
    event MessageSent(address indexed sender, address indexed recipient, string message);
}
