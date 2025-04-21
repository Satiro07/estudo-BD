SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS "Nome do cliente",
    AVG(p.amount) AS "Média de gasto"
FROM customer c 
INNER JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.first_name, c.last_name
ORDER BY AVG(p.amount) DESC
LIMIT 10;

