// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SimpleEventExample {
    // Declaração do evento
    event NewTransaction(address indexed from, address indexed to, uint256 amount);

    // Função para emitir o evento
    function sendTransaction(address to, uint256 amount) public {
        // Emitindo o evento
        emit NewTransaction(msg.sender, to, amount);
    }
}
