-- Descubra quantos filmes há por categoria.

SELECT
    c.name AS "Nome da categoria",
    COUNT(fc.film_id) AS "Quantidade"
FROM film_category fc 
INNER JOIN category c ON fc.category_id = c.category_id
INNER JOIN film f ON fc.film_id = f.film_id
GROUP BY c.name