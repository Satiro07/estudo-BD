SELECT
    s.staff_id AS "ID",
    CONCAT(s.first_name, ' ', s.last_name) AS "Nome"
FROM staff s
LIMIT 5;