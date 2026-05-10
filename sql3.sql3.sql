-- CREATE DATABASE is an SQL command used to create a new database in the database management system. 
-- A database stores tables, records, and other related data in an organized way.
create database mydb1;

-- USE is an SQL command used to select a database and make it the active database for 
-- performing operations like creating tables, inserting data, updating records, and running queries.

use mydb1;


-- CREATE TABLE
-- Description:
-- CREATE TABLE is an SQL command used to create a new table in a database. 
-- A table stores data in the form of rows and columns.
-- Syntax

-- CREATE TABLE table_name (
--     column1 datatype,
--     column2 datatype,
--     column3 datatype
-- );

CREATE TABLE students1 (
    id INT,
    name VARCHAR(50),
    age INT,
    course VARCHAR(50)
);


-- select 
-- Description
-- SELECT is an SQL command used to retrieve or fetch data from a table in a database.
-- It is one of the most commonly used SQL statements for viewing records stored in tables.

SELECT * FROM students1;
SELECT name FROM students;
SELECT id, course FROM students;