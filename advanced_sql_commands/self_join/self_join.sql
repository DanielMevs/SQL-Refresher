-- Basic syntax
SELECT tableA.col, tableB.col
FROM table AS tableA
JOIN table AS tableB ON
tableA.some_col = tableB.other_col

SELECT emp.name, report.name AS rep
FROM employees AS emp
JOIN employees AS report ON
emp.emp_id = report.report_id

SELECT first.title, second.title, first.length
FROM film AS first
JOIN film as second
ON first.film_id != second.film_id
AND first.length = second.length
WHERE first.length = 117;