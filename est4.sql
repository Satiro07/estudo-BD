CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    categoria VARCHAR(25),
    preco NUMERIC(10,2)
);

CREATE TABLE movimentacao(
    id SERIAL PRIMARY KEY,
    id_produto INT REFERENCES produtos(id),
    tipo VARCHAR(25),
    quantidade INT,
    data_movimentacao DATE
);

INSERT INTO produtos (nome, categoria, preco)
VALUES
('Notebook', 'Eletrônicos', 3000.00),
('Camiseta', 'Roupas', 50.00),
('Liquidificador', 'Eletrodomésticos', 200.00)

INSERT INTO movimentacao (id_produto, tipo, quantidade, data_movimentacao)
VALUES
(1, 'Entrada', 10, '2025-04-10'),
(2, 'Saída', 3, '2025-04-12'),
(3, 'Entrada', 5, '2025-04-13')

SELECT p.nome AS produto, m.tipo AS Entrada, m.tipo AS Saídas, (m.Entrada - m.Saídas) AS Saldo Final
FROM produtos p
JOIN movimentacao m ON m.id_produto = p.id