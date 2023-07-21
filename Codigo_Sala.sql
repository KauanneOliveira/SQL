CREATE DATABASE loja;
USE loja;

CREATE TABLE Produto(
    codigo INT, 
    nome VARCHAR(100),
    preco NUMERIC(10,2),
    PRIMARY KEY(codigo)
);

INSERT INTO Produto(codigo, nome, preco) VALUES
(2, 'Água Mineral', 3.20),
(3, 'Limão', 5.80),
(4, 'Dolly', 4.90),
(5, 'Hambuguer', 12.90),
(1, 'Coca-Cola', 5.40);

UPDATE Produto
SET preco=  5.0, nome= 'Coquinha'
WHERE codigo=1;

ALTER TABLE Produto ADD ativo BOOLEAN NOT NULL DEFAULT true;

UPDATE Produto
SET ativo= false
WHERE codigo=1;

SELECT * FROM Produto;

