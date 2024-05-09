-- 1. We are launching a platinum service for our
-- most loyal customers.

-- We will assign platinum status to customers
-- that have had 40 or ore transaction payments.

-- What customer_ids are eligible for platinum
-- status?

SELECT customer_id, COUNT(amount)
FROM payment
GROUP BY customer_id
HAVING COUNT(amount) >= 40;


-- 2. What are the customer ids of 
-- customers who have spent more 
-- than $100 in payment transactions
-- with staff_id member 2?

SELECT customer_id, SUM(amount)
FROM payment
WHERE staff_id=2
GROUP BY customer_id
HAVING SUM(amount) > 100;
