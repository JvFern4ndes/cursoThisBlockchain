// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract freeSocial {
    mapping(address => string[]) public posts;

    function criarPost(string memory _texto) public {
        posts[msg.sender].push(_texto);
    }

    function visualizarPost(address _criadorDoPost, uint _index) public view returns (string memory) {
        return posts[_criadorDoPost][_index];
    }

    function visualizarTodosOsPosts(address _criadorDoPost) public view returns (string[] memory) {
        return posts[_criadorDoPost];
    }
}