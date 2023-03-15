USE bdempregados;

CREATE TABLE empregados (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
sexo VARCHAR(1) NOT NULL,
bairro VARCHAR(50) NOT NULL,
salario DECIMAL(8,2) NOT NULL,
setor VARCHAR(50) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO empregados (nome, sexo, bairro, salario, setor)
VALUES ('Larissa Menezes', 'F', 'Jabaquara', 1200, 'Marketing');

INSERT INTO empregados (nome, sexo, bairro, salario, setor)
VALUES ('Selma Nunes', 'F', 'Grajaú', 3800, 'Vendas');

INSERT INTO empregados (nome, sexo, bairro, salario, setor)
VALUES ('Leandro Henrique', 'M', 'Socorro', 2950, 'RH');

INSERT INTO empregados (nome, sexo, bairro, salario, setor)
VALUES ('Amélia Jeremias', 'F', 'Socorro', 4200, 'Marketing');

INSERT INTO empregados (nome, sexo, bairro, salario, setor)
VALUES ('Cláudio Jorge Silva', 'M', 'Jabaquara', 1480, 'Vendas');

INSERT INTO empregados (nome, sexo, bairro, salario, setor)
VALUES ('Luciano Souza', 'M', 'Pedreira', 1000, 'Vendas');

INSERT INTO empregados (nome, sexo, bairro, salario, setor)
VALUES ('Gabriela Santos Nunes', 'F', 'Jurubatuba', 4150,'');

INSERT INTO empregados (nome, sexo, bairro, salario, setor)
VALUES ('Rafaela Vieira Jr', 'F', 'Jabaquara', 700, 'Marketing');

INSERT INTO empregados (nome, sexo, bairro, salario, setor)
VALUES ('Suzana Crispim', 'F', 'Grajaú', 5600, 'Produção');

INSERT INTO empregados (nome, sexo, bairro, salario, setor) 
VALUES ('Sabrina Oliveira Castro', 'F', 'Pedreira', 2900, 'Marketing');

INSERT INTO empregados (nome, sexo, bairro, salario, setor) 
VALUES ('Jarbas Silva Nunes', 'M', 'Jurubatuba', 5300, 'Produção');

INSERT INTO empregados (nome, sexo, bairro, salario, setor)
VALUES ('Ralf Borges', 'M', 'Jabaquara', 1600, 'Marketing');

-- Consulta Básica

SELECT * FROM empregados;

SELECT 	nome, salario FROM empregados WHERE setor = 'Marketing';

SELECT * FROM empregados WHERE bairro = 'Socorro';

SELECT * FROM empregados WHERE sexo = 'F'  ORDER BY nome;

SELECT * FROM empregados WHERE setor = 'Marketing' ORDER BY nome DESC;

SELECT * FROM empregados WHERE salario > 800;

SELECT * FROM empregados WHERE sexo = 'M' and setor = 'Vendas';

SELECT SUM(salario) AS 'Soma dos Salários' FROM empregados;

SELECT AVG(salario) AS 'Média dos Salários' FROM empregados;

SELECT COUNT(*) AS 'Contagem dos Nomes' FROM empregados;

SELECT MAX(salario) AS 'Maior Salário' FROM empregados;

SELECT MIN(salario) AS 'Menor Salário' FROM empregados;

-- Consultas Avançadas

SELECT MAX(salario),bairro AS 'Maior Salário por Bairro' FROM empregados GROUP BY bairro;

SELECT SUM(salario),bairro AS 'Soma dos Salários dos Funcionários por Bairro' FROM empregados GROUP BY bairro;

SELECT COUNT(*) AS 'Contagem dos funcionários do Setor de Marketing' FROM empregados;

SELECT AVG(salario),setor AS 'Média dos Salários por departamento (ordem decrescente)' FROM empregados GROUP BY setor ORDER BY setor DESC;

SELECT nome,MIN(salario),setor AS 'Funcionário com Menor Salário' FROM empregados;

SELECT nome,MIN(salario),bairro AS 'Funcionário de Jabaquara com Menor Salário' FROM empregados WHERE bairro = 'Jabaquara';

SELECT COUNT(nome) AS 'Funcionários que Ganham Menos de R$3000,00 que Moram no Bairro Socorro' FROM empregados WHERE salario <3000 and bairro = 'Socorro';

SELECT COUNT(nome),setor AS 'Setores com Mais de 3 Funcionários' FROM empregados GROUP BY setor HAVING COUNT(nome) > 3;

SELECT COUNT(nome),bairro AS 'Bairros que Possuem mais de 2 funcionários que ganham até R$2000,00' FROM empregados WHERE salario <= 2000 GROUP BY bairro HAVING COUNT(bairro);

SELECT SUM(salario),setor AS 'Setores com a soma de salário com funcionários que ganham acima de R$1000,00 no Bairro Pedreira' FROM empregados WHERE bairro = 'Pedreira' GROUP BY setor HAVING SUM(salario) >1000;

SELECT AVG(salario) AS 'Média de todos os funcionários que moram em Jurubatuba ou Grajaú do sexo feminino com sobrenome Nunes' FROM empregados WHERE (bairro = 'Grajaú' or bairro = 'Jurubatuba') and sexo = 'F' and nome LIKE '%Nunes%';

