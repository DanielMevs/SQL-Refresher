-- SELECT column AS new_name
-- FROM table;

-- SELECT SUM(column) AS new_name
-- FROM table;

SELECT amount AS rental_price
FROM payment;

SELECT SUM(amount) AS net_revenue
FROM payment;

SELECT COUNT(*) AS num_transactions
FROM payment;

SELECT customer_id, SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id;

-- You cannot use an alias in a WHERE 
-- or HAVING clause

SELECT customer_id, SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;

SELECT customer_id, amount AS new_name
FROM payment
WHERE amount > 2;