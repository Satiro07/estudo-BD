CREATE TABLE times (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE divisao (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    id_time INT REFERENCES times(id)
);

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
FROM divisao d
JOIN times t ON d.id_time = t.id
