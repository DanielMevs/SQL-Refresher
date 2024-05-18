-- During which months did payments 
-- occur?

-- Format your answer to return back
-- the full month name.

SELECT DISTINCT(TO_CHAR(payment_date, 'MONTH'))
FROM payment;

-- How many payments occured on a 
-- Monday?

SELECT COUNT(payment_date)
FROM payment
WHERE EXTRACT(DOW FROM payment_date) = 1;

