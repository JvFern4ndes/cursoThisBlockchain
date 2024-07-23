// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract freeSocial {
    uint16 public MAXIMO_DE_CARACTERES = 280;

    struct Post {
        address autor;
        string conteudo;
        uint256 dataHora;
        uint256 curtidas;
    }

    mapping(address => Post[]) public posts;

    address public donoDoContrato;

    constructor() {
        donoDoContrato = msg.sender;
    }

    modifier apenasDonoDoContrato {
        require(msg.sender == donoDoContrato, "Apenas o dono do contrato pode executar essa funcao!");
        _;
    }

    function criarPost(string memory _texto) public {
        require(bytes(_texto).length <= MAXIMO_DE_CARACTERES, "Quantidade maxima de caracteres foi ultrapassada!");

        Post memory newPost = Post({
            autor: msg.sender,
            conteudo: _texto,
            dataHora: block.timestamp,
            curtidas: 0
        });

        posts[msg.sender].push(newPost);
    }

    function alterarMaximoDeCaracteres(uint16 _novoMaximoDeCaracteres) public apenasDonoDoContrato {
        MAXIMO_DE_CARACTERES = _novoMaximoDeCaracteres;
    }

    function visualizarPost(address _criadorDoPost, uint _index) public view returns (Post memory) {
        return posts[_criadorDoPost][_index];
    }

    function visualizarTodosOsPosts(address _criadorDoPost) public view returns (Post[] memory) {
        return posts[_criadorDoPost];
    }
}