-- General syntax
INSERT INTO table (column1, column2, ...)
VALUES 
    (value1, value2, ...),
    (value1, value2, ...), ...;

-- General syntax for inserting
-- values from another table
INSERT INTO table(column1, column2, ...)
SELECT column1, column2, ...
FROM another_table
WHERE condition;

INSERT INTO account(username, password, email, created_on)
VALUES
('Jose', 'password', 'jose@mail.com', CURRENT_TIMESTAMP)


INSERT INTO job(job_name)
VALUES 
('Astronaut')


INSERT INTO job(job_name)
VALUES 
('President')   


INSERT INTO account_job(user_id, job_id, hire_date)
VALUES
(1, 1, CURRENT_TIMESTAMP)