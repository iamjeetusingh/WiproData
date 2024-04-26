# creating a database
CREATE DATABASE emp;

# select the DB
USE emp;

# creating table - EMPLOYEES
CREATE TABLE employees(
ID INT auto_increment primary key,
NAME varchar(30),
AGE INT,
POSITION varchar(30),
SALARY decimal(10,2)
);

# to list the table
SELECT * FROM employees;

# inserting 1st row in the table.
INSERT INTO employees (name, age, position, salary) value ('jeetu', 31, 'trainer', 10000000.00);

# to list the table
SELECT * FROM employees;

# inserting rows in bulk
INSERT INTO employees (name, age, position, salary) VALUES
('John Doe', 30, 'Manager', 50000.00),
('Jane Smith', 25, 'Developer', 60000.00),
('Michael Johnson', 35, 'Analyst', 55000.00),
('Emily Davis', 28, 'Designer', 48000.00),
('David Wilson', 40, 'Engineer', 70000.00),
('Sarah Brown', 33, 'Marketing', 52000.00),
('Chris Taylor', 29, 'Sales', 53000.00),
('Jennifer Lee', 31, 'HR', 48000.00),
('Kevin Clark', 27, 'QA', 54000.00),
('Amanda Evans', 32, 'Operations', 56000.00);

# to list the table
SELECT * FROM employees;

# selective listing
select * from employees where salary > 50000;
select * from employees where name="jeetu";
select * from employees where salary > 50000 AND age > 30;

# updating the value:
update employees set salary = 80000.00 where name = 'jeetu';
select * from employees where name="jeetu";

# delete the user entry whose age is greater than 40 Yrs.
select * from employees where age >= 40;
delete from employees  where age >= 40;
SELECT * FROM employees;