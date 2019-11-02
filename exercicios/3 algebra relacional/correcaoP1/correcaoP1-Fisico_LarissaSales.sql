--              SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 17/10/2019
-- Autor(es) ..............: Larissa Siqueira Sales
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: larissasales
--
--
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
--
-- ---------------------------------------------------
CREATE DATABASE IF NOT EXISTS larissasales;

USE larissasales;

CREATE TABLE PESSOA (
    primeiroNome VARCHAR(30) NOT NULL,
    ultimoNome VARCHAR(30) NOT NULL,
    dtNasc DATE NOT NULL,
    sexo ENUM('FEM','MASC'),
    FK_email_email_PK VARCHAR(30),
    FK_caracteristicas_caracteristicas_PK VARCHAR(30),
    FK_interesses_interesses_PK VARCHAR(30),
    apelido VARCHAR(30),
    id INT PRIMARY KEY AUTO_INCREMENT
) ENGINE=InnoDB CHAR SET=UTF8;

CREATE TABLE email (
    email_PK VARCHAR(30) NOT NULL,
    email VARCHAR(30),
    PRIMARY KEY (email_PK, email)
) ENGINE=InnoDB CHAR SET=UTF8;

CREATE TABLE caracteristicas (
    caracteristicas_PK VARCHAR(30),
    caracteristicas VARCHAR(30)
) ENGINE=InnoDB CHAR SET=UTF8;

CREATE TABLE interesses (
    interesses_PK VARCHAR(30),
    interesses VARCHAR(30)
) ENGINE=InnoDB CHAR SET=UTF8;

CREATE TABLE relaciona (
    fk_PESSOA_id INT,
    fk_PESSOA_id_ INT
) ENGINE=InnoDB CHAR SET=UTF8;