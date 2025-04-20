CREATE TABLE livros (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(25),
    autor VARCHAR(100),
    ano_publicacao INT,
    preco NUMERIC(10,2)
);

INSERT INTO livros (titulo, autor, ano_publicacao, preco)
VALUES
('1984', 'George Orwell', 1949, 45.90),
('Dom Casmurro', 'Machado de Assis', 1899, 39.50),
('Orgulho e Preconceito', 'Jane Austen', 1813, 49.90),
('O Pequeno Príncipe', 'Antoine de Saint-Exepéry', 1943, 29.90),
('Cem Anos de Solidão', 'Gabriel García Márquez', 1967, 55.00);


-- orderna do preço mais caro para o mais barato
SELECT
    l.titulo AS "Título",
    l.preco AS "Preço"
FROM livros l
ORDER BY l.preco DESC;

-- orderna do ano de publicação mais antigo para o mais recente
SELECT 
    l.titulo AS "Título",
    l.ano_publicacao AS "Ano de Publicação"
FROM livros l
ORDER BY l.ano_publicacao;

-- orderna pelo nome do autor, ordem alfabética
SELECT 
    l.autor AS "Autor",
    l.titulo AS "Título"
FROM livros l
ORDER BY l.autor;