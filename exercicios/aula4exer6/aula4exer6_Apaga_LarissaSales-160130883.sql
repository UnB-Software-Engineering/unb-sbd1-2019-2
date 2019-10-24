-- ------------     << BANCO INFRACOES DETRAN >>     ----------------
-- 
--                    SCRIPT DE CRIACAO (DDL)
-- 
-- Data Criacao ...........: 30/09/2019
-- Autor(es) ..............: Larissa Siqueira Sales
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: bdDetranDelete
-- 
-- Data Ultima Alteracao ..: 30/09/2019
-- 
-- PROJETO => 01 Base de Dados
--         => 10 Tabelas
--         => 01 Sequencia
--         => 01 Visão
-- 
-- -----------------------------------------------------------------

DELETE FROM INFRACAO;

DELETE FROM PESSOA_VEICULO;  

DELETE FROM agenteDetran;  

DELETE FROM local;  

DELETE FROM velocidadeAferida;  

DELETE FROM endereco; 

DELETE FROM telefone; 

 