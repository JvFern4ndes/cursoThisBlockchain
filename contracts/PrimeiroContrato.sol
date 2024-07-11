// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

contract PrimeiroContrato {

    uint dadoArmazenado;

    function definirValorDaVariavel(uint dado) public {
        dadoArmazenado = dado;
    }

    function consultarDadoArmazenado() public view returns (uint) {
        return dadoArmazenado;
    }

}
