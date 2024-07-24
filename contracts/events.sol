// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Events {
    // Definindo um evento
    event ValorAlterado(address indexed autor, uint256 valorAntigo, uint256 valorNovo);

    uint256 public valor;

    function definirValor(uint256 valorNovo) public {
        uint256 valorAntigo = valor;
        valor = valorNovo;
        
        // Emitindo um evento
        emit ValorAlterado(msg.sender, valorAntigo, valorNovo);
    }
}
