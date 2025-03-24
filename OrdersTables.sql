-- Active: 1742380285587@@127.0.0.1@5432@bookstore_db
-- Create orders table
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(id) ON DELETE CASCADE,
    book_id INT REFERENCES books(id) ON DELETE CASCADE,
    quantity INT CHECK (quantity > 0) NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO
    orders (customer_id, book_id, quantity)
VALUES
    -- (1, 1, 2),
    -- (2, 3, 1);
    -- (1, 4, 2)

SELECT
    *
FROM
    orders;


