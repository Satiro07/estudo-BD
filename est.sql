CREATE TABLE funcionarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    cargo VARCHAR(50),
    data_nascimento DATE,
    data_registro TIMESTAMP
)

INSERT INTO funcionarios (nome, cargo, data_nascimento, data_registro)
VALUES ('Maria', 'chefe', '2008-04-05', NOW());