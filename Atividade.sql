CREATE DATABASE RegistroTarefa;
USE RegistroTarefa;

CREATE TABLE Tarefa(
    id INT PRIMARY KEY NOT NULL,
    id_usuario INT NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    realizada BOOLEAN NOT NULL,
    FOREIGN KEY( id_usuario ) REFERENCES Usuario( id )
);

CREATE TABLE Usuario(
    id INT PRIMARY KEY NOT NULL,
    nome VARCHAR( 100 ) NOT NULL,
    email VARCHAR( 100 ) NOT NULL,
    senha CHAR( 60 ) NOT NULL
);

INSERT INTO Usuario ( id, nome, email, senha ) VALUES
( 1, 'João da Silva', 'joao@email.com', '*****' ),
( 2, 'Maria da Silva', 'maria@email.com', '********' );

INSERT INTO Tarefa( id, id_usuario, descricao, realizada ) VALUES
( 1, 1, 'Comprar Carne Moida', false ),
( 2, 1, 'Limpar pia', false),
( 3, 2, 'Fazer lição de LG2', true),
( 4, 1, 'Arrumar a casa', true),
( 5, 2, 'Lavar a roupa', false),
( 6, 2, 'Andar 2 Km', true);

-- ALTER TABLE Tarefa ADD realizada BOOLEAN NOT NULL;

UPDATE Tarefa
SET realizada = true
WHERE id = 1;

SELECT * FROM Tarefa;
SELECT * FROM Usuario;
SELECT * FROM Tarefa WHERE id_usuario = 2;
