SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS "Nome do cliente",
    SUM(p.amount) AS "Gasto total"
FROM customer c 
INNER JOIN payment p ON c.customer_id = p.customer_id
HAVING p.amount > (
    SELECT
        AVG(p.amount)
        FROM payment p
)
ORDER BY SUM(p.amount) DESC;