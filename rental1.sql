SELECT
    f.title AS "Nome filme",
	f.description AS "Descrição",
	c.name AS "Categoria"
FROM film_category fc
JOIN film f ON fc.film_id = f.film_id
JOIN category c ON fc.category_id = c.category_id
LIMIT 5;