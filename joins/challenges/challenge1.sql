-- California sales tax laws have changed
-- and we need to alert out customers
-- to this through email.

-- What are the emails of the customers
-- who live in California?

SELECT email FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
WHERE address.district = 'California';

-- or

SELECT district, email FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
WHERE district = 'California';


-- A customer walks in and is a huge fan of
-- the actor "Nick Wahlberg" and wants to 
-- know which movies he is in.

-- Get a list of all the movies "Nick
-- Wahlberg" has been in.


SELECT title FROM film
WHERE film_id IN (
	SELECT film_id FROM film_actor
	WHERE actor_id = (
		SELECT actor_id FROM actor
		WHERE first_name = 'Nick'
		AND last_name = 'Wahlberg'
	)
);

-- or

SELECT f.title FROM film AS f
INNER JOIN film_acnjtor AS fa
ON f.film_id = fa.film_id
INNER JOIN actor AS a
ON a.actor_id = fa.actor_id
WHERE a.first_name ='Nick'
AND a.last_name = 'Wahlberg';