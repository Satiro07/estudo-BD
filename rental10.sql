SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS "Nome do cliente",
    COUNT(c.customer_id) AS "Vezes"
FROM customer c 
INNER JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.first_name, c.last_name
ORDER BY COUNT(c.customer_id) DESC
LIMIT 10;
