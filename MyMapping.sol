// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyMapping{
    // Mappings
    mapping(uint => uint) numbers;
    mapping(uint => string) names;
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBook;

    struct Book {
        string title;
        string author;
    }

    constructor() {
        number[0] = 0;
        names[1] = "Adam";
        names[2] = "Bruce";
        names[3] = "Carl";
    }

    function addBook(
        uint _id,
        string memory _title,
        string memory _author
    ) public {
        books[_id] = Book(_title, _author);
    }

    function addMyBook(
        uint _id,
        string memory _title,
        string memory _author
    ) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }
}