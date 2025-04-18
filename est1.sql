CREATE TABLE funcionarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    data_nascimento DATE
);

CREATE TABLE projetos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    data_inicio DATE,
    status VARCHAR(20)
);

CREATE TABLE funcionarios_projetos (
    id SERIAL PRIMARY KEY,
    id_funcionario INT REFERENCES funcionarios(id),
    id_projeto INT REFERENCES projetos(id)
);

INSERT INTO projetos (nome, descricao, data_inicio, status)
VALUES
('Projeto A', 'Um projeto ativo', '2025-04-17', 'ativo'),
('Projeto B', 'Um projeto pendende', '2025-01-02', 'pendente'),
('Projeto C', 'Um projeto ativo', '2024-05-25', 'ativo');

SELECT * FROM projetos;