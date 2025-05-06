-- Encontre os 5 filmes mais alugados.


SELECT
    f.title AS "Nome do filme",
    COUNT(p.amount) AS "Quantidade de pagamentos"
FROM film f 
INNER JOIN inventory i ON f.film_id = i.film_id
INNER JOIN rental r ON i.inventory_id = r.inventory_id
INNER JOIN payment p ON r.rental_id = p.rental_id
GROUP BY f.title
ORDER BY COUNT(p.amount) DESC
LIMIT 5;

-- desafio extra

-- 5 filmes com mais pagamentos, mas apenas entre os clientes da cidade de "Rio de Janeiro"


SELECT
    f.title AS "Nome do filme",
    COUNT(p.amount) AS "Quantidade de pagamentos",
    ci.city AS "Nome da cidade"
FROM film f 
INNER JOIN inventory i ON f.film_id = i.film_id
INNER JOIN rental r ON i.inventory_id = r.inventory_id
INNER JOIN payment p ON r.rental_id = p.rental_id
INNER JOIN customer c ON p.customer_id = c.customer_id
INNER JOIN address a ON c.address_id = a.address_id
INNER JOIN city ci ON a.city_id = ci.city_id
WHERE ci.city = 'Rio de Janeiro'
GROUP BY f.title, ci.city
ORDER BY COUNT(p.amount) DESC;
LIMIT 5;
