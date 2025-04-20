CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(25),
    preco NUMERIC(10,2)
);

CREATE TABLE clientes_produtos (
    id_cliente INT REFERENCES clientes(id),
    id_produto INT REFERENCES produtos(id),
    quantidade INT 
);

INSERT INTO clientes (nome)
VALUES
('Marcos Oliveira'),
('Clara Santos'),
('João Pereira');

INSERT INTO produtos (nome, preco)
VALUES
('Notebook', 3000.00),
('Smartphone', 1500.00),
('Televisão', 2500.00);

INSERT INTO clientes_produtos (id_cliente, id_produto, quantidade)
VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 2);

SELECT 
    c.nome AS Nome_Cliente,
    p.nome AS Produto,
    cp.quantidade AS Quantidade_comprada,
    (cp.quantidade * p.preco) AS Valor_total
FROM clientes_produtos cp
JOIN clientes c ON cp.id_cliente = c.id
JOIN produtos p ON cp.id_produto = p.id