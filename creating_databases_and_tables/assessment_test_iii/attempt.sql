CREATE TABLE students(
	student_id SERIAL PRIMARY KEY,
	first_name VARCHAR(70),
	last_name VARCHAR(70),
	homeroom_number INTEGER,
	phone VARCHAR(15) NOT NULL UNIQUE,
	email VARCHAR(70) UNIQUE,
	graduation_year INTEGER
);


CREATE TABLE teachers(
	teacher_id SERIAL PRIMARY KEY,
	first_name VARCHAR(70),
	last_name VARCHAR(70),
	homeroom_number INTEGER,
	department VARCHAR(70),
	email VARCHAR(70) UNIQUE,
	phone VARCHAR(15) UNIQUE
);


INSERT INTO students(first_name, last_name, phone, graduation_year, homeroom_number)
VALUES
('Mark', 'Watney', '777-555-1234', 2035, 5);


INSERT INTO teachers(first_name, last_name, homeroom_number, department, email, phone)
VALUES
('Jonas', 'Salk', 5, 'Biology', 'jsalk@school.org', '777-555-4321');


ALTER TABLE students
ALTER COLUMN first_name
SET NOT NULL;

ALTER TABLE students
ALTER COLUMN last_name
SET NOT NULL;

ALTER TABLE teachers
ALTER COLUMN first_name
SET NOT NULL;

ALTER TABLE teachers
ALTER COLUMN last_name
SET NOT NULL;

