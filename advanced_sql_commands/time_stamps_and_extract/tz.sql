-- To show what timezone you're 
-- working with
SHOW TIMEZONE;


-- To get time-stamp information
-- for right now
SELECT NOW()


-- To get time-stamp information
-- in string format
SELECT TIMEOFDAY()


-- To get the current date
SELECT CURRENT_DATE


-- To extract or obtain a 
-- sub-component of a date value
EXTRACT(YEAR FROM date_col)


-- To calculate the current age
-- of a given timestamp
AGE(date_col)


-- To convert data types to text
TO_CHAR(date_col, 'mm-dd-yyyy')


SELECT EXTRACT(YEAR FROM payment_date)
FROM payment;

SELECT EXTRACT(MONTH FROM payment_date) AS pay_month
FROM payment;


SELECT TO_CHAR(payment_date, 'MONTH-YYYY')
FROM payment;

SELECT TO_CHAR(payment_date, 'mon/dd/YYYY')
FROM payment;


SELECT TO_CHAR(payment_date, 'MM/dd/YYYY')
FROM payment;

SELECT TO_CHAR(payment_date, 'MM-dd-YYYY')
FROM payment;


