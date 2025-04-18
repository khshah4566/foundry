// SPDX-License-Identifier: MIT
pragma solidity 0.8.09; 

import "../src/Books.sol";
import "forge-std/Test.sol";

contract TestBooks is Test {
    Books public books;

    function setUp() public {
        books = new Books("Programming Foundry", "khushil", 100);
    }

    function test_get_book() public {
        Books.Book memory retrievedBook = books.get_book();
        assertEq(retrievedBook.title, "Programming Foundry");
        assertEq(retrievedBook.author, "khushil");
        assertEq(retrievedBook.pages, 100);
    }

    function test_updatePages() public {
        books.update_pages(200);
        Books.Book memory retrievedBook = books.get_book();
        assertEq(retrievedBook.pages, 200);
    }
}