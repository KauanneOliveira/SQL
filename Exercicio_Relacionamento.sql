CREATE DATABASE Relacionamento;
USE Relacionamento;

CREATE TABLE Cliente(
    codigo INT NOT NULL,
    nome VARCHAR NOT NULL,
    PRIMARY KEY(codigo)
);

CREATE TABLE Compra(
    codigo INT,
    codigo_cliente INT NOT NULL,
    data DATE NOT NULL,
    PRIMARY KEY(codigo),
    FOREIGN KEY( codigo_cliente ) REFERENCES Cliente( codigo )
);

INSERT INTO Cliente VALUES
( 1, 'João'),
( 2, 'Maria');

INSERT INTO Compra VALUES
( 1, 2, '2022-03-10'),
( 2, 2, '2022-03-11');

SELECT * FROM Cliente
WHERE codigo = 2;

SELECT * FROM Compra
WHERE codigo_cliente = 2;
