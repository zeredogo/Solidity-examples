// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContracts {
    address owner;
    string secret;

    modifier onlyOwner() {
        require(msg.sender == owner, "must be owner");
    }

    constructor(string memory _secret) public {
        secret = secret;
        owner = msg.sender;
    }

    function getSecret() public view onlyOwner returns(string) {
        return secret;
    }

}