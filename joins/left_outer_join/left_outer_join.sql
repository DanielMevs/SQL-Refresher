SELECT * FROM TableA
LEFT OUTER JOIN TableB
ON TableA.col_match = TableB.col_match;

SELECT * FROM Registrations
LEFT OUTER JOIN Logins
ON Registrations.name = Logins.name;


-- What if we only want entries from
-- table A?

SELECT * FROM TableA
LEFT OUTER JOIN TableB
ON TableA.col_match = TableB.col_match
WHERE TableB.id IS null;


SELECT * FROM Registrations
LEFT OUTER JOIN Logins
ON Registrations.name = Logins.name
WHERE Logins.log_id IS null;


-- Find the films that are either
-- only in the film table or 
-- are both in the film tables
-- and inventory table

SELECT film.film_id, title, inventory_id, store_id
FROM film
LEFT OUTER JOIN inventory ON
inventory.film_id = film.film_id;


-- To get films we don't have in 
-- inventory
SELECT film.film_id, title, inventory_id, store_id
FROM film
LEFT OUTER JOIN inventory ON
inventory.film_id = film.film_id
WHERE inventory.film_id IS null;