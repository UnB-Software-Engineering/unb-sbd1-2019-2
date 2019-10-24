-- --------     Aula4Exer6Evolucao2 ------------
-- 
--                    SCRIPT DE CRIACAO (DDL)
-- 
-- Data Criacao ...........: 06/10/2019
-- Autor(es) ..............: Larissa Siqueira Sales
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: detran
-- 
-- 
-- 
-- -----------------------------------------------------------------

USE detran;

INSERT INTO PROPRIETARIO(sexo, estado, cidade, cep, bairro, rua, numero, cpf, nome, dtNasc) VALUES (
	'M', 'DF', 'Brasilia', '72460200', 'Aguas Lindas', 'Rua das Flores', '200', '056090', 'Renan', '1996-11-30'
);

INSERT INTO PROPRIETARIO(sexo, estado, cidade, cep, bairro, rua, numero, cpf, nome, dtNasc) VALUES (
	'F', 'GO', 'Goiania', '72460400', 'Aguas Claras', 'Rua das Rosas', '400', '056091', 'Carla', '1998-08-30'
);

INSERT INTO PROPRIETARIO(sexo, estado, cidade, cep, bairro, rua, numero, cpf, nome, dtNasc) VALUES (
	'M', 'SP', 'Araraquara', '72460600', 'Aguas Turbulentas', 'Rua das Margaridas', '600', '056092', 'Juca', '1999-10-30'
);

INSERT INTO VEICULO(anoFab, corPredominante, chassi, placa, idCategoria, idModelo, cpf) VALUES (
	'2002', 'Azul', '1qwerasdf', '1234-abc', '1', '10', '056090'
);

INSERT INTO VEICULO(anoFab, corPredominante, chassi, placa, idCategoria, idModelo, cpf) VALUES (
	'2015', 'Branco', '1qwrrasdf', '1234-abd', '1', '11', '056091'
);

INSERT INTO VEICULO(anoFab, corPredominante, chassi, placa, idCategoria, idModelo, cpf) VALUES (
	'2017', 'Rosa', '1qarasdf', '1234-abe', '2', '21', '056092'
);

INSERT INTO AGENTE(matriculaFuncional, nome, dtContratacao, tempoServico) VALUES (
	'1000', 'Joaquim', '2010-08-30', '110'
);

INSERT INTO AGENTE(matriculaFuncional, nome, dtContratacao, tempoServico) VALUES (
	'1010', 'Cristiano', '2012-09-30', '85'
);

INSERT INTO AGENTE(matriculaFuncional, nome, dtContratacao, tempoServico) VALUES (
	'1100', 'Jorge', '2015-08-10', '50'
);

INSERT INTO LOCAL(codLocal, latitude, longitude, velocidadePermitida) VALUES (
	'900', '3005', '2015', '80'
);

INSERT INTO LOCAL(codLocal, latitude, longitude, velocidadePermitida) VALUES (
	'345', '300', '25', '80'
);

INSERT INTO LOCAL(codLocal, latitude, longitude, velocidadePermitida) VALUES (
	'822', '9582', '215', '60'
);

INSERT INTO INFRACAO(velocidadeAferida, valorInfracao, dtHora, placa, idLocal, idInfracao, matriculaFuncional, cpf) VALUES (
	'120', '278.60', '20150810220530', '1234-abc', '900', '2', '1000','056090'
);

INSERT INTO INFRACAO(velocidadeAferida, valorInfracao, dtHora, placa, idLocal, idInfracao, matriculaFuncional, cpf) VALUES (
	'140', '213.40', '20150810220535', '1234-abd', '345', '8', '1010','056091'
);

INSERT INTO INFRACAO(velocidadeAferida, valorInfracao, dtHora, placa, idLocal, idInfracao, matriculaFuncional, cpf) VALUES (
	'80', '123,34', '20150810220540', '1234-abd', '822', '10', '1000','056091'
);

INSERT INTO telefone(cpf, telefone) VALUES (
	'056090', '958256080'
);

INSERT INTO telefone(cpf, telefone) VALUES (
	'056091', '958856080'
);

INSERT INTO telefone(cpf, telefone) VALUES (
	'056092', '958276080'
);