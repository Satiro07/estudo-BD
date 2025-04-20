CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(50)
);

CREATE TABLE eventos (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(40),
    categoria VARCHAR(25),
    preco_ingresso NUMERIC(10,2)
);

CREATE TABLE vendas (
    id SERIAL PRIMARY KEY,
    id_cliente INT REFERENCES clientes(id),
    id_evento INT REFERENCES eventos(id),
    quantidade INT,
    data_venda DATE
);

INSERT INTO clientes (nome, email)
VALUES
('Ana Silva', 'ana@gmail.com'),
('João Santos', 'joao@gmail.com'),
('Maria Ferreira', 'maria@gmail.com'),
('Paulo Oliveira', 'paulo@gmail.com');

INSERT INTO eventos(titulo, categoria, preco_ingresso)
VALUES
('Show da Banda XYZ', 'show', 50.00),
('Peça de Teatro ABC', 'teatro', 30.00),
('Exposição de Arte', 'exposição', 20.00),
('Festival de Música', 'show', 80.00);

INSERT INTO vendas (id_cliente, id_evento, quantidade, data_venda)
VALUES
(1, 1, 2, '2025-05-01'),
(1, 2, 2, '2025-05-02'),
(2, 2, 4, '2025-05-04'),
(3, 3, 1, '2025-05-02'),
(3, 4, 2, '2025-05-01'),
(4, 1, 3, '2025-05-03');

SELECT 
    e.categoria AS "Categoria",
    SUM(v.quantidade) AS "Total de Ingressos Vendidos"
FROM vendas v
JOIN eventos e ON v.id_evento = e.id
GROUP BY e.categoria
ORDER BY SUM(v.quantidade) DESC;

SELECT 
    e.titulo AS "Título",
    SUM(e.preco_ingresso * v.quantidade) AS "Total arrecadado"
FROM vendas v
JOIN eventos e ON v.id_evento = e.id
GROUP BY e.titulo
ORDER BY SUM(e.preco_ingresso * v.quantidade) DESC;

SELECT 
    c.nome AS "Cliente",
    SUM(e.preco_ingresso * v.quantidade) AS "Gasto total do cliente"
FROM vendas v
JOIN clientes c ON v.id_cliente = c.id
JOIN eventos e ON v.id_evento = e.id
GROUP BY c.nome
ORDER BY SUM(e.preco_ingresso * v.quantidade) DESC;

SELECT 
    v.data_venda AS "Data",
    SUM(v.quantidade) AS "Número total de vendas"
FROM vendas v
GROUP BY v.data_venda;