SELECT 
    SUM(p.amount) AS "Quantia"
FROM payment p
GROUP BY p.amount
ORDER BY SUM(p.amount) DESC
LIMIT 5;