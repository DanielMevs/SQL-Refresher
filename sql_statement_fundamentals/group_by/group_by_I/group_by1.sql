SELECT company, division, SUM(sales)
FROM finance_table
GROUP BY company, division

SELECT company, division, SUM(sales)
FROM finance_table
WHERE division IN ('marketing', 'transport')
GROUP BY company, division

SELECT company, SUM(sales)
FROM finance_table
GROUP BY company
ORDER BY SUM(sales)
-- LIMIT 5