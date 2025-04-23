SELECT 
    CONCAT(a.first_name, ' ', a.last_name) AS "Nome ator",
    COUNT(c.name) AS "Quantidade"
FROM film_actor fa 
INNER JOIN actor a ON fa.actor_id = a.actor_id
INNER JOIN film f ON fa.film_id = f.film_id
INNER JOIN film_category fc ON f.film_id = fc.film_id
INNER JOIN category c ON fc.category_id = c.category_id
GROUP BY CONCAT(a.first_name, ' ', a.last_name)
ORDER BY COUNT(c.name) DESC
LIMIT 5;
