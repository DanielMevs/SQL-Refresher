-- General syntax
SELECT * FROM view;

-- Create a view called customer_info
CREATE VIEW customer_info AS
SELECT first_name, last_name, address
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id;

-- Running the view
SELECT * FROM customer_info;

-- To change the underlying query
CREATE OR REPLACE VIEW customer_info AS
SELECT first_name, last_name, address, district
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id;

-- To drop a view if it exists
DROP VIEW IF EXISTS customer_info;

-- To change the name of a view
ALTER VIEW customer_info
RENAME TO c_info;