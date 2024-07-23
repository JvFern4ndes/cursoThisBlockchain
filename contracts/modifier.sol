// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Modifier {
    address public dono;

    // Modificador que permite apenas ao dono executar a função
    modifier apenasDono() {
        require(msg.sender == dono, "Acesso negado: apenas o dono pode executar esta funcao.");
        _;
    }

    // Construtor que define o dono inicial do contrato
    constructor() {
        dono = msg.sender;
    }

    // Função que apenas o dono pode chamar
    function funcaoRestrita() public apenasDono {
        // Lógica da função restrita
    }
}
