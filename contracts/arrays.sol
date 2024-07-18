// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract arrays {

    // Declaração de um array estático de inteiros com 3 elementos
    uint[3] public arrayEstatico;

    // Declaração de um array dinâmico de inteiros
    uint[] public arrayDinamico;

    // MANIPULAÇÃO DE ARRAYS

    // Função para adicionar um elemento ao array dinâmico
    function adicionarElemento(uint elemento) public {
        arrayDinamico.push(elemento);
    }

    // Função para obter um elemento do array dinâmico pelo índice
    function obterElemento(uint indice) public view returns (uint) {
        return arrayDinamico[indice];
    }

}