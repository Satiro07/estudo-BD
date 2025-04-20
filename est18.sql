CREATE TABLE estudantes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE disciplinas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(25)
);

CREATE TABLE notas (
    id_estudante INT REFERENCES estudantes(id),
    id_disciplinas INT REFERENCES disciplinas(id),
    nota NUMERIC(2,1)
);

INSERT INTO estudantes (nome)
VALUES
('José Satiro'),
('Maria Clara'),
('Rayssa Mirella');

INSERT INTO disciplinas (nome)
VALUES
('Matemática'),
('História'),
('Física');

INSERT INTO notas (id_estudante, id_disciplinas, nota)
VALUES
(1, 1, 9.0),
(1, 2, 8.5),
(1, 3, 7.0),

(2, 1, 7.5),
(2, 2, 9.0),
(2, 3, 8.0),

(3, 1, 8.0),
(3, 2, 8.5),
(3, 3, 9.5);

SELECT
    e.nome AS Nome_Estudande,
    n.nota AS Notas_Estudante
FROM notas n
JOIN estudantes e ON n.id_estudante = e.id
ORDER BY n.nota DESC;

SELECT
    e.nome AS Nome_Estudande,
    n.nota AS Notas_Estudante
FROM notas n
JOIN estudantes e ON n.id_estudante = e.id
ORDER BY e.nome ASC, n.nota DESC