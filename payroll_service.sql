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

#UC3
insert into employee_payroll (id, name, salary, start_date)
values (101, 'Atharva', 50000, '2021-06-04'),
       (102, 'Gaurav', 55000, '2021-05-03'),
       (103, 'Piyush', 45000, '2021-04-02'),
       (104, 'Snehal', 60000, '2021-03-01'),
       (105, 'Sakshi', 55000, '2021-02-28');

#UC4
SELECT * FROM employee_payroll;

#UC5
SELECT salary FROM employee_payroll WHERE name = 'Gaurav'; #Return 55000
SELECT name FROM employee_payroll WHERE start_date BETWEEN CAST('2021-05-01'AS DATE) AND DATE(NOW()); #Return Atharva, Gaurav

#UC6
ALTER TABLE employee_payroll ADD gender char(1) NOT NULL;
UPDATE employee_payroll SET gender = 'm';
