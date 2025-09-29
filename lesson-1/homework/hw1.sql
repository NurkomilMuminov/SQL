--Define the following terms: data, database, relational database, and table.

/*	data = malumot, 
	database = malumotlar ombori, 
	relational database = bir biri bilan uzaro ulangan tablelar, 
	table = malumotlar qator va ustunlarda saqlanadigan  joy
*/

-- List five key features of SQL Server.

/*
*/
-- What are the different authentication modes available when connecting to SQL Server? (Give at least 2)

-- Windows authentication and SQL Server authentication

-- Medium
--Create a new database in SSMS named SchoolDB.

create database SchoolDB
go
use SchoolDB

--Write and execute a query to create a table called Students with columns: StudentID (INT, PRIMARY KEY), Name (VARCHAR(50)), Age (INT).
create table Student (StudentID int PRIMARY KEY, name varchar(50), age int)

--Describe the differences between SQL Server, SSMS, and SQL.
--Sql server = Malumot egadi va himolaydi
--Sql = malumot ustida amalar bajaradi(yaratish, uchirish va b.q.)
--SSMS = Database yaratuvchilariga, malumotni boshqarishga yordam beradi

--Research and explain the different SQL commands: DQL, DML, DDL, DCL, TCL with examples.

/*
DQL - Data query language = select 
DDL - Data definition language = Create, alter, drop, truncate
DML - Data Manipulation Language = insert, update, delete
DCL - Data control language = Grant, Revoke
TCL - Transaction control Language = begin tran, Commit, Rollback
*/

--Write a query to insert three records into the Students table.
insert into Student values
					(1, 'Alex', 20),
					(2, 'Bob', 31),
					(3, 'Sarah', 21)

--Restore AdventureWorksDW2022.bak file to your server. (write its steps to submit) You can find the database from this link
/*  step 1 - download
	step 2 - copy downloaded file
	step 3 - open "C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER03\MSSQL\Backup"
	step 4 - paste the copied file
*/

