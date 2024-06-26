-- General Syntax
CREATE TABLE table_name(
    column_name TYPE column_constraint,
    column_constraint TYPE column_constraint,
    table_constraint table_constraint
) INHERITS existing_table_name;

-- Common Simple Syntax
CREATE TABLE table_name (
    column_name TYPE column_constraint,
    column_name TYPE column_constraint,
);

-- Example Syntax
CREATE TABLE players(
    player_id SERIAL PRIMARY KEY,
    age SMALLINT NOT NULL
)

CREATE TABLE account(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) UNIQUE NOT NULL,
	password VARCHAR(50) NOT NULL,
	email VARCHAR(250) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL,
	last_login TIMESTAMP
)

CREATE TABLE job(
	job_id SERIAL PRIMARY KEY,
	job_name VARCHAR(200) UNIQUE NOT NULL
)

CREATE TABLE account_job(
	user_id INTEGER REFERENCES account(user_id),
	job_id INTEGER REFERENCES job(job_id),
	hire_date TIMESTAMP
)