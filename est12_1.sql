CREATE TABLE times (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE divisao (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE times_divisao (
   id_time INT REFERENCES times(id),
   id_divisao INT REFERENCES divisao(id)
);

INSERT INTO times (nome)
VALUES
('Flamengo'),
('Fortaleza'),
('Ceará'),
('Palmeiras');

INSERT INTO divisao (nome)
VALUES
('1° divisão'),
('2° divisão'),
('1° divisão'),
('1° divisão');

INSERT INTO times_divisao(id_time, id_divisao)
VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 1);


SELECT 
    t.nome AS Nome_time,
    d.nome AS Divisao
FROM times_divisao td
JOIN times t ON td.id_time = t.id
JOIN divisao d ON td.id_divisao = d.id