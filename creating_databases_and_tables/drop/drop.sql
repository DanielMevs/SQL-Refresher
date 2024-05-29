-- General syntax
ALTER TABLE table_name
DROP COLUMN col_name;

-- Remove all dependencies
ALTER TABLE table_name
DROP COLUMN col_name CASCADE;

-- Check for existence to avoid error
ALTER TABLE table_name
DROP COLUMN IF EXISTS col_name;

-- Drop multiple columns
ALTER TABLE table_name
DROP COLUMN col_one,
DROP COLUMN col_two;
