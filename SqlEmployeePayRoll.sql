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
