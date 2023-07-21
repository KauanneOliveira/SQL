CREATE DATABASE ChaveEstrangeira;
USE ChaveEstrangeira;

CREATE TABLE Projeto(
    id INT NOT NULL,
    titulo VARCHAR( 100 ) NOT NULL,
    PRIMARY KEY( id )
);

CREATE TABLE Funcionario(
    id INT NOT NULL,
    nome VARCHAR( 100 ) NOT NULL,
    PRIMARY KEY( id )
);

CREATE TABLE Participacao(
    id INT NOT NULL,
    id_projeto INT NOT NULL,
    id_funcionario INT NOT NULL,
    data_entrada DATE NOT NULL,
    data_saida DATE,
    PRIMARY KEY( id ),
    FOREIGN KEY( id_projeto ) REFERENCES Projeto(id),
    FOREIGN KEY( id_funcionario ) REFERENCES Funcionario(id)
);

INSERT INTO Projeto VALUES
( 1, 'Site Cliente X'),
( 2, 'App Mobile');

INSERT INTO Funcionario VALUES
( 1, 'Maria'),
( 2, 'Ana'),
( 3, 'João');

INSERT INTO Participacao VALUES
( 1, 1, 1, '2022-02-01', null ),
( 2, 1, 2, '2022-02-01', null ),
( 3, 1, 3, '2022-02-01', null ),
( 4, 2, 2, '2022-02-01', null );

SELECT * FROM Projeto;
SELECT * FROM Funcionario;
SELECT * FROM Participacao;
