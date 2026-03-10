-- Create Database
CREATE DATABASE paymentdb;

-- Use Database
USE paymentdb;

-- Create Accounts Table
CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    balance INT NOT NULL
);

-- Insert Data
INSERT INTO accounts VALUES
(1, 'Charmi', 5000),
(2, 'Merchant', 2000);

-- Display Initial Balances
SELECT * FROM accounts;