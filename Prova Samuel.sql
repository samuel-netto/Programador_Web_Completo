CREATE DATABASE bdprova;

CREATE TABLE disciplinas
(
     disciplina VARCHAR(6) NOT NULL,
     descricao VARCHAR(80) NOT NULL,
     PRIMARY KEY(disciplina)
);
CREATE TABLE alunos
(
     matricula VARCHAR(6) not null,
     nome VARCHAR(80) not null,
     PRIMARY KEY(matricula)
);
CREATE TABLE turmas
(
    id INT NOT NULL AUTO_INCREMENT, 
    turma VARCHAR(1) not null,
    disciplina VARCHAR(6) not null,
    matricula VARCHAR(6) not null,
    PRIMARY KEY(id),
    FOREIGN KEY(disciplina) REFERENCES disciplinas(disciplina),
    FOREIGN KEY(matricula) REFERENCES alunos (matricula)
);


INSERT INTO disciplinas(disciplina, descricao) VALUES
		('POR001','PORTUGUÊS'),
		('MAT001','MATEMÁTICA'),
		('HIS001','HISTÓRIA');
        
INSERT INTO alunos(matricula, nome) 
VALUES
		('202101','JOÃO'),
		('202102','JOSÉ'),
		('202103','MARIA'),
		('202104','JOAQUIM');
        
INSERT INTO turmas(turma, disciplina, matricula) 
VALUES
		('A','POR001','202101'),
		('A','POR001','202102'),
		('B','MAT001','202101'),
		('B','MAT001','202103'),
		('C','HIS001','202102'),
		('C','HIS001','202104');
        
SELECT * FROM turmas;

-- Exercício 1
INSERT INTO alunos(matricula, nome) 
VALUES
		('202105','Samuel');
        
INSERT INTO turmas(turma, disciplina, matricula) 
VALUES
		('A','MAT001','202105');

-- Exercício 2

UPDATE alunos set nome = ('Ana Maria')  
where nome = ('Maria');

-- Exercicio 3
SELECT nome,descricao
FROM turmas tur
JOIN alunos al ON al.matricula = tur.matricula
JOIN disciplinas disc ON disc.disciplina = tur.disciplina
HAVING nome = 'João';

-- Exercício 4
SELECT nome, count(descricao)
FROM turmas tur
JOIN alunos al ON al.matricula = tur.matricula
JOIN disciplinas disc ON disc.disciplina = tur.disciplina
GROUP BY Nome;

-- Exercício 5
TRUNCATE turmas;

        




