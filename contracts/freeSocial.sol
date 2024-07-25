// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract freeSocial {
    uint16 public MAXIMO_DE_CARACTERES = 280;

    struct Post {
        uint256 id;
        address autor;
        string conteudo;
        uint256 dataHora;
        uint256 curtidas;
    }

    mapping(address => Post[]) public posts;

    address public donoDoContrato;

    event postPublicado(uint256 id, address autor, string conteudo, uint dataHora);
    event postCurtido(address quemCurtiu, address autor, uint256 id, uint256 novaContagemDeCurtidas);
    event postDescurtido(address quemDescurtiu, address autor, uint256 id, uint256 novaContagemDeCurtidas);

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
            id: posts[msg.sender].length,
            autor: msg.sender,
            conteudo: _texto,
            dataHora: block.timestamp,
            curtidas: 0
        });

        posts[msg.sender].push(newPost);

        emit postPublicado(newPost.id, newPost.autor, newPost.conteudo, newPost.dataHora);
    }

    function curtirPost(address autor, uint256 id) external {
        require(posts[autor][id].id == id, "Este post nao existe.");

        posts[autor][id].curtidas++;

        emit postCurtido(msg.sender, autor, id, posts[autor][id].curtidas);
    }

    function descurtirPost(address autor, uint256 id) external {
        require(posts[autor][id].id == id, "Este post nao existe.");
        require(posts[autor][id].curtidas > 0, "O post nao possui curtidas.");
        
        posts[autor][id].curtidas--;

        emit postDescurtido(msg.sender, autor, id, posts[autor][id].curtidas);
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