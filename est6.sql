CREATE TABLE moveis (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    categoria VARCHAR(25)
);

CREATE TABLE fornecedores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    categoria VARCHAR(25)
);

INSERT INTO moveis (nome, categoria)
VALUES 
('Mesa de Jantar', 'cozinha'),
('Sofá Conforto', 'sala'),
('Cadeira de Escritório', 'trabalho'),
('Armário Multiuso', 'cozinha');

INSERT INTO fornecedores (nome, categoria)
VALUES
('Móveis Cozinha Brasil', 'cozinha'),
('Decoração de Salas Ltda', 'sala'),
('Móveis Escritórios Top', 'trabalho');

SELECT n.nome AS nome_movel, f.nome AS nome_fornecedor
FROM moveis n
JOIN fornecedores f ON n.categoria = f.categoria