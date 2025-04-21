SELECT 
    ci.city AS "Nome da cidade",
    AVG(p.amount) AS "Média de pagamento"
FROM address a 
INNER JOIN city ci ON a.city_id = ci.city_id
INNER JOIN customer c ON a.address_id = c.address_id
INNER JOIN payment p ON c.customer_id = p.customer_id
GROUP BY ci.city
ORDER BY AVG(p.amount) DESC
LIMIT 10;
