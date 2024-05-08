SELECT company, SUM(sales)
FROM finance_table
GROUP BY company
HAVING SUM(sales) > 1000;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;

SELECT store_id, COUNT(customer_id)
FROM customer
GROUP BY store_id
HAVING COUNT(customer_id) > 300;
