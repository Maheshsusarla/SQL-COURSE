CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    marks INT
);

INSERT INTO students VALUES 
(1, 'Arjun', 20, 'Hyderabad', 85),
(2, 'Ravi', 22, 'Chennai', 70),
(3, 'Kiran', 19, 'Delhi', 45),
(4, 'Anu', 21, 'Hyderabad', 95),
(5, 'Sita', 23, 'Mumbai', 30),
(6, 'mahesh', 23, 'Banglore', null);

-- SQL Operators: Operators are special symbols or keywords used to perform operations, comparisons, or conditions in SQL queries.

-- Equal Operator:equal values
select * from students where city= 'Hyderabad';

-- Greater Than
select * from students where marks>50;

-- Less Than
select * from students where marks<50;

-- Greater Than or Equal
select * from students where marks>=50;

-- Less Than or Equal
select * from students where marks<=50;

--  Not Equal
select * from students where city!='Delhi';

-- Logical operators are used to combine multiple conditions in SQL queries.
CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);
INSERT INTO employees VALUES
(1, 'Arjun', 'IT', 50000, 'Hyderabad'),
(2, 'Ravi', 'HR', 30000, 'Chennai'),
(3, 'Kiran', 'IT', 45000, 'Delhi'),
(4, 'Anu', 'Sales', 25000, 'Mumbai'),
(5, 'Sita', 'IT', 60000, 'Hyderabad');

-- and,or,not
-- AND Operator :Returns records only if ALL conditions are TRUE.
select * from employees where department='IT' and salary>30000;
select * from employees where department='IT' and city='Mumbai'; -- its flase 
select * from employees where department='IT' and city='Hyderabad';

-- OR Operator :Returns records if ANY ONE condition is TRUE.
select * from employees where department='IT' or city='Mumbai';
select * from employees where city='Hyderabad' or city='Mumbai';

-- NOT Operator: Returns records that do NOT satisfy the condition.
select * from employees where city!='Mumbai';
select * from employees where department!='HR';


-- Special Operators: Special operators are used for special types of conditions like ranges, patterns, multiple values, and null values.
-- BETWEEN ,IN ,LIKE, IS NULL

-- BETWEEN: Used to select values within a range.
-- Syntax:

-- SELECT column_name
-- FROM table_name
-- WHERE column_name BETWEEN value1 AND value2;

select * from students;
select * from students where marks between 50 and 90;
select * from students where age between 20 and 40;

-- IN Operator: Used to check multiple values in a single condition.
 
-- Syntax:
-- SELECT column_name
-- FROM table_name
-- WHERE column_name IN (value1, value2);

select * from students where city in ('Mumbai','Hyderabad');
select * from students where marks in (70,90);

-- LIKE Operator:Used for pattern matching.
--  %	Any number of characters
--   _	Single character

SELECT * FROM students WHERE name LIKE 'A%';
SELECT * FROM students WHERE name LIKE '%a';
SELECT * FROM students WHERE name LIKE '%vi%';
SELECT * FROM students WHERE name LIKE 'R___';
SELECT * FROM students WHERE name LIKE 'A____';

-- IS NULL : Used to check empty or missing values.
select * from students where marks is null;


