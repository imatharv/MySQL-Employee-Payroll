#UC
#Welcome to MySQL Problem

#UC1
CREATE DATABASE payroll_service;
USE payroll_service;

#UC2
CREATE TABLE employee_payroll (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    start_date DATE
);