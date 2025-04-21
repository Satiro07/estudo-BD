SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS "Nome",
    SUM(p.amount) AS "Quantia gasta"
FROM customer c
INNER JOIN payment p ON c.customer_id = p.customer_id
GROUP BY CONCAT(c.first_name, ' ', c.last_name)
ORDER BY SUM(p.amount) DESC
LIMIT 5;
