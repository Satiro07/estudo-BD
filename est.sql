CREATE TABLE funcionarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    cargo VARCHAR(50),
    data_nascimento DATE,
    data_registro TIMESTAMP
)