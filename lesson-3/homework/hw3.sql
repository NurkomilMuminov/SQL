create database f44_sql_class_3_HW
go
use f44_sql_class_3_HW
--Define and explain the purpose of BULK INSERT in SQL Server.
--BULK INSERT - is importing csv files into sql like table

--List four file formats that can be imported into SQL Server.
--csv, txt, xmsl, xls

--Create a table Products with columns: ProductID (INT, PRIMARY KEY), ProductName (VARCHAR(50)), Price (DECIMAL(10,2)).
create table Products (ProductID INT PRIMARY KEY, ProductName varchar(50), Price decimal(10,2))

--Insert three records into the Products table using INSERT INTO.
insert into Products values	(1, 'Butter', 20000.00),
						(2, 'Bread', 75000.00),
						(3, 'Salt', 1000.00);
--Explain the difference between NULL and NOT NULL.
-- null is can be default 
-- not null must be inserted

--Add a UNIQUE constraint to the ProductName column in the Products table.
alter table Products
drop column ProductName
select * from Products

drop table Products
create table Products (ProductID INT PRIMARY KEY, ProductName varchar(50) Unique, Price decimal(10,2))
insert into Products values	(1, 'Butter', 20000.00),
						(2, 'Bread', 75000.00),
						(3, 'Salt', 1000.00);

--Write a comment in a SQL query explaining its purpose.
/* SQl is Structured Query Language which help to work with large amount of data */
--Add CategoryID column to the Products table.
alter table Products
add CategoryID int
select * from products
--Create a table Categories with a CategoryID as PRIMARY KEY and a CategoryName as UNIQUE.
create table Ctegories (CategoryID int PRIMARY KEY, CategoryName varchar(50) UNIQUE)
select * from ctegories
--Explain the purpose of the IDENTITY column in SQL Server.
/* identity = unique, primary key it has not duplicate value and we can add conditions like after each insert + 1 in id column*/

/*Use BULK INSERT to import data from a text file into the Products table.*/

BULK INSERT Products
FROM 'C:\Users\LENOVO\Documents\SQL_Maab\Bulk.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'  -- Windows-style line ending
);



/*Create a FOREIGN KEY in the Products table that references the Categories table. */
alter table Products
add constraint fk_productid
foreign key (CategoryID) references  ctegories(categoryid)

/*Explain the differences between PRIMARY KEY and UNIQUE KEY.*/

/* primary key we can use one time, unique key we can use again in one table*/

/*Add a CHECK constraint to the Products table ensuring Price > 0.*/
alter  table Products
add constraint Price CHECK(Price > 0)
select * from Products
/*Modify the Products table to add a column Stock (INT, NOT NULL).*/
alter table Products
add Stock int

/*Use the ISNULL function to replace NULL values in Price column with a 0.*/
SELECT ISNULL(Price, 0) AS Price
FROM Products;

/*Describe the purpose and usage of FOREIGN KEY constraints in SQL Server.*/

/* we use foreign key for connect to table*/

/*Write a script to create a Customers table with a CHECK constraint ensuring Age >= 18.*/
create table Customers (age int check(age>=18))

/*Create a table with an IDENTITY column starting at 100 and incrementing by 10.*/
create table [identity] (ID int identity(100,10))


/*Write a query to create a composite PRIMARY KEY in a new table OrderDetails.*/
Create table OrderDetails( ID int primary key)

/*Explain the use of COALESCE and ISNULL functions for handling NULL values.*/


/*Create a table Employees with both PRIMARY KEY on EmpID and UNIQUE KEY on Email.*/
create table Employees (EmpID int Primary key, Email varchar(50) Unique);
select * from Employees
/*Write a query to create a FOREIGN KEY with ON DELETE CASCADE and ON UPDATE CASCADE options.*/

