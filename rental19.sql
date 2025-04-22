SELECT 
    f.title AS "Título",
    c.name AS "Categoria",
    l.name AS "Linguegem"
FROM film_category fc
INNER JOIN film f ON fc.film_id = f.film_id
INNER JOIN category c ON fc.category_id = c.category_id
INNER JOIN language l ON f.language_id = l.language_id
WHERE l.name = 'English'
