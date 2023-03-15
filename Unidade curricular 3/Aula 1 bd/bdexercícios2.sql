CREATE DATABASE bdexercícios2;

USE bdexercícios2;

CREATE TABLE Produtos (
Id_table INT NOT NULL AUTO_INCREMENT,
Id_nf INT NOT NULL,
Id_item INT NOT NULL,
Cod_prod INT NOT NULL,
Valor_unit DECIMAL(10,2) NOT NULL,
Quantidade INT NOT NULL,
Desconto INT,
PRIMARY KEY(ID_table)
);

INSERT INTO Produtos (iD_nf, iD_item,cOd_prod,vAlor_unit,qUantidade,dEsconto)
VaLUES  (1,1,1,25,10,5);

INSERT INTO Produtos (iD_nf,iD_item,cOd_prod,vAlor_unit,qUantidade)
VALUES  (1,2,2,13.5,3),
		(1,3,3,15,2),
		(1,4,4,10,1),
		(1,5,5,30,1),
		(2,1,3,15,4),
		(2,2,1,10,5),
		(2,3,5,30,7),
		(3,1,1,25,5),
		(3,2,4,10,4),
		(3,3,5,30,5),
		(3,4,2,13.5,7);
        
INSERT INTO Produtos (iD_nf,iD_item,cOd_prod,vAlor_unit,qUantidade,dEsconto)
VaLUES	(4,1,5,30,10,15),
		(4,2,4,10,12,5),
		(4,3,1,25,13,5),
		(4,4,2,13.5,15,5);
        
INSERT INTO Produtos (id_nf,id_item,cod_prod,valor_unit,quantidade)
VALUES  (5,1,3,15,3),
		(5,2,5,30,6);
        
INSERT INTO Produtos (id_nf,id_item,cod_prod,valor_unit,quantidade,desconto)
VaLUES  (6,1,1,25,22,15),
		(6,2,3,15,25,20),
		(7,1,1,25,10,3),
		(7,2,2,13.5,10,4),
		(7,3,3,15,10,4),
		(7,4,5,30,10,1);
        
SELECT * FROM produtos;

-- Exercício A        
SELECT ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT
FROM Produtos
WHERE Desconto IS NULL;

-- Exercício B
SELECT ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, (VALOR_UNIT*(DESCONTO/100)) AS 'valor vendido'
FROM Produtos
WHERE Desconto IS NOT NULL;

-- Exercício C
UPDATE produtos
set desconto = 0
WHERE desconto is null;

-- Exercício D
SELECT id_nf,id_item,cod_prod,valor_unit,quantidade,desconto,quantidade * valor_unit AS 'Valor Total',format((valor_unit - (VALOR_UNIT*(DESCONTO/100))),2) AS 'Valor vendido'
FROM produtos
WHERE (VALOR_UNIT*(DESCONTO/100));

-- Exercício E
SELECT id_nf, SUM(quantidade* valor_unit) as 'Valor total' 
FROM produtos
GROUP BY id_nf
ORDER BY SUM(quantidade* valor_unit) DESC;

-- Exercício F
SELECT id_nf, SUM(quantidade* valor_unit) as 'Valor total', format((valor_unit - (VALOR_UNIT*(DESCONTO/100))),2) AS 'Valor vendido'
FROM produtos
GROUP BY id_nf
ORDER BY SUM(quantidade* valor_unit) DESC;

-- Exercício G
SELECT cod_prod , quantidade 
FROM produtos
LIMIT 1
WHERE  ;

















SELECT * FROM funcionarios
WHERE salario > 800;




