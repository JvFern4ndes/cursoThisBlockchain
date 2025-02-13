// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract mappings {

    mapping(address => uint) public meuMapping;

    mapping(address => uint) public saldo;

    mapping(address => bool) public isAdmin;

    mapping(address => Usuario) public users;

    struct Usuario {
        string name;
        uint age;
    }

}