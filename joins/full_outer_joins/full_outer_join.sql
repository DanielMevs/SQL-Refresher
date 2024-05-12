SELECT * FROM TableB
FULL OUTER JOIN TableA
ON TableA.col_match = TableB.col_match;


-- Get rows from both tables
-- If values from one table do not
-- exist in another, those values
-- are substituted with null
SELECT * FROM Registrations
FULL OUTER JOIN Logins
ON Registrations.name = Logins.name;


-- FULL OUTER JOIN with WHERE
-- Get rows unique to either table
-- (rows not found in both tables)
-- Opposite of INNER JOIN
SELECT * FROM TableA
FULL OUTER JOIN TableB
ON TableA.col_match = TableB.col_match
WHERE TableA.id IS null OR
TableB.id IS null;

SELECT * FROM Registrations FULL OUTER
JOIN Logins
ON Registrations.name = Logins.name
WHERE Registrations.reg_id IS null OR
Logins.log_id IS null;

SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS null
OR payment.payment_id IS null;