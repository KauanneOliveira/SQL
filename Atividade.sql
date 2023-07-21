CREATE DATABASE RegistroTarefa;
USE RegistroTarefa;

CREATE TABLE Tarefa(
    id INT PRIMARY KEY NOT NULL,
    id_lista INT,
    descricao VARCHAR(100) NOT NULL,
    realizada BOOLEAN NOT NULL,
    dia_final DATE,
    FOREIGN KEY( id_lista ) REFERENCES Lista_Tarefas( id ) ON DELETE CASCADE
);

CREATE TABLE Usuario(
    id INT PRIMARY KEY NOT NULL,
    nome VARCHAR( 150 ) NOT NULL,
    email VARCHAR( 150 ) NOT NULL,
    senha CHAR( 60 ) NOT NULL,
    id_verificacao CHAR( 36 ),
    verificado BOOLEAN
);

CREATE TABLE Alteracao_Senha(
    id INT PRIMARY KEY NOT NULL,
    id_usuario INT,
    id_verificacao CHAR( 36 ),
    gerada_em DATETIME,
    utilizada BOOL,
    FOREIGN KEY( id_usuario ) REFERENCES Usuario( id ) ON DELETE CASCADE
);

CREATE TABLE Lista_Tarefas(
    id INT PRIMARY KEY,
    id_usuario INT,
    nome VARCHAR( 100 ),
    cor CHAR( 6 ),
    FOREIGN KEY( id_usuario ) REFERENCES Usuario( id ) ON DELETE CASCADE
);

INSERT INTO Usuario( id, nome, email, senha, id_verificacao, verificado ) VALUES
( 1, 'João da Silva', 'joao@email.com', '$2a$12$csDyKaS1MNkTsw/C8wrzVeaSd2f6qvcbmxAyFBXLixrBKYqiF81fC', '27f0af95-154c-45d2-91a1-90c94012575c', false ),
( 2, 'Maria da Silva', 'maria@email.com', '$2a$12$ZImkMzyRxjC1ocZyVRNrGu46uJtaf.IMWXR8aIlZ8nVhwVwJgiNT6', '9e0bf69d-5a02-4d01-84cf-05577a1b1bbc', false ),
( 3, 'Mario', 'mario@email.com', '$2a$12$w1J8w.L8zbQvCNPLPsltguETYpKd8xR4umOuBptkyZNpAQ81G.VhG', 'ddc55e8e-b9ec-439b-b54d-027028783a69', true);

INSERT INTO Lista_Tarefas( id, id_usuario, nome, cor ) VALUES
( 1, 1, 'Treino Box', 'FF0000'),
( 2, 1, 'Casa', '00FF00'),
( 3, 1, 'Comprar', '20F2C5'),
( 4, 2, 'Treino Futsal', '4169E1'),
( 5, 2, 'Academia', '1E90FF'),
( 6, 2, 'Livros', '87CEFA'),
( 7, 3, 'Filmes', '0000FF'),
( 8, 3, 'Treino Basquete', '6495ED'),
( 9, 3, 'Escola', '00BFFF');

INSERT INTO Tarefa( id, id_lista, descricao, realizada, dia_final ) VALUES
( 1, 3, 'Comprar Carne Moida', false, '2022-03-08' ),
( 2, 2, 'Limpar pia', false, '2022-09-20'),
( 3, 9, 'Fazer lição de LG2', true, '2022-06-17'),
( 4, 2, 'Arrumar a casa', true, '2022-01-12'),
( 5, 2, 'Lavar a roupa', false, '2022-02-29'),
( 6, 5, 'Andar 2 Km', true, '2022-05-11'),
( 7, 9, 'Fazer bomba nuclear', false, '2022-07-03'),
( 8, 8, 'Treino de arremesso', true, '2022-08-08'),
( 9, 3, 'Ir a feira', false, '2022-12-22'),
( 10, 1, 'Soco lateral', true, '2022-04-18');

INSERT INTO Alteracao_Senha( id, id_usuario, id_verificacao, gerada_em, utilizada) VALUES
( 1, 1, 'd5991b16-0edf-412b-a892-53338f6e9b02', '2022-04-11 15:27:00', false);

-- ALTER TABLE Tarefa ADD realizada BOOLEAN NOT NULL;

UPDATE Tarefa
SET realizada = true
WHERE id = 1;

SELECT * FROM Tarefa
WHERE dia_final = '2022-04-18'
AND id_lista IN ( 1, 2, 3 );

SELECT * FROM Tarefa
WHERE dia_final < '2022-04-18'
AND realizada = true
AND id_lista IN ( 1, 2, 3 );

DELETE FROM Lista_Tarefa
WHERE id = 2;

DELETE FROM Tarefa
WHERE id_lista = 2;
DELETE FROM Lista_Tarefa
WHERE id = 2;

SELECT * FROM Tarefa;
SELECT * FROM Usuario;
SELECT * FROM Tarefa WHERE id_usuario = 2;
SELECT * FROM Alteracao_Senha;
SELECT * FROM Lista_Tarefas;
