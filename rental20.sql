SELECT 
    f.title AS "Nome do filme",
    COUNT(c.name) AS "Quantidade de categorias"
FROM film_category fc 
INNER JOIN film f ON fc.film_id = f.film_id
INNER JOIN category c ON fc.category_id = c.category_id
GROUP BY f.title