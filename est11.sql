CREATE TABLE editoras (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE livros (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(25),
    id_editora INT REFERENCES editoras(id)
);

INSERT INTO editoras (nome)
VALUES
('Editora Alfa'),
('Editora Beta'),
('Editora Gamma'),
('Editora Omega');

INSERT INTO livros (titulo, id_editora)
VALUES
('O Mistério da Floresta', 1),
('Histórias de Uma Vila', 2),
('Ciência para Curiosos', 3),
('Os Contos Perdidos', 4);

SELECT
    l.titulo AS Titulo_livro,
    e.nome AS Nome_editora
FROM livros l
JOIN editoras e ON l.id_editora = e.id