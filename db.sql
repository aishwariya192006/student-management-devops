-- Student Management System Database Schema
-- Use this to set up your MySQL database (Local or AWS RDS)

CREATE DATABASE IF NOT EXISTS student_db;
USE student_db;

-- Table to store student records
CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    roll VARCHAR(50) NOT NULL UNIQUE,
    dept VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Sample Data for testing
INSERT INTO students (name, roll, dept) VALUES 
('Admin User', 'ADM-001', 'Management'),
('Test Student', 'TST-101', 'Computer Science');
