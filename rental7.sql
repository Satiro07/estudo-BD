SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS "Nome do cliente",
    CONCAT(s.first_name, ' ', s.last_name) AS "Nome do funcionário"
FROM payment p
INNER JOIN customer c ON p.customer_id = c.customer_id
INNER JOIN staff s ON p.staff_id = s.staff_id
LIMIT 10;