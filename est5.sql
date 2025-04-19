CREATE TABLE autores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE livros (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(25),
    id_autor INT REFERENCES autores(id),
);

INSERT INTO autores (nome)
VALUES
('J.R.R. Tolkien'),
('Machado de Assis'),
('George Orwell'),
('Gabriel Garcia Márquez');

INSERT INTO livros (titulo, id_autor)
VALUES
('O Senhor dos Anéis',1),
('Dom Casmurro', 2),
('A Revolução dos Bichos', 3),
('Cem Anos de Solidão', 4);

SELECT t.titulo AS titulo, n.nome AS nome
FROM livros l
JOIN autores n ON n.id_autor = n.id


