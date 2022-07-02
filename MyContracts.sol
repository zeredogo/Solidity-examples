// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Ownable {
     address owner;

     modifier onlyOwner() {
        require(msg.sender == owner, "must be owner");
        _;
    }

     constructor() {
        owner = msg.sender;
    }

    contract SecretVault {
     string secret;

     constructor(string memory _secret) {
        secret = secret;
    }

     function getSecret () public view onlyOwner returns(string) {
        return secret;
    }

    }
}

contract MyContracts is Ownable{

     constructor(string memory _secret)  {
        SecretVault _secretVault = new SecretVault(_secret);
        secretVault = address(_secretVault);
        super;
    }


    function getSecret() public view onlyOwner returns(string) {
        return SecretVault(secretVault).getSecret();
    }

}