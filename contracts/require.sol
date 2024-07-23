// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract TransferenciaFundos {
    
    mapping(address => uint) public saldos;
    
    function depositar() public payable {
        saldos[msg.sender] += msg.value;
    }
    
    function transferir(address _destinatario, uint _quantia) public {
        require(saldos[msg.sender] >= _quantia, "Saldo insuficiente.");
        
        require(_destinatario != address(0), "Endereco invalido.");
        
        saldos[msg.sender] -= _quantia;
        saldos[_destinatario] += _quantia;
    }
    
    function obterSaldo() public view returns (uint) {
        return saldos[msg.sender];
    }
}
