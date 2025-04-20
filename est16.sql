CREATE TABLE empregados (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    cargo VARCHAR(25)
);

CREATE TABLE projetos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    prazo DATE
);

CREATE TABLE empregados_projetos (
    id_empregado INT REFERENCES empregados(id),
    id_projeto INT REFERENCES projetos(id),
    horas_trabalhadas INT
);

INSERT INTO empregados (nome, cargo)
VALUES
('Lucas Pereira', 'Desenvolvedor'),
('Maria Oliveira', 'Gerente'), 
('João Silva', 'Analista');

INSERT INTO projetos (nome, prazo)
VALUES
('Site Corporativo', '2025-06-15'),
('Aplicativo Móvel', '2025-12-01'),
('Plataforma de Dados', '2026-03-30');

INSERT INTO empregados_projetos (id_empregado, id_projeto, horas_trabalhadas)
VALUES
(1,1, 3),
(2,2, 7),
(2,2, 5);

SELECT
    e.nome AS Nome_do_Empregado,
    p.nome AS Nome_do_Projeto,
    ep.horas_trabalhadas AS Horas_Trabalhadas,
    p.prazo AS Prazo_de_Entrega
FROM empregados_projetos ep
JOIN empregados e ON ep.id_empregado = e.id
JOIN projetos p ON ep.id_projeto = p.id