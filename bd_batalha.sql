------------------------------------------------------------
----------- CRIANDO AS TABELAS DO BANCO DE DADOS -----------
------------------------------------------------------------
CREATE TABLE heroi (
    id_heroi INT PRIMARY KEY,
    nome_personagem VARCHAR(50),
    nome_real VARCHAR(100),
    nivel INT,
    energia INT
);

CREATE TABLE itens (
    id_itens INT PRIMARY KEY,
    nome_itens VARCHAR(100),
    poder INT,
    id_heroi INT,
    
    FOREIGN KEY (id_heroi)
        REFERENCES herois(id_heroi)
);

CREATE TABLE batalha (
    id_batalhas INT PRIMARY KEY,
    heroi_id INT,
    vilao VARCHAR(50),
    resultado VARCHAR(50),

    FOREIGN KEY (heroi_id)
        REFERENCES herois(id_heroi)
);

CREATE TABLE missao (
    id_missao INT PRIMARY KEY,
    nome_missao VARCHAR(100),
    perigo INT
);



------------------------------------------------------------
---------- INSERINDO OS DADOS NAS TABELAS CRIADAS-----------
------------------------------------------------------------
 INSERT into herois (id_heroi, nome_personagem, nome_real, nivel, energia)
 VALUES
    (1, 'Homem de Ferro', 'Tony Stark', 15, 300),
(2, 'Capitão América', 'Steve Rogers', 14, 250),
(3, 'Thor', 'Thor Odinson', 18, 500),
(4, 'Hulk', 'Bruce Banner', 17, 600),
(5, 'Viúva Negra', 'Natasha', 12, 200);

 INSERT INTO batalha (id_batalhas, heroi_id, vilao, resultado)
 VALUES
(1,2, 'thanos', 'derrota'),
(2,1, 'loki', 'vitoria'),
(3,3, 'venom', 'vitoria'),
(4,4, 'abominavel', 'vitoria'),
(5,5, 'loki', 'derrota'),
(6,5, 'duende verde', 'vitoria'),
(7,1, 'venom', 'vitoria');

 INSERT into missao (id_missao, nome_missao, perigo)
 VALUES
(1, 'invasao alienigena', 50),
(2, 'resgate urbano', 20),
(3, 'ataque de ultron', 50),
(4, 'protecao de idade', 30);

 INSERT INTO itens (id_itens, nome_itens, poder, id_heroi)
 VALUES
    (1,'Armas de Fogo/Glock', 90, 5),
    (2,'Força Bruta', 150, 4),
    (3,'Mjolnir', 160, 3),
    (4,'Escudo de Vibrânio',95, 2),
    (5,'Tecnologia Nanotecnologia',90,1);











