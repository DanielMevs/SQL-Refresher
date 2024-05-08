SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

SELECT customer_id, COUNT(amount) FROM payment
GROUP BY customer_id
ORDER BY COUNT(amount) DESC;

SELECT customer_id, staff_id, SUM(amount) FROM payment
GROUP BY staff_id, customer_id
ORDER BY customer_id;


SELECT staff_id, customer_id, SUM(amount) FROM payment
GROUP BY staff_id, customer_id
ORDER BY staff_id, customer_id;

SELECT DATE(payment_date), SUM(amount) FROM payment
GROUP BY DATE(payment_date)
ORDER BY SUM(amount) DESC;