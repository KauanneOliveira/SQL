CREATE DATABASE RegistroT;
USE RegistroT;

CREATE TABLE Tarefa(
    id INT PRIMARY KEY NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    realizada BOOLEAN NOT NULL
);

INSERT INTO Tarefa( id, descricao ) VALUES
( 1, 'Comprar Carne Moida', false ),
( 2, 'Limpar pia', false),
( 3, 'Fazer lição de LG2', true),
( 4, 'Arrumar a casa', true),
( 5, 'Lavar a roupa', false),
( 6, 'Andar 2 Km', true);

-- ALTER TABLE Tarefa ADD realizada BOOLEAN NOT NULL;

UPDATE Tarefa
SET realizada = true
WHERE id = 1;

SELECT * FROM Tarefa;
