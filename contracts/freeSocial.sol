// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract freeSocial {
    mapping(address => string) public posts;

    function criarPost(string memory _texto) public {
        posts[msg.sender] = _texto;
    }
}