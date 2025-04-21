SELECT
    f.title AS "Nome filme",
    c.name AS "Categoria",
    COUNT(r.rental_id) AS "TOTAL"
FROM film_category fc
JOIN film f ON fc.film_id = f.film_id
JOIN category c ON fc.category_id = c.category_id
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.title, c.name
ORDER BY c.name, COUNT(r.rental_id) DESC
LIMIT 6;