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

#UC9
ALTER TABLE employee_payroll ADD basic_pay FLOAT NOT NULL;
ALTER TABLE employee_payroll ADD deduction FLOAT NOT NULL;
ALTER TABLE employee_payroll ADD taxable FLOAT NOT NULL;
ALTER TABLE employee_payroll ADD incometax FLOAT NOT NULL;
ALTER TABLE employee_payroll ADD net_pay FLOAT NOT NULL;
DESCRIBE employee_payroll;
DROP TABLE employee_payroll;

#UC10 Refactoring all..
CREATE TABLE employee_payroll (
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Basic FLOAT NOT NULL,
    Deduction FLOAT NOT NULL,
    Taxable FLOAT NOT NULL,
    Incometax FLOAT NOT NULL,
    Net FLOAT NOT NULL,
    Started DATE NOT NULL
);
INSERT INTO employee_payroll (ID, Basic, Deduction, Taxable, Incometax, Net, Started)
VALUES (101, 30000.0, 2000.0, 28000.0, 1000.0, 27000.0, '2021-06-05'),
       (102, 35000.0, 2000.0, 33000.0, 1000.0, 32000.0, '2021-06-04'),
       (103, 40000.0, 2500.0, 37500.0, 1500.0, 36000.0, '2021-06-03'),
       (104, 25000.0, 1500.0, 23500.0, 500.0, 23000.0, '2021-06-02');

CREATE TABLE Employee_Details (
    EmployeeID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Gender CHAR NOT NULL,
    Contact INT NOT NULL,
    Address VARCHAR(50) NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES employee_payroll (ID)
);
INSERT INTO Employee_Details (EmployeeID, Name, Gender, Contact, Address)
VALUES (101,'Atharva','M','9665654666','Jalgaon MH'),
       (102,'Kaustubh','M','8446633397','Pune MH'),
       (103,'Snehal','F','8408095441','Ahmadnagar MH'),
       (104,'Sakshi','F','9552495055','Nashik MH');



