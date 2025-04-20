CREATE TABLE pessoas (
    id SERIAL PRIMARY KEY,
    primeiro_nome VARCHAR(20),
    segundo_nome VARCHAR(20),
	ultimo_nome VARCHAR(20)
);

INSERT INTO pessoas (primeiro_nome, segundo_nome, ultimo_nome)
VALUES
('José', 'Satiro', 'de Lima');

SELECT
    CONCAT(p.primeiro_nome, ' ', p.segundo_nome, ' ', p.ultimo_nome) AS "Nome completo"
FROM pessoas p