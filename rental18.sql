SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS "Nome do cliente",
    MAX(p.amount) AS "Maior pagamento",
    a.address AS "Endereço da loja"
FROM customer c 
INNER JOIN payment p ON c.customer_id = p.customer_id
INNER JOIN staff st ON p.staff_id = st.staff_id
INNER JOIN address a ON st.address_id = aa.address_id
GROUP BY c.first_name, c.last_name, s.store_id
ORDER BY MAX(p.amount) DESC;