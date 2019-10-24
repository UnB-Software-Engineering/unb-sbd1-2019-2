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

USE RECEITUARIO;

INSERT INTO MEDICO VALUES 
	('Gregorio', '7123571'),
    ('Marcia', '61523461'),
    ('Victor', '7651212');
    
INSERT INTO PACIENTE VALUES
	('Marta', NULL, '2018-08-07', 'FEM', 'Brasilia', '74635289037'),
	('Jorge', '988339955', '2010-09-17', 'MASC', 'Brasilia', '91287391228'),
    ('Thais', '998877543', '1997-07-25', 'FEM', 'Brasilia', '12867896876');
    
INSERT INTO RECEITA VALUES
	('2 gotas a cada 6h', DEFAULT, '2019-10-14', 'GotaMagica'),
    ('1 comprimido a cada 12h', DEFAULT, '2019-10-14', 'Sai Gripe'),
    ('1 comprimido por dia', DEFAULT, '2019-10-14', 'Cura Gastrite');

INSERT INTO ESPECIALIDADE VALUES
	('Pediatria', '03'),
    ('Clinico Geral', '12'),
    ('Clinico Geral', '12');

INSERT INTO medicamento VALUES
	('GotaMagica', '123', 'vermelha', 'componente1', 'GotaMagica'),
    ('Sai Gripe', '324', 'vermelha', 'componente2', 'Sai Gripe'),
    ('Cura Gastrite', '554', 'amarela', 'componente3', 'Cura Gastrite');