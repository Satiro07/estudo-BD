-- Encontre os 5 filmes mais alugados.


SELECT
    f.title AS "Nome do filme",
    COUNT(p.amount) AS "Quantidade de pagamentos"
FROM film f 
INNER JOIN inventory i ON f.film_id = i.film_id
INNER JOIN rental r ON i.inventory_id = r.inventory_id
INNER JOIN payment p ON r.rental_id = p.rental_id
LIMIT 10;