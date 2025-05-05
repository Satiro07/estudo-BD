-- Liste os nomes dos clientes que moram no Brasil.

SELECT 
	CONCAT(c.last_name, ' ', c.first_name) AS "Nome cliente",
	co.country AS "País"
FROM customer c
INNER JOIN address a ON c.address_id = a.address_id
INNER JOIN city ci ON a.city_id = ci.city_id
INNER JOIN country co ON ci.country_id = co.country_id
WHERE co.country = 'Brazil'