CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    preco NUMERIC(10,2)
);

CREATE TABLE vendas (
    id SERIAL PRIMARY KEY,
    id_produto INT REFERENCES produtos(id),
    data_venda DATE,
    quantidade INT
);

INSERT INTO produtos (nome, preco)
VALUES
('Notebook', 3000.00),
('Smartphone', 1500.00),
('Teclado', 200.00);

INSERT INTO vendas (id_produto, data_venda, quantidade)
VALUES
(1, '2025-04-15', 2),
(2, '2025-04-16', 1),
(3, '2025-04-17', 5);


SELECT p.nome AS produto, v.data_venda, v.quantidade, (p.preco * v.quantidade) AS preco_total
FROM vendas v
JOiN produtos p ON v.id_produto = p.id;