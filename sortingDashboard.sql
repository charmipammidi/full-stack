-- Create Database
CREATE DATABASE studentdb;

-- Use Database
USE studentdb;

-- Create Table
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    dob DATE,
    department VARCHAR(20),
    phone VARCHAR(15)
);

-- Insert Sample Data
INSERT INTO students (name, email, dob, department, phone) VALUES
('Ravi', 'ravi@gmail.com', '2004-05-10', 'CSE', '9876543210'),
('Anil', 'anil@gmail.com', '2003-03-12', 'ECE', '9876543211'),
('Sita', 'sita@gmail.com', '2004-01-22', 'IT', '9876543212'),
('Rahul', 'rahul@gmail.com', '2003-11-15', 'CSE', '9876543213'),
('Priya', 'priya@gmail.com', '2004-02-18', 'ECE', '9876543214');

-- Display All Students
SELECT * FROM students;

-- Sort by Name
SELECT * FROM students ORDER BY name;

-- Sort by Date of Birth
SELECT * FROM students ORDER BY dob;

-- Filter by Department
SELECT * FROM students WHERE department = 'CSE';

-- Count Students in Each Department
SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department;