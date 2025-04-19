CREATE TABLE funcionarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    cargo VARCHAR(50),
    data_nascimento DATE,
    data_registro TIMESTAMP
);

INSERT INTO funcionarios (nome, cargo, data_nascimento, data_registro)
VALUES
('João Silva', 'gerente', '1987-05-15', NOW()),
('Maria Oliveira', 'chefe', '1990-02-10', NOW()),
('José Santos', 'assistente', '2000-08-22', NOW());

CREATE TABLE projetos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    data_inicio DATE,
    status VARCHAR(20)
);

INSERT INTO projetos (nome, descricao, data_inicio, status)
VALUES
('Projeto A', 'Um projeto ativo', '2025-01-01', 'ativo'),
('Projeto B', 'Um projeto pendende', '2025-02-01', 'pendente'),
('Projeto C', 'Um projeto ativo', '2024-05-25', 'ativo');

CREATE TABLE funcionarios_projetos (
    id SERIAL PRIMARY KEY,
    id_funcionario INT REFERENCES funcionarios(id),
    id_projeto INT REFERENCES projetos(id)
);

INSERT INTO funcionarios_projetos (id_funcionario, id_projeto)
VALUES
(1,1),
(2,2),
(3,3);


SELECT f.nome AS funcionario, p.nome AS projeto
FROM funcionarios_projetos fp
JOIN funcionarios f ON fp.id_funcionario = f.id
JOIN projetos p ON fp.id_projeto = p.id;


