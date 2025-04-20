CREATE TABLE times (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE divisao (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    id_time INT REFERENCES times(id)
);

CREATE TABLE times_divisao (
   id_time INT REFERENCES times(id),
   id_divisao INT REFERENCES divisao(id)
);

INSERT INTO times_divisao(id_time, id_divisao)
VALUES
(1, 1),
(2,2),
(3,3),
(4,4);

INSERT INTO times (nome)
VALUES
('Flamengo'),
('Fortaleza'),
('Ceará'),
('Palmeiras');

INSERT INTO divisao (nome, id_time)
VALUES
('1° divisão', 1),
('2° divisão', 2),
('1° divisão', 3),
('1° divisão', 4);

SELECT 
    t.nome AS Nome_time,
    d.nome AS Divisao
FROM times_divisao td
JOIN times t ON td.id_time = td.id
