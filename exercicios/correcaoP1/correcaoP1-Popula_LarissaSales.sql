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
USE larissasales;

INSERT INTO PESSOA VALUES ('Larissa', 'Sales', '1999-04-11', 'FEM', 'larissa@email.com', 'Legal', 'Programacao', 'Lari', DEFAULT);

INSERT INTO PESSOA VALUES ('Luisa', 'Sales', '2005-01-23', 'FEM', 'luisa@email.com', 'Legal', 'Culinaria', 'Lulu', DEFAULT);

INSERT INTO PESSOA VALUES ('Joaquim', 'Chaves', '2004-01-23', 'MASC', 'joaquim@email.com', 'Inteligente', 'Música', 'Quinquim', DEFAULT);

INSERT INTO PESSOA VALUES ('Arlequina', 'Arle', '2001-01-23', 'FEM', 'arle@email.com', 'Doida', 'Artes', 'Arle', DEFAULT);

INSERT INTO email VALUES ('larissa2@email.com', 'larissa@email.com');

INSERT INTO email VALUES ('luisa2@email.com', 'luisa@email.com');

INSERT INTO email VALUES ('joaquim2@email.com', 'joaquim@email.com');

INSERT INTO email VALUES ('arle2@email.com', 'arle@email.com');

INSERT INTO caracteristicas VALUES ('Legal', NULL);

INSERT INTO caracteristicas VALUES ('Legal', NULL);

INSERT INTO caracteristicas VALUES ('Inteligente', NULL);

INSERT INTO caracteristicas VALUES ('Doida', NULL);

INSERT INTO interesses VALUES ('Programacao', NULL);

INSERT INTO interesses VALUES ('Culinaria', NULL);

INSERT INTO interesses VALUES ('Música', NULL);

INSERT INTO interesses VALUES ('Artes', NULL);

INSERT INTO relaciona VALUES (DEFAULT, DEFAULT);

INSERT INTO relaciona VALUES (DEFAULT, DEFAULT);

INSERT INTO relaciona VALUES (DEFAULT, DEFAULT);

INSERT INTO relaciona VALUES (DEFAULT, DEFAULT);