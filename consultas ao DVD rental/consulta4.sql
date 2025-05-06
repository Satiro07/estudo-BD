-- Mostre o nome dos atores que atuaram no filme "ACADEMY DINOSAUR".
SELECT 
    CONCAT(a.first_name, ' ', a.last_name) AS "Nome do ator",
    f.title AS "Nome do filme"
FROM film_actor fa
INNER JOIN actor a ON fa.actor_id = a.actor_id
INNER JOIN film f ON fa.film_id = f.film_id
WHERE f.title = 'Academy Dinosaur'