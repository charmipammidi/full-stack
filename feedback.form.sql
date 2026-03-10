-- Create Database
CREATE DATABASE feedbackdb;

-- Use Database
USE feedbackdb;

-- Create Feedback Table
CREATE TABLE feedback (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50),
    message VARCHAR(200)
);

-- Insert Feedback Data
INSERT INTO feedback(name, email, message) VALUES
('Ravi', 'ravi@gmail.com', 'Very good service'),
('Priya', 'priya@gmail.com', 'Website is easy to use'),
('Anil', 'anil@gmail.com', 'Customer support is helpful');

-- Display Feedback
SELECT * FROM feedback;