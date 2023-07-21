CREATE DATABASE Locadora;
USE Locadora;

CREATE TABLE Cliente(
    id INT,
    titulo VARCHAR( 100 ),
    CPF CHAR( 11 ),
    PRIMARY KEY( id )
);

CREATE TABLE Marca(
    id INT PRIMARY KEY,
    nome VARCHAR( 50 )
);

CREATE TABLE Modelo(
    id INT PRIMARY KEY,
    id_marca INT,
    nome VARCHAR( 50 ),
    FOREIGN KEY( id_marca ) REFERENCES Marca(id)
);

CREATE TABLE Carro(
    id INT PRIMARY KEY,
    id_modelo INT,
    placa CHAR( 7 ),
    FOREIGN KEY( id_modelo ) REFERENCES Modelo(id)
);

CREATE TABLE Locacao(
    id INT PRIMARY KEY,
    id_cliente INT,
    id_carro INT,
    datahora_inicio DATETIME,
    datahora_saida DATETIME,
    km_rodada INT,
    FOREIGN KEY( id_cliente ) REFERENCES Cliente(id)
    FOREIGN KEY( id_carro ) REFERENCES Carro(id)
);

INSERT INTO Cliente VALUES
( 1, 'Maria', '012345678912'),
( 2, 'Ana', '12345678912'),
( 3, 'João', '29304958671');

INSERT INTO Marca VALUES
( 1, 'Fiat'),
( 2, 'Jeep'),
( 3, 'Ford');

INSERT INTO Modelo VALUES
( 1, 3, 'Uno'),
( 2, 3, 'Patriot'),
( 3, 3, 'SUV');

INSERT INTO Carro VALUES
( 1, 1, 'HDR1234'),
( 2, 2, 'FXB3I43'),
( 3, 3, 'ERTY123');

INSERT INTO Locacao VALUES
( 1, 1, 1, '2022-02-01', null, 360 ),
( 2, 2, 3, '2022-02-12', '2022-02-13', 10 ),
( 3, 3, 2, '2022-02-13', '2022-02-17', 30 ),
( 4, 2, 3, '2022-02-16', null, 0 );

SELECT * FROM Carro;
SELECT * FROM Cliente;
SELECT * FROM Locacao;
