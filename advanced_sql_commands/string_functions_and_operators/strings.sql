SELECT LENGTH(first_name) FROM customer;

-- No space
SELECT first_name || last_name
FROM customer;

-- With space
SELECT first_name || ' ' || last_name
FROM customer;

SELECT first_name || ' ' || last_name AS full_name
FROM customer;

SELECT upper(first_name) || ' ' || upper(last_name) AS full_name
FROM customer;

SELECT LOWER(LEFT(first_name, 1)) || LOWER(last_name) || '@gmail.com'
AS custom_email
FROM customer;m