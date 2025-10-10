
use f44_SQL_Class_2_homework
-- 1 Create a table Employees with columns: EmpID INT, Name (VARCHAR(50)), and Salary (DECIMAL(10,2)).
create table Employees (EmpID int, Name varchar(50), Salary Decimal(10,2))
-- 2 Insert three records into the Employees table using different INSERT INTO approaches (single-row insert and multiple-row insert).
insert into Employees values (1, 'Bob', 50000), (2, 'Tom', 55000)
insert into Employees values
	(3, 'Joe', 100000.20),
	(4, 'James', 45000)

insert into Employees
select 5,'Tanya', 250000

insert into Employees (EmpID) values (7)

-- 3 Update the Salary of an employee to 7000 where EmpID = 1.
update  Employees
set Salary = 7000
where empid = 1

select * from Employees

-- 4  Delete a record from the Employees table where EmpID = 2.
delete Employees
where EmpID=2

-- 5 Give a brief definition for difference between DELETE, TRUNCATE, and DROP.
/*	delete - deleted all table,
	truncate - delete only information in the table, not table,
	drop - delete all structure, schema, table
*/

-- 6 Modify the Name column in the Employees table to VARCHAR(100).
alter table employees
alter column name varchar(100)
select * from Employees

-- 7 Add a new column Department (VARCHAR(50)) to the Employees table.
alter table employees
add Department varchar(50)
select * from Employees

-- 8 Change the data type of the Salary column to FLOAT.
alter table employees
alter column Salary float
select * from Employees

-- 9 Create another table Departments with columns DepartmentID (INT, PRIMARY KEY) and DepartmentName (VARCHAR(50)).
create table Departments (DepartmentID int PRIMARY KEY, DepartmentName varchar(50))

-- 10 Remove all records from the Employees table without deleting its structure.

truncate table Employees
select * from Employees

-- 11 Insert five records into the Departments table using INSERT INTO SELECT method(you can write anything you want as data).
insert into Departments
select 1, 'Marketing'
insert into Departments
select 2, 'Sales'
union all
select 5, 'Acaunting'
union all
select 3, 'Programming'
union all
select 4, 'Managment'
select * from Departments

-- 12 Update the Department of all employees where Salary > 5000 to 'Management'.
update Employees
set Department = 'Managment'
where salary> 5000 

select * from Employees
-- 13 Write a query that removes all employees but keeps the table structure intact.
truncate table employees

select * from employees

-- 14 Drop the Department column from the Employees table.
alter table employees
alter column Department varchar(50)
drop column Department

select * from Employees
-- 15 Rename the Employees table to StaffMembers using SQL commands.
update Employees
set Employees = StaffMembers

-- 16 Write a query to completely remove the Departments table from the database.
drop table Departments



