-- All names that begin with an 'A'
-- WHERE name LIKE 'A%';

-- All names that end with an 'a'
-- WHERE NAME LIKE '%a'

-- Use _ to replace a single letter
-- WHERE title LIKE 'Mission Impossible _'


-- SELECT * FROM customer
-- WHERE first_name LIKE 'J%';

-- SELECT COUNT(*) FROM customer
-- WHERE first_name LIKE 'J%' AND last_name LIKE 'S%';

-- Select where there is her somewhere in the name.
-- SELECT * FROM customer
-- WHERE first_name LIKE '%her%';

-- Select where only one character is allowed before 'her'
-- SELECT * FROM customer
-- WHERE first_name LIKE '_her%';


-- SELECT * FROM customer
-- WHERE first_name LIKE 'A%' AND last_name NOT LIKE 'B%'
-- ORDER BY last_name;