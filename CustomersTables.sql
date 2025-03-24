-- Active: 1742380285587@@127.0.0.1@5432@bookstore_db
-- Create customers table
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    joined_date DATE DEFAULT CURRENT_DATE
);

INSERT INTO
    customers (name, email)
VALUES
    -- ('John Doe', 'johndoe@example.com'),
    -- ('Jane Smith', 'janesmith@example.com');
    -- ('test', 'test@example.com');

SELECT
    *
FROM
    customers;




