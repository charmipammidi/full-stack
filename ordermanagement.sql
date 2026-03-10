-- Create Database
CREATE DATABASE orderdb;

-- Use Database
USE orderdb;

-- Create Customers Table
CREATE TABLE customers (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(50)
);

-- Create Products Table
CREATE TABLE products (
product_id INT PRIMARY KEY,
product_name VARCHAR(50),
price INT
);

-- Create Orders Table
CREATE TABLE orders (
order_id INT PRIMARY KEY,
customer_id INT,
product_id INT,
quantity INT,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert Data into Customers
INSERT INTO customers VALUES
(1,'Ravi'),
(2,'Priya'),
(3,'Anil');

-- Insert Data into Products
INSERT INTO products VALUES
(101,'Laptop',50000),
(102,'Mobile',20000),
(103,'Headphones',2000);

-- Insert Data into Orders
INSERT INTO orders VALUES
(1,1,101,1),
(2,1,103,2),
(3,2,102,1),
(4,3,103,3);

-- Display Customer Order History using JOIN
SELECT c.customer_name, p.product_name, o.quantity, p.price
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
ORDER BY c.customer_name;

-- Highest Value Order
SELECT * FROM orders
WHERE quantity = (SELECT MAX(quantity) FROM orders);

-- Most Active Customer
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
ORDER BY total_orders DESC;