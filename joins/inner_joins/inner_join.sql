-- SELECT * FROM TableA
-- INNER JOIN TableB
-- ON TableA.col_match = TableB.col_match


-- SELECT * FROM Registrations
-- INNER JOIN Logins
-- ON Registrations.name = Logins.name


-- To remove duplicated columns
-- SELECT reg_id, Logins.name, log_id
-- FROM Registrations
-- INNER JOIN Logins
-- ON Registrations.name = Logins.name


SELECT payment_id, payment.customer_id, first_name
FROM payment
INNER JOIN customer
ON payment.customer_id= customer.customer_id;


SELECT payment_id, customer.customer_id, first_name
FROM customer
INNER JOIN payment
ON payment.customer_id= customer.customer_id;