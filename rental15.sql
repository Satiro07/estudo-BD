SELECT 
	f.title AS "Nome",
	f.length AS "Duração"	
FROM film f
-- apenas filmes com duração maior do que a duração média
WHERE f.length >(
	SELECT AVG(f.length)
	FROM film f
)
ORDER BY f.length DESC
LIMIT 10;