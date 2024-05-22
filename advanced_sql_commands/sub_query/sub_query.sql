-- Get students with above
-- average grades
SELECT student, grade
FROM test_scores
WHERE grade > (SELECT AVG(grade)
FROM test_scores);


-- Get the grades of 
-- honor roll students.
SELECT student, grade
FROM test_scores
WHERE student IN
(SELECT student 
FROM honor_roll_table)


-- Exists syntax
-- Returns true or false
SELECT column_name
FROM table_name
WHERE EXISTS 
(SELECT column_name FROM 
table_name WHERE condition);


-- Get all the film IDs that
-- have a return date between
-- May 29 and May 30 2005
SELECT inventory.film_id
FROM rental
INNER JOIN inventory 
ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN
'2005-05-29' AND '2005-05-30';


-- We can use the output of the last
-- query to specify a list of IDs
-- we want to use to filter
SELECT film_id, title
FROM film
WHERE film_id IN
(SELECT inventory.film_id
FROM rental
INNER JOIN inventory 
ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN
'2005-05-29' AND '2005-05-30')
ORDER BY film_id;


-- Get customers who have at least one
-- payment greater than $11
SELECT first_name, last_name
FROM customer AS c
WHERE EXISTS
(SELECT * FROM payment AS p
WHERE p.customer_id = c.customer_id
AND amount > 11);