-- General syntax
UPDATE table
SET column1 = value1,
column2 = value2, ...
WHERE
condition;


-- If there is a null value in
-- the last login, update those
-- values to be the current timestamp
UPDATE account
SET last_login = CURRENT_TIMESTAMP
WHERE last_login IS NULL;


-- Or reset everything without
-- a where condition
UPDATE account
SET last_login = CURRENT_TIMESTAMP;


-- Set based on another column
UPDATE account
SET last_login = created_on;


-- Using another table's values
-- (UPDATE join)
UPDATE TableA
SET original_col = TableB.new_col
FROM tableB
WHERE tableA.id = TableB;


-- Return affected rows
UPDATE account
SET last_login = created_on
RETURNING account_id, last_login;


-- Update join
UPDATE account_job
SET hire_date = account.created_on
FROM account
WHERE account_job.user_id = account.user_id;


-- Using the RETURNING keyword
-- to select and verify the
-- affected columns
UPDATE account
SET last_login = CURRENT_TIMESTAMP
RETURNING email, created_on, last_login

