CREATE DATABASE bdfuncionarios;

USE bdfuncionarios;

CREATE TABLE Funcionarios (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
sexo VARCHAR(1) NOT NULL,
bairro VARCHAR(50) NOT NULL,
salario DECIMAL(8,2) NOT NULL,
setor VARCHAR(50) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO Funcionarios(Nome, Sexo, Bairro, Salario, Setor)
VALUES ('Larissa Menezes', 'F', 'Jabaquara', 1200, 'Marketing');

INSERT INTO Funcionarios (Nome, Sexo, Bairro, Salario, Setor)
VALUES ('Selma Nunes', 'F', 'Grajaú', 3800, 'Vendas');

INSERT INTO Funcionarios (Nome, Sexo, Bairro, Salario, Setor)
VALUES ('Leandro Henrique', 'M', 'Socorro', 2950, 'RH');

INSERT INTO Funcionarios (Nome, Sexo, Bairro, Salario, Setor)
VALUES ('Amélia Jeremias', 'F', 'Socorro', 4200, 'Marketing');

INSERT INTO Funcionarios (Nome, Sexo, Bairro, Salario, Setor)
VALUES ('Cláudio Jorge Silva', 'M', 'Jabaquara', 1480, 'Vendas');

INSERT INTO Funcionarios (Nome, Sexo, Bairro, Salario, Setor)
VALUES ('Luciano Souza', 'M', 'Pedreira', 1000, 'Vendas');

INSERT INTO Funcionarios (Nome, Sexo, Bairro, Salario, Setor)
VALUES ('Gabriela Santos Nunes', 'F', 'Jurubatuba', 4150,'');

INSERT INTO Funcionarios (Nome, Sexo, Bairro, Salario, Setor)
VALUES ('Rafaela Vieira Jr', 'F', 'Jabaquara', 700, 'Marketing');

INSERT INTO Funcionarios (Nome, Sexo, Bairro, Salario, Setor)
VALUES ('Suzana Crispim', 'F', 'Grajaú', 5600, 'Produção');

INSERT INTO Funcionarios (Nome, Sexo, Bairro, Salario, Setor)
VALUES ('Sabrina Oliveira Castro', 'F', 'Pedreira', 2900, 'Marketing');

INSERT INTO Funcionarios (Nome, Sexo, Bairro, Salario, Setor)
VALUES ('Jarbas Silva Nunes', 'M', 'Jurubatuba', 5300, 'Produção');

INSERT INTO Funcionarios(Nome, Sexo, Bairro, Salario, Setor)
VALUES ('Ralf Borges', 'M', 'Jabaquara', 1600, 'Marketing');

SELECT * FROM Funcionarios;

SELECT nome, salario
FROM funcionarios
WHERE setor = 'Marketing';

SELECT * FROM funcionarios
WHERE bairro = 'socorro';

SELECT * FROM funcionarios
WHERE Sexo = 'F' 
ORDER BY nome ASC;

Select * FROM funcionarios
WHERE setor = 'marketing'
ORDER BY nome desc;

SELECT * FROM funcionarios
WHERE salario > 800;

SELECT * FROM funcionarios 
WHERE setor = 'vendas' AND sexo ='M';

SELECT SUM(salario) AS 'Salario total'
From funcionarios;

SELECT AVG(salario) AS 'Média total'
From funcionarios;

SELECT MAX(salario) AS 'Maior salario'
FROM funcionarios;

SELECT MIN(salario) AS 'Menor Salario'
FROM funcionarios;


SELECT MAX(salario),bairro 
FROM funcionarios 
GROUP BY bairro;

SELECT SUM(salario),bairro 
FROM funcionarios 
GROUP BY bairro;

SELECT COUNT(*) 
FROM funcionarios;

SELECT setor, AVG(salario) AS 'Media de salario por setor'
FROM funcionarios 
GROUP BY setor 
ORDER BY salario desc;

SELECT nome,MIN(salario),setor AS 'Menor salario'
FROM funcionarios ;

SELECT nome,MIN(salario),bairro AS 'Menor salario do bairro Jabaquara'
FROM funcionarios
WHERE bairro = 'jabaquara';

SELECT nome, bairro, salario As 'Pessoas do bairro socorro que ganham menos de 3000'
FROM funcionarios
WHERE salario > 3000 and bairro = 'socorro';

SELECT COUNT(nome), setor AS 'Setores que possuem mais do que 3 funcionários '
FROM funcionarios
GROUP BY setor
HAVING COUNT(setor) > 3;

SELECT COUNT(nome), bairro AS 'Bairros que possuem mais do que 2 funcionários que ganhem até R$2.000,00 de salário '
FROM funcionarios
WHERE salario <= 2000
GROUP BY bairro
HAVING COUNT(bairro);

SELECT SUM(salario),nome, setor AS 'Os setores que possuem a soma dos salários de seus funcionários maior do que R$1.000,00 e que eles morem no bairro de Pedreira'
FROM funcionarios
WHERE bairro = 'pedreira'
GROUP BY setor
HAVING SUM(Salario) > 1000;

SELECT AVG(salario) AS 	'A média do salário de todos os funcionários que moram em Jurubatuba ou no Grajaú, que sejam mulheres e que possuam sobrenome Nunes.'
FROM funcionarios
WHERE sexo = 'F'and nome like '%nunes%' and (bairro = 'jurubatuba' or bairro = 'grajaú');



