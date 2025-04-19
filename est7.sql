CREATE TABLE carros (
    id SERIAL PRIMARY KEY,
    modelo VARCHAR(50),
    categoria VARCHAR(50)
);

CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE aluguel (
    id SERIAL PRIMARY KEY,
    id_cliente INT REFERENCES clientes(id),
    id_carro INT REFERENCES carros(id),
    data_aluguel DATE,
    data_devolucao DATE
);

INSERT INTO carros (modelo, categoria)
VALUES
('Fiat Uno', 'econômico'),
('Toyota Corolla', 'luxo'),
('Honda Civic', 'luxo');

INSERT INTO clientes (nome)
VALUES
('João Silva'),
('Maria Oliveira'),
('Carloes Pereira');

INSERT INTO aluguel (id_cliente, id_carro, data_aluguel, data_devolucao)
VALUES
(1, 1, '2025-04-15', '2025-04-20'),
(2,2, '2025-04-12', '2025-04-18'),
(3,3, '2025-04-10', '2025-04-15');


SELECT n.nome AS nome_cliente, m.modelo AS modelo_carro, d.data_aluguel AS data_aluguel, d.data_devolucao AS data_devolucao
FROM aluguel d
JOIN clientes n ON d.id_cliente = n.id
JOIN carros m ON d.id_carro = m.id