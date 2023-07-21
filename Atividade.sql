CREATE DATABASE RegistroT;
USE RegistroT;

CREATE TABLE Tarefa(
    id INT PRIMARY KEY NOT NULL,
    descricao VARCHAR(100) NOT NULL
);

INSERT INTO Tarefa( id, descricao ) VALUES
( 1, 'Comprar Carne Moida' ),
( 2, 'Limpar pia'),
( 3, 'Fazer lição de LG2'),
( 4, 'Arrumar a casa'),
( 5, 'Lavar a roupa'),
( 6, 'Andar 2 Km');

SELECT * FROM Tarefa;