create database Loja;
use Loja;

CREATE TABLE Produto (
	idProduto INT PRIMARY KEY IDENTITY(1, 1) NOT NULL, -- mysql server auto increment é o identity( valor inical, valor incrementar)
	nome VARCHAR(45) NOT NULL,
	valorCusto DECIMAL(5, 2) NOT NULL,
	valorVenda DECIMAL(5,2) NOT NULL
);


-- Exercício 1

INSERT INTO Produto( nome, valorCusto, valorVenda )
	VALUES ('Smartphone', 200, 400);

	
-- Exercício 2

UPDATE Produto
	SET valorVenda = 15
	WHERE nome = 'Café';


-- Exercício 3

SELECT TOP 5 nome, valorVenda FROM Produto
	ORDER BY valorVenda DESC;


-- Exercício 4

DELETE FROM Produto 
	WHERE valorVenda < valorCusto;