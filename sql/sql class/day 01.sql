-------------------------------------------------
-- Access MySQL client through the terminal
-------------------------------------------------
mysql -u root -p

-------------------------------------------------
-- Show all databases
-------------------------------------------------
SHOW DATABASES;

-------------------------------------------------
-- Create a database
-------------------------------------------------
CREATE DATABASE kade;

-------------------------------------------------
-- Select/choose the database
-------------------------------------------------
USE kade;

-------------------------------------------------
-- Create a table 'customer'
-------------------------------------------------
CREATE TABLE customer (
    id INT,
    name VARCHAR(25),
    address VARCHAR(50)
);

-------------------------------------------------
-- Check 'customer' table inside the 'kade' database
-------------------------------------------------
SHOW TABLES;

-------------------------------------------------
-- Get a description of the 'customer' table
-------------------------------------------------
DESC customer;

-------------------------------------------------
-- Insert values into 'customer' table
-------------------------------------------------
INSERT INTO customer VALUES (1001, 'saman', 'panadura');

-------------------------------------------------
-- View all data in the 'customer' table
-------------------------------------------------
SELECT * FROM customer;

-------------------------------------------------
-- Delete the 'customer' table
-------------------------------------------------
DROP TABLE customer;

-------------------------------------------------
-- Delete the 'kade' database
-------------------------------------------------
DROP DATABASE kade;
