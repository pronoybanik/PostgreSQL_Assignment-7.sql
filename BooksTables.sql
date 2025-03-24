-- Active: 1742380285587@@127.0.0.1@5432@bookstore_db
-- Create books table
CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) CHECK (price >= 0) NOT NULL,
    stock INT NOT NULL,
    published_year INT CHECK (published_year >= 0)
);

INSERT INTO
    books (title, author, price, stock, published_year)
VALUES
    -- ('The Great Gatsby', 'F. Scott Fitzgerald', 10.99, 100, 1925),
    -- ('To Kill a Mockingbird', 'Harper Lee', 12.99, 50, 1960),
    -- (
    --     'To Kill a Mockingbird 2',
    --     'Harper Lee',
    --     20.99,
    --     20,
    --     1960
    -- ) -- ('1984', 'George Orwell', 9.99, 75, 1949);
    -- (
    --     ' The Pragmatic Programmer ',
    --     'Andrew Hunt',
    --     40.00,
    --     0,
    --     1999
    -- );
SELECT
    *
FROM
    books;

-- 1:- Find books that are out of stock.
SELECT
    title
FROM
    books
WHERE
    stock < 1;

-- 2:- Retrieve the most expensive book in the store.
SELECT
    *
FROM
    books
WHERE
    price = (
        SELECT
            MAX(price)
        FROM
            books
    );

-- 3:- Query to find the total number of orders placed by each customer
SELECT
    customers.name,
    COUNT(orders.id) AS total_orders
FROM
    customers
    JOIN orders ON customers.id = orders.customer_id
GROUP BY
    customers.name;

-- SELECT author, COUNT(*) AS total_books
-- FROM books
-- GROUP BY author;
-- 4 Query to calculate the total revenue generated from book sales
SELECT
    SUM(books.price * orders.quantity) AS total_revenue
FROM
    orders
    JOIN books ON orders.book_id = books.id;

-- 5:-  Query to list all customers who have placed more than one order
SELECT
    customers.name,
    COUNT(orders.id) AS total_orders
FROM
    customers
    JOIN orders ON customers.id = orders.customer_id
GROUP BY
    customers.name
HAVING
    COUNT(orders.id) > 1;

-- 6:- Find the average price of books in the store.
SELECT
    ROUND(AVG(price), 2) AS avg_book_price
FROM
    books;


-- 7:- Query to increase the price of all books published before 2000 by 10%
UPDATE
    books
SET
    price = price * 1.10
WHERE
    published_year < 2000;

-- 8️:- Delete customers who haven't placed any orders.
DELETE FROM
    customers
WHERE
    id NOT IN (
        SELECT
            DISTINCT customer_id
        FROM
            orders
    );