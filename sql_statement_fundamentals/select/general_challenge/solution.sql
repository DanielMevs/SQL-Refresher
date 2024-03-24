-- How many actors have a first name 
-- that start with a 'P'
-- SELECT COUNT(*) FROM actor
-- WHERE first_name LIKE 'P%';

-- How many unique districts are 
-- our customers from?
-- SELECT COUNT(DISTINCT(district))
-- FROM address;

-- How many films have a rating of
-- R and a replacement cost between
-- $5 and %15?
-- SELECT COUNT(*) FROM film
-- WHERE replacement_cost BETWEEN 5.00 AND 15.00
-- AND rating = 'R';

-- How many films have the word 'Truman'
-- somewhere in the title?
SELECT COUNT(*) FROM film
WHERE title LIKE '%Truman%';
