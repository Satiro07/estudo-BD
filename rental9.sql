SELECT
    f.title AS "Nome do filme",
    CONCAT(c.first_name, ' ', c.last_name)
FROM film f 
INNER JOIN inventory i ON f.film_id = i.film_id
INNER JOIN rental r ON i.inventory_id = r.inventory_id
INNER JOIN customer c ON r.customer_id = c.customer_id
WHERE CONCAT(c.first_name, ' ', c.last_name) = 'Mary Smith'