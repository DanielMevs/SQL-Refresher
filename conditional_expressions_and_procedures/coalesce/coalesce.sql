-- Take an unlimited # of arguments 
-- returns the first non-null value
-- else null if every argument null
SELECT COALESCE(1, 2)
SELECT COALESCE(NULL, 2, 4)

-- Useful when querying a table
-- that contains null values and
-- substituting it with another
-- value
SELECT item, (price - COALESCE(discount, 0))
AS final FROM table;