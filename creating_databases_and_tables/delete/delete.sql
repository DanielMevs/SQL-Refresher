-- Example syntax
DELETE FROM table
WHERE row_id = 1;

-- Delete Join
DELETE FROM tableA
USING tableB
WHERE tableA.id = TableB.id;

-- Delete all rows from a table
DELETE FROM table;

-- Returing call to return
-- rows that were removed.
DELETE FROM job
WHERE job_name = 'Cowboy'
RETURNING job_id, job_name