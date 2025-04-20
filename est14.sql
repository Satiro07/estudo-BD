CREATE TABLE professores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE disciplinas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE professores_disciplinas (
    id_professor INT REFERENCES professores(id),
    id_disciplinas INT REFERENCES disciplinas(id)
);

INSERT INTO professores (nome)
VALUES
('Marcos Silva'),
('Ana Monteiro'),
('João Alves');

INSERT INTO disciplinas (nome)
VALUES
('Matemática Aplicada'),
('Química Orgânica'),
('Literatura Inglesa'),
('Física Teórica');

INSERT INTO professores_disciplinas (id_professor, id_disciplinas)
VALUES
(1,1),
(2,2),
(3,3),
(1,4);

SELECT
    p.nome AS Professor,
    d.nome AS Disciplinas
FROM professores_disciplinas pd
JOIN professores p ON pd.id_professor = p.id
JOIN disciplinas d ON pd.id_disciplinas = d.id