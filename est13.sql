CREATE TABLE alunos(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE turmas(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE alunos_turmas(
    id_aluno INT REFERENCES alunos(id),
    id_turma INT REFERENCES turmas(id)
);

INSERT INTO alunos (nome)
VALUES
('Ana Paula'),
('João Victor'),
('Maria Eduarda'),
('Carlos Henrique'),
('Sofia Almeida');

INSERT INTO turmas (nome)
VALUES
('Matemática Avançada'),
('Literatura Brasileira'),
('Fisíca Moderna'),
('História Geral'),
('Biologia Experimental');

INSERT INTO alunos_turmas(id_aluno, id_turma)
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);   

SELECT
    a.nome AS Nome_aluno,
    t.nome AS Nome_turma
FROM alunos_turmas at
JOIN alunos a ON at.id_aluno = a.id
JOIN turmas t ON at.id_turma = t.id