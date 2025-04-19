CREATE TABLE departamentos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE funcionarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    id_departamento INT REFERENCES departamentos(id)
);

INSERT INTO departamentos (nome)
VALUES
('Recursos Humanos'),
('TI'),
('Vendas');

INSERT INTO funcionarios (nome, id_departamento)
VALUES
('Ana Souza', 1),
('Carlos Souza', 2),
('Maria Oliveira', 3),
('João Pereira', NULL);

SELECT 
    f.nome AS Nome_funcionario,
    d.nome AS Nome_departamento
FROM funcionarios f
LEFT JOIN departamentos d ON f.id_departamento = d.id