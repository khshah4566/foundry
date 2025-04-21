// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Script.sol"; // Import Foundry's Script functionality
import "../src/Books.sol"; // Path to your Books contract

contract DeployBooks is Script {
    function run() public {
        // Deploy the contract
        vm.startBroadcast(); // Start the broadcast to the blockchain
        Books books = new Books("Programming Foundry", "Khushil", 100);

        // Simulate the deployment
        vm.stopBroadcast(); // End the broadcast to the blockchain

        // Log the updated book details
        Books.Book memory updatedBook = books.get_book();
        console.log("Updated Book Title:", updatedBook.title);
        console.log("Updated Book Author:", updatedBook.author);
        console.log("Updated Book Pages:", updatedBook.pages);
    }
}
