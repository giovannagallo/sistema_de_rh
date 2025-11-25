CREATE DATABASE sistema_rh;
USE sistema_rh;

CREATE TABLE departamentos (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nome_departamento VARCHAR(100) NOT NULL
);

CREATE TABLE cargos (
    id_cargo INT AUTO_INCREMENT PRIMARY KEY,
    nome_cargo VARCHAR(100) NOT NULL,
    salario_base DECIMAL(10,2),
    id_departamento INT NOT NULL,
    FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento)
);

CREATE TABLE funcionarios (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    data_admissao DATE NOT NULL,
    id_cargo INT NOT NULL,
    FOREIGN KEY (id_cargo) REFERENCES cargos(id_cargo)
);

CREATE TABLE folha_pagamento (
    id_folha INT AUTO_INCREMENT PRIMARY KEY,
    id_funcionario INT NOT NULL,
    mes_referencia VARCHAR(7) NOT NULL,
    salario_pago DECIMAL(10,2),
    horas_extras DECIMAL(10,2),
    descontos DECIMAL(10,2),
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario)
);
