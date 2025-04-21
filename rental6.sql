SELECT
    s.store_id AS "ID da loja",
    a.address AS "Endereço",
    c.city AS "Cidade"
FROM address a
INNER JOIN store s ON a.address_id = s.address_id
INNER JOIN city c ON a.city_id = c.city_id
LIMIT 10;