-- Crear banco de dados com o nome de:
CREATE database bdempregados;

-- Usando o banco de dados
USE bdempregados;

-- Criando uma tabela chamado empregados
CREATE TABLE empregados (
Codigo INT NOT NULL AUTO_INCREMENT,
Nome VARCHAR(40) NOT NULL,
Sobrenome VARCHAR(100) NOT NULL,
Cargo VARCHAR(40) NOT NULL,
Idade INT NOT NULL,
Salario Decimal(10,2) NOT NULL,
PRIMARY KEY (codigo)
);

-- Inserindo em empregados
-- os dados
INSERT INTO empregados (Nome, Sobrenome, Cargo, Idade, Salario)
VALUES (
'Ana',
'Maria',
'Gerente',
30,
5000
);

INSERT INTO empregados (Nome, Sobrenome, Cargo, Idade, Salario)
VALUES (
'João',
'Silva', 
'Programador', 
28, 
4000
);

INSERT INTO empregados (Nome, Sobrenome, Cargo, Idade, Salario)
VALUES (
'Nilza',
'Soares', 
'Web Designer',
28,
3020
);

INSERT INTO empregados (Nome, Sobrenome, Cargo, Idade, Salario)
VALUES (
'Roberto',
'Rocha', 
'Web Designer', 
29, 
3020
);

INSERT INTO empregados (Nome, Sobrenome, Cargo, Idade, Salario)
VALUES (
'Mariana',
'Mendes', 
'Recursos Humanos', 
31, 
2000
);

SELECT * FROM empregados;

SELECT * FROM  empregados
WHERE salario >= 3000;

SELECT Nome, sobrenome
FROM  empregados
WHERE idade < 30;

SELECT Nome, sobrenome, salario
FROM empregados
WHERE cargo = 'web designer';

SELECT * FROM empregados
WHERE nome like '%ana'; -- % caracter coringa (pode conter 0 ou mais caracteres)

SELECT * FROM empregados
WHERE sobrenome like '%es';





