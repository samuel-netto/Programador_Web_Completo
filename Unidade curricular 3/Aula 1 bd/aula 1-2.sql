use bdaluno;

-- Retornar dados de um aluno específico
SELECT * FROM aluno
WHERE id = 1;

-- Retornar todos
SELECT * FROM aluno
where id = 4;

-- retornar todos os registros de quem mora no bairro jk
SELECT * FROM aluno
WHERE bairro = 'jk';

-- retornar todos os registros de quem mora no bairro jk
-- e no logradouro Rua xy
SELECT * FROM aluno
WHERE bairro = 'jk'and logradouro = 'Rua xy';

-- Retornar todos os registros de quem mora no logradouro da Rua xy
-- e da rua das flores
SELECT * FROM aluno
WHERE logradouro = 'rua das flores'OR logradouro = 'Rua xy';

-- ******outra forma ********************
SELECT * FROM aluno
WHERE logradouro IN ('rua das flores','rua xy')

truncate

