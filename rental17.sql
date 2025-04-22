SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS "Nome do cliente",
    a.phone AS "número de telefone",
    a.address AS "Endereço",
    ci.city AS "Nome cidade",
    co.country AS "País"
FROM customer c 
INNER JOIN address a ON c.address_id = a.address_id
INNER JOIN city ci ON a.city_id = ci.city_id
INNER JOIN country co ON ci.country_id = co.country_id
