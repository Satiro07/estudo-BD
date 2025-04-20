CREATE TABLE filmes (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(50),
    ano INT,
    classificacao NUMERIC(2,1)   
);

INSERT INTO filmes (titulo, ano, classificacao)
VALUES
('Avatar', 2009, 8.3),
('Matrix', 1999, 8.7),
('O Senhor dos Anéis', 2001, 9.5),
('Titanic', 1997, 8.8),
('Interestelar', 2014, 9.0);


SELECT 
	f.titulo AS titulo, 
	f.classificacao AS classificação
FROM filmes f
ORDER BY f.classificacao DESC;

CREATE TABLE filmes (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(50),
    ano INT,
    classificacao NUMERIC(2,1)   
);

INSERT INTO filmes (titulo, ano, classificacao)
VALUES
('Avatar', 2009, 8.3),
('Matrix', 1999, 8.7),
('O Senhor dos Anéis', 2001, 9.5),
('Titanic', 1997, 8.8),
('Interestelar', 2014, 9.0);


SELECT 
	f.titulo AS titulo, 
	f.classificacao AS classificação
FROM filmes f
ORDER BY f.classificacao DESC;


SELECT 
	f.titulo AS titulo, 
	f.ano AS ano
FROM filmes f
ORDER BY f.ano;