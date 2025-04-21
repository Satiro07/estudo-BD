SELECT 
    c.name AS "Categoria",
    COUNT(r.rental_id) AS "Quantidade"
FROM film_category fc 
JOIN category c ON fc.category_id = c.category_id
JOIN inventory i ON fc.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY c.name
ORDER BY COUNT(r.rental_id) DESC
LIMIT 5;