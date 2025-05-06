-- Calcule a receita total por loja.

SELECT 
    SUM(p.amount) AS "Total receita",
    s.store_id AS "ID da loja"
FROM staff st 
INNER JOIN payment p ON st.staff_id = p.staff_id
INNER JOIN store s ON st.store_id = s.store_id
GROUP BY s.store_id

