CREATE DATABASE loja; -- criou um banco de dados chamado loja
USE loja; -- selecionou para usar

-- criou tabela
CREATE TABLE Produto(
    -- atributos da tabela
    codigo INT,   
    nome VARCHAR(100),
    preco NUMERIC(10,2),
    PRIMARY KEY(codigo)
);

-- inseriu nos atributos codigo, nome e preco valores 
INSERT INTO Produto(codigo, nome, preco) VALUES
(2, 'Água Mineral', 3.20),
(3, 'Limão', 5.80),
(4, 'Dolly', 4.90),
(5, 'Hambuguer', 12.90),
(1, 'Coca-Cola', 5.40);

-- update = atualizar, set = definir, where = onde
-- mudou o preço do código 1
UPDATE Produto
SET preco=  5.0, nome= 'Coquinha'
WHERE codigo=1;

-- alterar table = alterar tabela, default = predefinição
-- ta alterando a tabela e adicionando uma coluna chamado ativo do tipo booleana que não pode ser nulo
ALTER TABLE Produto ADD ativo BOOLEAN NOT NULL DEFAULT true;

UPDATE Produto
SET ativo= false
WHERE codigo=1;

SELECT * FROM Produto;

