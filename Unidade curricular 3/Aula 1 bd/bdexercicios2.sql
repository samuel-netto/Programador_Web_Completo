CREATE DATABASE bdexercicios ;

CREATE TABLE tipo (
id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
tipo VARCHAR(32),
PRIMARY KEY(id)
);

CREATE TABLE alunos (
id INT(11) NOT NULL AUTO_INCREMENT,
nome VARCHAR(50),
endereço VARCHAR(255),
email VARCHAR(50),
PRIMARY KEY(id)
);

CREATE TABLE instrutor (
id INT(11) NOT NULL AUTO_INCREMENT,
instrutor VARCHAR(50),
telefone VARCHAR(10),
PRIMARY KEY(id)
);

CREATE TABLE pedidos (
id INT NOT NULL AUTO_INCREMENT,
Data_hora DATETIME,
idalunos INT(11),
idcurso INT(11),
PRIMARY KEY(id),
FOREIGN KEY(idalunos) REFERENCES alunos(id),
FOREIGN KEY(idcurso) REFERENCES cursos(id)
);

CREATE TABLE cursos(
id INT NOT NULL AUTO_INCREMENT,
curso VARCHAR(60),
preço DECIMAL(10,2),
idtipo INT(10) UNSIGNED,
idinstrutor INT(11),
PRIMARY KEY(id),
FOREIGN KEY(idtipo) REFERENCES tipo(id),
FOREIGN KEY(idinstrutor) REFERENCES instrutor(id)
);

INSERT INTO tipo (tipo)
VALUES  ('Informática'),
		('Fotografia'),
		('Beleza'),
		('Gastronomia'),
		('Idiomas');

INSERT INTO instrutor (instrutor,telefone)
VALUES  ('Wisner Marques','9 97454154'),
		('Stephen Hawking','9 98545141'),
		('Galileu Galilei','9 99455187'),
		('Nicolau Copérnico','9 99554877'),
		('Nickolas Tesla','9 94512145');
        
INSERT INTO alunos(nome,endereço,email)
VALUES  ('Samuel Netto','Rua Borboletas Psicodélicas','samuelnetto@gmail.com'),
		('Mariana Ribeiro','Rua Juliano','MarianaRibeiro@gmail.com'),
		('Daniel Almeida','Rua Travessa Sentimental Demais','DanielAlmeida@gmail.com'),
		('Nicolas de Assis','Rua Chaveslândia','NicolasAssis@gmail.com'),
		('Mauro Ferreira','Rua Nave-Mãe','MauroFerreira@gmail.com'),
		('Isac Marcioano','Rua 95','IsacMarciano@gmail.com'),
		('Marcos Vinicius','Rua Nega Manhosa','MarcosVinicius@gmail.com'),
		('Yoshikage Kyra','Rua ','YoshikageKyra@gmail.com'),
		('Magnus Neto','Rua ','MagnusNeto@gmail.com'),
		('Jonhatan Silva','Rua Música Aquática','JonhatanSilva@gmail.com'),
		('X Æ A-XII Musk','Rua Wisner Marques','X Æ A-XII@gmail.com'),
		('Kratos dos Santos','Rua Nickolas Tesla','KratosSantos@gmail.com'),
		('Dante Espinosa','Rua Galileu Galilei','DanteEspinosa@gmail.com'),
		('Arthur Morgan','Rua Rock Estrela','ArthurMorgan@gmail.com'),
		('John Marston','Rua Nicolau Copérnico','JohnMarston@gmail.com'),
        ('Cris Santana','Rua Stephen Hawking','CrisSantana@gmail.com'),
        ('José Eren','Rua Marie Curie','JoséEren@gmail.com');

INSERT INTO cursos (curso,idtipo,preço,idinstrutor)
value   ('Informática Básica','1','300','1'),
	 	('Programador Web','1','450','1'),
		('Programador de Sistemas','1','450','1'),
		('Fotografica Profissional','2','250','2'),
		('Fotografia de Moda','2','190','2'),
		('Fotografia de Celular','2','220','2'),
		('Automaquiagem','3','150','3'),
		('Barbeiro','3','200','3'),
		('Cabeleireiro','3','200','3'),
		('Preparação de Salgados','4','150','4'),
		('Bases da Confeitaria','4','400','4'),
        ('Cake Designer','4','500','4'),
        ('Inglês','5','200','5'),
        ('Espanhol','5','200','5'),
		('Francês','5','250','5');
        
INSERT INTO pedidos (idalunos,idcursos,Data_hora)
VALUES  ('2020/01/21','',''),
		('2020/02/25','',''),
		('2020/01/14','',''),
		('2020/02/25','',''),
		('2020/01/12','',''),
		('2020/02/31','',''),
		('2020/02/12','',''),
		('2020/01/30','',''),
		('2020/01/18','',''),
		('2020/01/15','',''),
		('2020/02/05','',''),
		('2020/02/12','',''),
		('2020/01/08','',''),
		('2020/01/03','',''),
		('2020/02/02','',''),
		('2020/01/12','',''),
		('2020/02/','','');


-- Exercício A
SELECT * FROM alunos;

-- Exercício B
SELECT curso 
FROM cursos;

-- Exercício C
SELECT Curso,preço
FROM Cursos
WHERE preço > 200;

-- Exercício D
SELECT curso,preço
FROM cursos
WHERE preço > 200 and preço < 300;

-- Exercício E
SELECT 

