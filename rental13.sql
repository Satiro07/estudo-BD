SELECT 
    CONCAT(s.first_name, ' ', s.last_name) AS "Nome do funcionário",
    AVG(p.amount) AS "Média de pagamento"
FROM payment p 
INNER JOIN staff s ON p.staff_id = s.staff_id
GROUP BY s.first_name, s.last_name
ORDER BY AVG(p.amount) DESC;