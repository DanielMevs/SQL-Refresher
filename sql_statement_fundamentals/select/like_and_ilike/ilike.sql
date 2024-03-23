--  ILIKE is case-insensitive

SELECT COUNT(*) FROM customer
WHERE first_name ILIKE 'j%' AND last_name ILIKE 's%';