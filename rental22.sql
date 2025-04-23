SELECT 
    CONCAT(a.first_name, ' ', a.last_name) AS "Nome ator",
    COUNT(c.name) AS "Quantidade",
    co.country AS "País"
FROM film_actor fa 
INNER JOIN actor a ON fa.actor_id = a.actor_id
INNER JOIN film f ON fa.film_id = f.film_id
INNER JOIN film_category fc ON c.category_id = fc.category_id
GROUP BY CONCAT(a.first_name, ' ', a.last_name)
ORDER BY COUNT(c.name) AS "Quantidade" DESC
LIMIT 5;
