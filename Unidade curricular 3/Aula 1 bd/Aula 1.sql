create database bdaluno;

create DATABASE BDTESTE;

 USE bdaluno;

 USE bdteste;
 
 CREATE TABLE aluno (
 id int not null AUTO_INCREMENT,
 nome VARCHAR(150) NOT NULL,
 logradouro VARCHAR (150) NOT NULL,
 numero INT NOT NULL,
 bairro VARCHAR(150) NOT NULL,
 email VARCHAR(50) NOT NULL,
 telefone VARCHAR(20),
 PRIMARY KEY (id)
 );

-- varchar == string
-- INT == numero inteiro
-- comando para inserir dados

INSERT INTO aluno (nome, logradouro, numero, bairro , email, telefone)
VALUES( 
'Samuel Netto',
'Rua naruto',
 12,
 'do Vegeta',
 'Shaolinmatadordeporco@gmail.com',
 '64 9 99995555');
 INSERT INTO aluno (nome, logradouro, numero, bairro , email, telefone)
VALUES( 
'Mariana Ribeiro',
'Rua sasuke',
 10,
 'do Goku',
 'Licmyballs@gmail.com',
 '64 9 96544984');
 INSERT INTO aluno (nome, logradouro, numero, bairro , email, telefone)
VALUES( 
'Daniel Almeida',
'Rua sakura',
  11,
 'do bulma',
 'Eopasseio@gmail.com',
 '64 9 95564685');
 INSERT INTO aluno (nome, logradouro, numero, bairro , email, telefone)
VALUES( 
'Nicolas de Assis',
'Rua Kuririn',
 13,
 'do Rock Lee',
 'Eorodeio@gmail.com',
 '64 9 58581452');
  INSERT INTO aluno (nome, logradouro, numero, bairro , email, telefone)
VALUES( 
'Valentina Ribeiro',
'Rua Gohan',
 14,
 'do Kakashi',
 'Opluraldedecimais@gmail.com',
 '64 9 58174362');

-- comando para visualizar dados
SELECT * FROM aluno; -- * retornar todos os campos

-- comando para exibir dados específicos 
-- SELECT nome,email,telefone FROM aluno;

-- comando para deletar
 
 -- comando para atualizar
 UPDATE aluno SET logradouro = 'Rua sasuke', bairro = 'Do Jiraya'
 WHERE id = 2;
 
 -- comando para excluir tabela
 DROP TABLE aluno;
 