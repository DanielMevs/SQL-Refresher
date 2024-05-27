-- Adding columns
ALTER TABLE table_name
ADD COLUMN new_col TYPE;

-- Removing Columns
ALTER TABLE table_name
DROP COLUMN col_name;


-- Alter constraints
-- Set a default value
ALTER TABLE table_name
ALTER COLUMN col_name
SET DEFAULT value;

-- Drop a default value
ALTER TABLE table_name
ALTER COLUMN col_name
DROP DEFAULT value;

-- Set a not null constraint
ALTER TABLE table_name
ALTER COLUMN col_name
SET NOT NULL;

-- Drop a not null constraint
ALTER TABLE table_name
ALTER COLUMN col_name
DROP NOT NULL;

-- Add a general constraint
ALTER TABLE table_name
ALTER COLUMN col_name
ADD CONSTRAINT constraint_name;

CREATE TABLE information (
	info_id SERIAL PRIMARY KEY,
	title VARCHAR(500) NOT NULL,
	person VARCHAR(50) NOT NULL UNIQUE
);

ALTER TABLE information
RENAME TO new_info;

ALTER TABLE new_info
RENAME COLUMN person TO people;

ALTER TABLE new_info
ALTER COLUMN people DROP NOT NULL;

INSERT INTO new_info(title)
VALUES ('SOME NEW TITLE');