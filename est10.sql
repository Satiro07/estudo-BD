CREATE TABLE cursos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE alunos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    id_curso INT REFERENCES cursos(id)
);

INSERT INTO cursos (nome)
VALUES
('Biologia'),
('História'),
('Geografia'),
('Informática');

INSERT INTO alunos (nome, id_curso)
VALUES
('Maria Clara', 1),
('João Cravo', 2),
('Maria Zenaide', 3),
('José Satiro', 4);

SELECT
    a.nome AS Nome_aluno,
    c.nome AS Nome_curso
FROM alunos a
JOIN cursos c ON a.id_curso = c.id