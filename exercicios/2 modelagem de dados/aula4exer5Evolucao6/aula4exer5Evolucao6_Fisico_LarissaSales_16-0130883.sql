-- --------  aula4exer5Evolucao6  ------------
-- 
--         SCRIPT DE CRIAÇÃO (DDL)
-- 
-- Data Criacao ...........: 14/10/2019
-- Autor(es) ..............: Larissa Siqueira Sales
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: RECEITUARIO
-- 
-- PROJETO => 01 Base de Dados
--         => 06 Tabelas
-- 
-- -------------------------------------------

CREATE DATABASE IF NOT EXISTS RECEITUARIO;

USE RECEITUARIO;

CREATE TABLE MEDICO (
    nome VARCHAR(30) NOT NULL,
    crm VARCHAR(10) NOT NULL PRIMARY KEY
) ENGINE = InnoDB;

CREATE TABLE PACIENTE (
    nome VARCHAR(30) NOT NULL,
    telefone VARCHAR(10),
    dtNascimento DATE NOT NULL,
    sexo ENUM('FEM', 'MASC', 'OUTRO') NOT NULL,
    FK_endereco_endereco_PK VARCHAR(30) NOT NULL,
    cpf VARCHAR(11) NOT NULL PRIMARY KEY
) ENGINE = InnoDB;

CREATE TABLE RECEITA (
    posologia VARCHAR(50),
    idReceita INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    data DATE,
    FK_medicamento_medicamento_PK VARCHAR(30)
) ENGINE = InnoDB;

CREATE TABLE ESPECIALIDADE (
    nome VARCHAR(30) NOT NULL,
    idEspecialidade INT NOT NULL 
) ENGINE = InnoDB;

CREATE TABLE endereco (
    endereco_PK VARCHAR(30) NOT NULL PRIMARY KEY,
    cep VARCHAR(10) NOT NULL,
    rua VARCHAR(30) NOT NULL,
    bairro VARCHAR(30) NOT NULL,
    numero INT NOT NULL,
    complemento VARCHAR(30),
    cidade VARCHAR(30) NOT NULL,
    estado VARCHAR(20) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE medicamento (
    medicamento_PK VARCHAR(30) NOT NULL PRIMARY KEY,
    idMedicamento INT,
    tarja VARCHAR(10),
    principioAtivo VARCHAR(30),
    nomeFantasia VARCHAR(30)
) ENGINE = InnoDB;

ALTER TABLE RECEITA AUTO_INCREMENT=1;