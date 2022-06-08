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