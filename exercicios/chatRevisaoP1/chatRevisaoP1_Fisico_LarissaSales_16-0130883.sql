-- --------     chatRevisaoP1    ------------
-- 
--         SCRIPT DE CRIACAO (DDL)
-- 
-- Data Criacao ...........: 12/10/2019
-- Autor(es) ..............: Larissa Siqueira Sales
-- Banco de Dados .........: MySQL
-- Banco de Dados (nome) ..: eleicao
-- 
-- ------------------------------------------

USE ELEICAO;

CREATE TABLE ELEITOR (
    tituloEleitor CHAR(12) NOT NULL PRIMARY KEY,
    dataNasc DATE NOT NULL,
    nome VARCHAR(30) NOT NULL,
    idade TINYINT NOT NULL
) ENGINE=InnoDB;

CREATE TABLE VOTO (
    tituloEleitor CHAR(12) NOT NULL,
    dataEleicao DATE NOT NULL,
    PRIMARY KEY (tituloEleitor, dataEleicao)
) ENGINE=InnoDB;

CREATE TABLE JUSTIFICATIVA (
    descricao TEXT NOT NULL,
    FK_VOTO_tituloEleitor CHAR(12) NOT NULL,
    FK_VOTO_dataEleicao DATE NOT NULL,
    PRIMARY KEY (FK_VOTO_tituloEleitor, FK_VOTO_dataEleicao)
) ENGINE=InnoDB;

CREATE TABLE EFETIVACAO_CANDIDATO (
    FK_VOTO_tituloEleitor CHAR(12) NOT NULL,
    FK_VOTO_dataEleicao DATE NOT NULL,
    tituloEleitorCand CHAR(12) NOT NULL,
    idCandidato INT(2) NOT NULL,
    nomeCandidato VARCHAR(30) NOT NULL,
    PRIMARY KEY (FK_VOTO_tituloEleitor, FK_VOTO_dataEleicao, tituloEleitor, idCandidato)
) ENGINE=InnoDB;

CREATE TABLE registra (
    fk_ELEITOR_tituloEleitor CHAR(12) NOT NULL,
    fk_VOTO_tituloEleitor CHAR(12) NOT NULL,
    fk_VOTO_dataEleicao DATE NOT NULL
) ENGINE=InnoDB;
 
ALTER TABLE JUSTIFICATIVA ADD CONSTRAINT FK_JUSTIFICATIVA_2
    FOREIGN KEY (FK_VOTO_tituloEleitor, FK_VOTO_dataEleicao)
    REFERENCES VOTO (tituloEleitor, dataEleicao)
    ON DELETE CASCADE;
 
ALTER TABLE EFETIVACAO_CANDIDATO ADD CONSTRAINT FK_EFETIVACAO_CANDIDATO_2
    FOREIGN KEY (FK_VOTO_tituloEleitor, FK_VOTO_dataEleicao)
    REFERENCES VOTO (tituloEleitor, dataEleicao)
    ON DELETE CASCADE;
 
ALTER TABLE registra ADD CONSTRAINT FK_registra_1
    FOREIGN KEY (fk_ELEITOR_tituloEleitor)
    REFERENCES ELEITOR (tituloEleitor)
    ON DELETE RESTRICT;
 
ALTER TABLE registra ADD CONSTRAINT FK_registra_2
    FOREIGN KEY (fk_VOTO_tituloEleitor, fk_VOTO_dataEleicao)
    REFERENCES VOTO (tituloEleitor, dataEleicao)
    ON DELETE RESTRICT;