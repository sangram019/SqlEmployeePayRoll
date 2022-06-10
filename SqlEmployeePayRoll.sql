CREATE DATABASE payroll_service
use payroll_service;

UC2- Create Employee payroll table

CREATE TABLE employee_payroll 
(
id INT IDENTITY(1,1) PRIMARY KEY ,
name VARCHAR (150),
salary INT,
startdate DATE,
);

UC3-create employee_payroll data

insert into employee_payroll values('Sangram',25000,'2018-03-21'),('Dinesh',20000,'2019-05-27'),('Rakesh',65000,'2010-04-20'),('susant',75000,'2008-06-29'),('Prajna',100000,'2018-07-20');

UC4 - Retrieve all the employee_payroll data

SELECT * FROM employee_payroll;

UC5- Ability to retrieve salary data and start date

SELECT salary FROM employee_payroll WHERE name = 'Sangram';

SELECT * FROM employee_payroll WHERE startdate BETWEEN CAST('2019-05-27' AS DATE) AND GETDATE();

UC6 - Ability to add Gender to employee_payroll table

ALTER TABLE employee_payroll ADD gender VARCHAR(1);

UPDATE employee_payroll set gender='M' where name = 'Sangram'or name = 'susant'
UPDATE Employee_Payroll set Gender='M' where name = 'Rakesh' or name = 'dinesh';
UPDATE Employee_Payroll set Gender='F' where name = 'Prajna';

UC7 - Ability to find sum,average,min,max & count

SELECT SUM(salary) FROM employee_payroll WHERE gender = 'M' GROUP BY gender;
SELECT SUM(salary) FROM employee_payroll WHERE gender = 'F' GROUP BY gender;

SELECT AVG(salary) FROM employee_payroll WHERE gender = 'M' GROUP BY gender;
SELECT AVG(salary) FROM employee_payroll WHERE gender = 'F' GROUP BY gender;

SELECT gender, MIN(salary) FROM employee_payroll GROUP BY gender;

SELECT gender, MAX(salary) FROM employee_payroll GROUP BY gender;

SELECT gender, COUNT(name) FROM employee_payroll GROUP BY gender;

