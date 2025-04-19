CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    id_cliente INT REFERENCES clientes(id),
    valor NUMERIC(10,2),
    data_pedido DATE
);

INSERT INTO clientes(nome, email)
VALUES
('João Silva', 'joao.silva@email.com'),
('Maria Oliveira', 'maria.oliveira@email.com'),
('Carlos Pereira', 'carlos.pereira@email.com');

INSERT INTO pedidos(id_cliente, valor, data_pedido)
VALUES
(1, 150.00, '2025-04-10'),
(2, 300.00, '2025-04-12'),
(3, 200.00, '2025-04-15');

SELECT 
    c.nome AS nome_cliente, 
    c.email AS email, 
    p.valor AS valor_pedido,
    p.data_pedido AS data_pedido
FROM pedidos p
JOIN clientes c ON p.id_cliente = c.id