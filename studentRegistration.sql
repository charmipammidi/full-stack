-- Create database
CREATE DATABASE studentdb;

-- Use database
USE studentdb;

-- Create table
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    dob DATE,
    department VARCHAR(30),
    phone VARCHAR(15)
);

-- Insert sample data
INSERT INTO students (name, email, dob, department, phone)
VALUES ('Ravi', 'ravi@gmail.com', '2004-05-10', 'CSE', '9876543210');

-- Retrieve data
SELECT * FROM students;