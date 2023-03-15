CREATE DATABASE bdvendas;

USE bdvendas;

CREATE TABLE cliente(
 id INT NOT NULL AUTO_INCREMENT,
 nome VARCHAR(50) NOT NULL,
 email VARCHAR(50) NOT NULL,
 endereço VARCHAR(50) NOT NULL,
 PRIMARY KEY(id)
);

CREATE TABLE produtos (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    preço DECIMAL(10 , 2 ) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE vendas (
 id INT NOT NULL AUTO_INCREMENT,
 qtde INT NOT NULL,
 idCliente INT NOT NULL,
 idProduto INT NOT NULL,
 PRIMARY KEY(ID),
 FOREIGN KEY(idCliente) REFERENCES cliente(id),
 FOREIGN KEY(idProduto) REFERENCES produtos(id)
);

INSERT INTO Cliente (nome, email, endereço)
VALUE   ('Samuel Dourado Netto','Samuelnetto2000@gmail.com','Rua Mickelangelo'),
		('Mariana Souza Barbosa','Marianasouza','Rua Raphael'),
		('Donatello Leonardo','Donneleo','Rua Splinter');

INSERT INTO produtos (nome,preço)
VALUE   ('Playstation 5',5600),
		('X-BOX One',2800),
		('Iphone',8600.98);
        
INSERT INTO vendas (Idcliente,idproduto, qtde)
VALUE   (1,2,1),
		(2,3,1),
		(1,3,2);
        
        
SELECT cli.nome AS Nome, prod.nome AS Produto, prod.preço AS Preço, ven.qtde AS Quantidade 
FROM cliente cli
JOIN vendas ven ON cli.id = ven.idcliente
JOIN produtos prod ON prod.id = ven.idproduto;
 
 -- Left join
SELECT *
FROM cliente cli
LEFT JOIN vendas ven ON cli.id = ven.idcliente;

-- RIGHT JOIN
SELECT * 
FROM vendas ven
RIGHT JOIN produtos prod ON prod.id = ven.idProduto;

SELECT cli.nome AS Nome, COUNT(ven.idcliente) AS Qtde_Compras
FROM cliente cli
JOIN vendas ven ON cli.id = ven.idcliente
JOIN produtos prod ON prod.id = ven.idproduto
GROUP BY(ven.idcliente);


 






