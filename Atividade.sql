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
    FOREIGN KEY( id_usuario ) REFERENCES Usuario( id )
);

INSERT INTO Usuario ( id, nome, email, senha, id_verificacao, verificado ) VALUES
( 1, 'João da Silva', 'joao@email.com', '$2a$12$csDyKaS1MNkTsw/C8wrzVeaSd2f6qvcbmxAyFBXLixrBKYqiF81fC', '27f0af95-154c-45d2-91a1-90c94012575c', false ),
( 2, 'Maria da Silva', 'maria@email.com', '$2a$12$ZImkMzyRxjC1ocZyVRNrGu46uJtaf.IMWXR8aIlZ8nVhwVwJgiNT6', '9e0bf69d-5a02-4d01-84cf-05577a1b1bbc', false ),
( 3, 'Mario', 'mario@email.com', '$2a$12$w1J8w.L8zbQvCNPLPsltguETYpKd8xR4umOuBptkyZNpAQ81G.VhG', 'ddc55e8e-b9ec-439b-b54d-027028783a69', true);

INSERT INTO Tarefa( id, id_usuario, descricao, realizada ) VALUES
( 1, 1, 'Comprar Carne Moida', false ),
( 2, 1, 'Limpar pia', false),
( 3, 2, 'Fazer lição de LG2', true),
( 4, 1, 'Arrumar a casa', true),
( 5, 2, 'Lavar a roupa', false),
( 6, 2, 'Andar 2 Km', true),
( 7, 3, 'Fazer bomba nuclear', false),
( 8, 3, 'Treino de capoeira', true),
( 9, 3, 'Ir a feira', false);

INSERT INTO Alteracao_Senha( id, id_usuario, id_verificacao, gerada_em, utilizada) Values
( 1, 1, 'd5991b16-0edf-412b-a892-53338f6e9b02', '2022-04-11 15:27:00', false);

-- ALTER TABLE Tarefa ADD realizada BOOLEAN NOT NULL;

UPDATE Tarefa
SET realizada = true
WHERE id = 1;

SELECT * FROM Tarefa;
SELECT * FROM Usuario;
--SELECT * FROM Tarefa WHERE id_usuario = 2;
SELECT * FROM Alteracao_Senha;
