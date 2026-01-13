CREATE DATABASE IF NOT EXISTS credit_manager;
USE credit_manager;

-- Users table
CREATE TABLE users (
    user_id VARCHAR(50) PRIMARY KEY,
    user_key VARCHAR(100) NOT NULL
);

-- Customers table
CREATE TABLE customers (
    customer_id VARCHAR(50) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL
);

-- Bills table
CREATE TABLE bills (
    bill_number VARCHAR(50) PRIMARY KEY,
    customer_id VARCHAR(50),
    value DECIMAL(10,2),
    quantity INT,
    vehicle_number VARCHAR(20),
    date DATE,
    fuel_type VARCHAR(20),
    collector VARCHAR(50),
    bill_photo LONGBLOB,
    settled_balance DECIMAL(10,2) DEFAULT 0,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Sample Data
INSERT INTO users (user_id, user_key) VALUES 
('admin', '123'),
('user1', '456');

INSERT INTO customers (customer_id, customer_name) VALUES 
('C001', 'John De Silva'),
('C002', 'Kamal Perera');