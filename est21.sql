CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE filmes (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(50),
    genero VARCHAR(25),
    preco_ingresso NUMERIC(10,2)
);

CREATE TABLE reservas (
    id_cliente INT REFERENCES clientes(id),
    id_filme INT REFERENCES filmes(id),
    quantidade_ingressos INT,
    data_reserva DATE
);

INSERT INTO clientes (nome)
VALUES
('Ana Lima'),
('João Pereira'),
('Sofia Martins'),
('Pedro Almeida');

INSERT INTO filmes (titulo, genero, preco_ingresso)
VALUES
('Vingadores', 'Ação', 25.00),
('Titanic', 'Romance', 18.00),
('Toy Story', 'Comédia', 12.00),
('Interstellar', 'Ficção Científica', 20.00);

INSERT INTO reservas (id_cliente, id_filme, quantidade_ingressos, data_reserva)
VALUES
(1, 1, 3, '2025-05-01'),
(1, 2, 1, '2025-05-02'),

(2, 2, 2, '2025-05-01'),
(2, 3, 4, '2025-05-03'),

(3, 4, 2, '2025-05-03'),
(3, 1, 5, '2025-05-04'),

(4, 3, 1, '2025-05-02'),
(4, 4, 2, '2025-05-04');

-- total de ingressos reservados por filme
SELECT 
    f.titulo AS "Filme",
    SUM(r.quantidade_ingressos) AS "Total de ingressos reservados"
FROM reservas r
JOIN filmes f ON r.id_filme = f.id
GROUP BY f.titulo
ORDER BY SUM(r.quantidade_ingressos) DESC;

-- faturamento total por gênero
SELECT 
    f.genero AS "Gênero",
    SUM(f.preco_ingresso * r.quantidade_ingressos) AS "Faturamento Total (R$)"
FROM reservas r
JOIN filmes f ON r.id_filme = f.id
GROUP BY f.genero
ORDER BY SUM(f.preco_ingresso * r.quantidade_ingressos) DESC;

-- reservas por data
SELECT
    r.data_reserva AS "Data",
    COUNT(r.quantidade_ingressos) AS "Total de Reservas"
FROM reservas r
GROUP BY r.data_reserva
ORDER BY r.data_reserva;