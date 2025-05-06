-- Liste todos os pagamentos feitos por um cliente específico.

SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS "Nome do cliente",
    p.amount AS "Pagamento",
    p.payment_date AS "Data do pagamento"
FROM customer c
INNER JOIN payment p ON c.customer_id = p.customer_id