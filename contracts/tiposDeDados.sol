// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TiposDeDadosInterativo {
    // Variáveis de estado
    bool public meuBool;             // Booleano
    int256 public meuInt;            // Inteiro com sinal
    string public minhaString;       // String
    address public meuEndereco;      // Endereço

    // Funções para definir variáveis de estado
    function definirMeuBool(bool _meuBool) public {
        meuBool = _meuBool;
    }

    function definirMeuInt(int256 _meuInt) public {
        meuInt = _meuInt;
    }

    function definirMinhaString(string memory _minhaString) public {
        minhaString = _minhaString;
    }

    function definirMeuEndereco(address _meuEndereco) public {
        meuEndereco = _meuEndereco;
    }

    // Funções para manipular e interagir com variáveis de estado
    function alternarBool() public {
        meuBool = !meuBool;
    }

    function incrementarInt(int256 _valor) public {
        meuInt += _valor;
    }

    function anexarString(string memory _anexarString) public {
        minhaString = string(abi.encodePacked(minhaString, _anexarString));
    }

    function compararEnderecos(address _endereco) public view returns (bool) {
        return meuEndereco == _endereco;
    }

    // Funções para obter variáveis de estado
    function obterMeuBool() public view returns (bool) {
        return meuBool;
    }

    function obterMeuInt() public view returns (int256) {
        return meuInt;
    }

    function obterMinhaString() public view returns (string memory) {
        return minhaString;
    }

    function obterMeuEndereco() public view returns (address) {
        return meuEndereco;
    }
}
