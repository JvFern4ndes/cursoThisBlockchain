// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract tiposDeVisibilidade {

    // PUBLIC

    uint public variavelPublica;  // Pode ser acessada externamente

    function funcaoPublica() public {
        // Pode ser chamada de fora do contrato
    }

    // PRIVATE

    uint private variavelPrivada;  // Não pode ser acessada externamente

    function funcaoPrivada() private {
        // Não pode ser chamada de fora do contrato
    }

    // EXTERNAL

    function funcaoExterna() external {
        // Não pode ser chamada internamente de forma direta
    }

    function chamarFuncaoExterna() public {
        this.funcaoExterna();  // Chamada permitida externamente
    }
}

// INTERNAL

contract Pai {
    uint internal variavelInterna;

    function funcaoInterna() internal {
        // Pode ser chamada de contratos derivados
    }
}

contract Filho is Pai {
    function teste() public {
        variavelInterna = 1; // Acesso permitido
        funcaoInterna();     // Chamada permitida
    }
}