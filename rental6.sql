SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS "Nome do cliente",
    ci.city AS "Nome da cidade"
FROM address a
INNER JOIN customer c ON a.address_id = c.address_id
INNER JOIN city ci ON a.city_id = ci.city_id
LIMIT 10;
