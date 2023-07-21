CREATE DATABASE Relacionamentos;
USE Relacionamentos;

-- Relacionamento 1 para 1( Tabela única )
CREATE TABLE Cliente(
    codigo INT NOT NULL,
    nome VARCHAR( 100 ) NOT NULL,
    cep CHAR( 8 ) NOT NULL,
    logradouro VARCHAR( 100 ) NOT NULL,
    PRIMARY KEY( codigo ) 
);

-- Relacionamento 1 para 1( Duas tabela )
CREATE TABLE CLIENTE(
    codigo INT NOT NULL,
    nome VARCHAR NOT NULL,
    PRIMARY KEY( codigo )
);

CREATE TABLE Endereco(
    codigo INT NOT NULL,
    codigo_cliente INT NOT NULL,
    cep CHAR( 8 ),
    logradouro VARCHAR( 100 ) NOT NULL,
    PRIMARY KEY( codigo ),
    FOREIGN KEY( codigo_cliente ) REFERENCES CLIENTE( codigo )
);

-- Relacionamento 1 para N( Duas tabela )
CREATE TABLE cliente(
    codigo INT NOT NULL,
    nome VARCHAR NOT NULL,
    PRIMARY KEY( codigo )
);

CREATE TABLE Compra(
    codigo INT NOT NULL,
    codigo_cliente INT NOT NULL,
    data DATE NOT NULL,
    PRIMARY KEY( codigo ),
    FOREIGN KEY( codigo_cliente ) REFERENCES cliente( codigo )
    
);
