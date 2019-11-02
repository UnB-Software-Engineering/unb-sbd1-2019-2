------------     << aula4exer5Evolucao4 >>     ------------
-- 
--                    SCRIPT DE CRIACAO (DDL)
-- 
-- Data Criacao ...........: 18/09/2019
-- Autor(es) ..............: Larissa Siqueira Sales
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: bdReceituario
-- 
-- Data Ultima Alteracao ..: 18/09/2019
--   => Criacao de nova tabela
-- 
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--         => x Sequencias
--         => x Visoes
-- 
-- -----------------------------------------------------------------

CREATE TABLE MEDICO (
    nome CHAR,
    crm INT PRIMARY KEY,
    FK_ESPECIALIDADE_id INT
);

CREATE TABLE PACIENTE (
    nome CHAR,
    dtNascimento DATE,
    idPaciente INT PRIMARY KEY,
    cep INT,
    bairro CHAR,
    rua CHAR,
    numero INT,
    complemento CHAR,
    cidade CHAR,
    estado CHAR,
    sexo CHAR,
    FK_telefone_telefone_PK INT
);

CREATE TABLE RECEITA (
    idConsulta INT,
    dtEmissao DATE,
    posologia CHAR,
    FK_CONSULTA_atende_dtConsulta CHAR,
    PRIMARY KEY (idConsulta, dtEmissao)
);

CREATE TABLE MEDICAMENTO (
    principioAtivo CHAR,
    tarja CHAR,
    fabricante CHAR,
    id INT PRIMARY KEY,
    nome CHAR
);

CREATE TABLE ESPECIALIDADE (
    id INT PRIMARY KEY,
    nome CHAR
);

CREATE TABLE CONSULTA_atende (
    dtConsulta CHAR PRIMARY KEY,
    horario TIME,
    fk_MEDICO_crm INT,
    fk_PACIENTE_idPaciente INT
);

CREATE TABLE telefone (
    telefone_PK INT NOT NULL PRIMARY KEY,
    telefone INT
);

CREATE TABLE contem (
    fk_RECEITA_idConsulta INT,
    fk_RECEITA_dtEmissao DATE,
    fk_MEDICAMENTO_id INT
);