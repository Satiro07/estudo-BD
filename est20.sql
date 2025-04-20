CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    id_cliente INT REFERENCES clientes(id),
    item VARCHAR(25),
    quantidade INT,
    valor_unitario NUMERIC(10,2),
    data_pedido DATE
);

INSERT INTO clientes (nome)
VALUES
('José Satiro'),
('Maria Clara'),
('Rayssa Mirella');

INSERT INTO pedidos (id_cliente, item, quantidade, valor_unitario, data_pedido)
VALUES
(1, 'pizza', 2, 30.00, '2025-04-01'),
(1, 'suco', 1, 10.00, '2025-04-01'),
(1, 'hambúrguer', 3, 20.00, '2025-04-02'),

(2, 'salada', 1, 15.00, '2025-04-02'),
(2, 'lasanha', 2, 35.00, '2025-04-03'),
(2, 'suco', 1, 10.00, '2025-04-03'),

(3, 'pizza', 3, 30.00, '2025-04-04'),
(3, 'salada', 1, 15.00, '2025-04-04');

-- quanto cada cliente gastou ao todo
SELECT
    c.nome AS "Nome Cliente",
    SUM(p.valor_unitario * p.quantidade) AS "Gasto Total"
FROM pedidos p
JOIN clientes c ON p.id_cliente = c.id
GROUP BY c.nome;

-- quantidade total de cada item vendido e faturamento
SELECT
    p.item AS "Nome do Item",
    SUM(p.quantidade) AS "Quantidade vendida",
    SUM(p.quantidade * valor_unitario) AS "Valor total gerado"
FROM pedidos p
GROUP BY p.item
ORDER BY SUM(p.quantidade) DESC;

-- quantidade de pedidos por dia
SELECT 
    COUNT(p.quantidade) AS "Quantidade de pedidos",
    p.data_pedido AS "Data"
FROM pedidos p
GROUP BY p.data_pedido
ORDER BY p.data_pedido;