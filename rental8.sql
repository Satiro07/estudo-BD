SELECT DISTINCT
    CONCAT(c.first_name, ' ', c.last_name) AS "Nome do cliente",
    f.title AS "Nome do filme"
FROM inventory i
INNER JOIN film f ON i.film_id = f.film_id
INNER JOIN rental r ON i.inventory_id = r.inventory_id
INNER JOIN customer c ON r.customer_id = c.customer_id
LIMIT 10;