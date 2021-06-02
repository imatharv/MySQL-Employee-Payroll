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