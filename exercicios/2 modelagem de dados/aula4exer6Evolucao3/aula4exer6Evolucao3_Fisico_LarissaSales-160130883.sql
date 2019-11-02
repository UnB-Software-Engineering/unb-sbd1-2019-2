-- --------     Aula4Exer6Evolucao2 ------------
-- 
--                    SCRIPT DE CRIACAO (DDL)
-- 
-- Data Criacao ...........: 09/10/2019
-- Autor(es) ..............: Larissa Siqueira Sales
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: detran
-- 
-- 
-- 
-- -----------------------------------------------------------------

use detran;

CREATE TABLE PROPRIETARIO (
    sexo CHAR NOT NULL,
    estado VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    cep VARCHAR(8) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    rua VARCHAR(100) NOT NULL,
    numero INT,
    complemento VARCHAR(200),
    cpf INT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    dtNasc DATE,
    CONSTRAINT PK_proprietario primary key (cpf)
) ENGINE = InnoDB;

CREATE TABLE VEICULO (
    anoFab INT NOT NULL,
    corPredominante VARCHAR(15) NOT NULL,
    chassi VARCHAR(15) NOT NULL,
    placa VARCHAR(8) NOT NULL,
    idCategoria INT NOT NULL,
    idModelo INT NOT NULL,
    cpf INT NOT NULL,
    CONSTRAINT PK_veiculo primary key (placa),
    CONSTRAINT FK_veiculo_proprietario FOREIGN KEY (cpf) 
    REFERENCES PROPRIETARIO (cpf)
) ENGINE = InnoDB;

CREATE TABLE AGENTE (
    matriculaFuncional INT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    dtContratacao DATE NOT NULL,
    tempoServico INT NOT NULL,
    CONSTRAINT PK_agente primary key (matriculaFuncional)
) ENGINE = InnoDB;

CREATE TABLE LOCAL (
    codLocal INT NOT NULL,
    latitude INT NOT NULL,
    longitude INT NOT NULL,
    velocidadePermitida FLOAT NOT NULL,
    CONSTRAINT PK_local primary key (codLocal)
) ENGINE = InnoDB;

CREATE TABLE INFRACAO (
    velocidadeAferida FLOAT NOT NULL,
    valorInfracao FLOAT NOT NULL,
    dtHora TIMESTAMP NOT NULL,
    placa VARCHAR(8) NOT NULL,
    codLocal INT NOT NULL,
    codigoInfracao INT NOT NULL,
    matriculaFuncional INT NOT NULL,
    cpf INT NOT NULL,
    CONSTRAINT PK_infracao primary key (dtHora, idInfracao, placa),
    CONSTRAINT FK_infracao_proprietario FOREIGN KEY (cpf) 
    REFERENCES PROPRIETARIO (cpf),
    CONSTRAINT FK_infracao_agente FOREIGN KEY (matriculaFuncional) 
    REFERENCES AGENTE (matriculaFuncional),
    CONSTRAINT FK_infracao_local FOREIGN KEY (idLocal) 
    REFERENCES LOCAL (idLocal)
) ENGINE = InnoDB;

CREATE TABLE telefone (
    cpf INT NOT NULL,
    telefone VARCHAR(14) NOT NULL,
    CONSTRAINT PK_telefone primary key (cpf, telefone),
    CONSTRAINT FK_telefone_proprietario FOREIGN KEY (cpf) 
    REFERENCES PROPRIETARIO (cpf)
) ENGINE = InnoDB;
