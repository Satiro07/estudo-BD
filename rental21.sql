SELECT 
    c.name AS "Nome daa categoria",
    COUNT(f.film_id) AS "Quantidade ded filmes"
FROM film_category fc 
INNER JOIN category c ON fc.category_id = c.category_id
INNER JOIN film f ON fc.film_id = f.film_id