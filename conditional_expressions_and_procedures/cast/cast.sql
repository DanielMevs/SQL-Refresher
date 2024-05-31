-- Syntax for Cast function
SELECT CAST('5' AS INTEGER);


-- PostgreSQL CAST operator
SELECT '5'::INTEGER;


SELECT CAST(date AS TIMESTAMP)
FROM table;


SELECT CHAR_LENGTH(CAST(inventory_id AS VARCHAR)) FROM rental;