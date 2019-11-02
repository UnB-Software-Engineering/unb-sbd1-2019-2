-- ------------     << BANCO INFRACOES DETRAN >>     ----------------
-- 
--                    SCRIPT DE CRIACAO (DDL)
-- 
-- Data Criacao ...........: 30/09/2019
-- Autor(es) ..............: Larissa Siqueira Sales
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: bdDetranInsert
-- 
-- Data Ultima Alteracao ..: 30/09/2019
-- 
-- PROJETO => 01 Base de Dados
--         => 10 Tabelas
--         => 01 Sequencia
--         => 01 Visão
-- 
-- -----------------------------------------------------------------

INSERT INTO INFRACAO (
    placa,
    idTipo,
    valorMulta,
    data,
    hora,
    FK_agenteDetran_agenteDetran_PK,
    FK_local_local_PK,
    FK_velocidadeAferida_velocidadeAferida_PK
);
VALUES (
    'AHF1245',
    '01',
    '88,38',
    '12/04/2019',
    '12:45',
    '126733',
    '21353',
    'NULL'
);


CREATE TABLE PESSOA_VEICULO (
    nome,
    cpf,
    FK_endereco_endereco_PK, 
    FK_telefone_telefone_PK,
    dataNascimento,
    sexo,
    idade,
    placa,
    renavan,
    chassi,
    modelo,
    PRIMARY KEY (cpf, placa)
);
