CREATE TABLE livros (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(50),
    autor VARCHAR(50),
    genero VARCHAR(25),
    ano_publicacao INT
);

INSERT INTO livros (titulo, autor, genero, ano_publicacao)
VALUES
-- ('É assim que acaba', 'Christy Hall', 'Romance', 2016),
('O Senhor dos Anéis', 'J.R.R. Tolkien', 'Fantasia', 1954),
('1984', 'George Orwell', 'Distopia', 1949),
('Dom Casmurro', 'Machado de Assis', 'Romance', 1899);

CREATE TABLE aluguel (
    id SERIAL PRIMARY KEY,
    id_livro INT REFERENCES livros(id),
    data_aluguel DATE,
    prazo_aluguel DATE
);

INSERT INTO aluguel (id_livro, data_aluguel, prazo_aluguel)
VALUES
(1, '2025-04-15', '2025-04-30'),
(2, '2025-04-10', '2025-04-25'),
(3, '2025-04-17', '2025-05-03');

SELECT l.titulo AS livro, a.data_aluguel AS data_aluguel, a.prazo_aluguel AS prazo_aluguel
FROM livros l
JOIN aluguel a ON a.id_livro = l.id;

