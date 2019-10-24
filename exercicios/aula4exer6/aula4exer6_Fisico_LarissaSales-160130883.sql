-- ------------     << BANCO INFRACOES DETRAN >>     ----------------
-- 
--                    SCRIPT DE CRIACAO (DDL)
-- 
-- Data Criacao ...........: 30/09/2019
-- Autor(es) ..............: Larissa Siqueira Sales
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: bdDetranCreate
-- 
-- Data Ultima Alteracao ..: 30/09/2019
--   => Criacao de nova tabela
-- 
-- PROJETO => 01 Base de Dados
--         => 07 Tabelas
--         => 01 Sequencia
--         => 01 Visão
-- 
-- -----------------------------------------------------------------

CREATE TABLE INFRACAO (
    placa CHAR,
    idTipo INT,
    valorMulta DOUBLE,
    data DATE,
    hora TIME,
    FK_agenteDetran_agenteDetran_PK INT,
    FK_local_local_PK INT,
    FK_velocidadeAferida_velocidadeAferida_PK FLOAT
);

CREATE TABLE PESSOA_VEICULO (
    nome CHAR,
    cpf INT,
    FK_endereco_endereco_PK CHAR,
    FK_telefone_telefone_PK INT,
    dataNascimento DATE,
    sexo CHAR,
    idade INT,
    placa CHAR,
    renavan INT,
    chassi INT,
    modelo CHAR,
    idCategoria,
    PRIMARY KEY (cpf, placa)
);

CREATE TABLE agenteDetran (
    agenteDetran_PK INT NOT NULL PRIMARY KEY,
    nome CHAR,
    matricula INT,
    dataContratacao DATE,
    tempoServico INT
);

CREATE TABLE local (
    local_PK INT NOT NULL PRIMARY KEY,
    id INT,
    latitude INT,
    longitude INT,
    velocidadePermitida INT
);

CREATE TABLE velocidadeAferida (
    velocidadeAferida_PK FLOAT NOT NULL PRIMARY KEY,
    velocidadeAferida FLOAT
);

CREATE TABLE endereco (
    endereco_PK CHAR NOT NULL PRIMARY KEY,
    bairro CHAR,
    cidade CHAR,
    estado CHAR
);

CREATE TABLE telefone (
    telefone_PK INT NOT NULL PRIMARY KEY,
    telefone INT
);
 