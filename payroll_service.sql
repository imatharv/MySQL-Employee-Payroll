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

#UC7
SELECT SUM(salary) FROM employee_payroll WHERE gender = 'm' GROUP BY gender; #Returns 150000
SELECT AVG(salary) FROM employee_payroll WHERE gender = 'f' GROUP BY gender; #Returns 57500.0000
SELECT COUNT(name) FROM employee_payroll WHERE gender = 'm' GROUP BY gender; #Returns 3
SELECT MIN(salary) FROM employee_payroll; #Returns 45000
SELECT MAX(salary) FROM employee_payroll; #Returns 60000

#UC8
ALTER TABLE employee_payroll ADD phone_no INT NOT NULL;
UPDATE employee_payroll SET phone_no = '1234567899' WHERE name = 'Atharva';
UPDATE employee_payroll SET phone_no = '1234567874' WHERE name = 'Gaurav';
UPDATE employee_payroll SET phone_no = '1234567878' WHERE name = 'Piyush';
UPDATE employee_payroll SET phone_no = '1234567855' WHERE name = 'Snehal';
UPDATE employee_payroll SET phone_no = '1234567869' WHERE name = 'Sakshi';
SELECT * FROM employee_payroll;
ALTER TABLE employee_payroll ADD address VARCHAR(100) NOT NULL DEFAULT 'Jalgaon, Maharashtra';
ALTER TABLE employee_payroll ADD department VARCHAR(10) NOT NULL;
UPDATE employee_payroll SET department = 'IT' WHERE name = 'Atharva';
UPDATE employee_payroll SET department = 'Finance' WHERE name = 'Gaurav';
UPDATE employee_payroll SET department = 'HR' WHERE name = 'Snehal';
UPDATE employee_payroll SET department = 'Prodcution' WHERE name = 'Piyush';
UPDATE employee_payroll SET department = 'IT' WHERE name = 'Sakshi';

