# DDL : Data definition langauge

# 5 commands : CREATE,ALTER, TRUNCATE, RENAME, DROP

CREATE DATABASE student;

USE student;

# create table
CREATE TABLE students(
	stu_id TINYINT,
    name VARCHAR(30),
    course VARCHAR(20),
    ph_no VARCHAR(20)
    );
DESCRIBE students;

# display rows
SELECT *
FROM students;

# add column
ALTER TABLE students ADD COLUMN email VARCHAR(50);
DESCRIBE students;

# add another column
ALTER TABLE students ADD COLUMN address VARCHAR(30);
DESCRIBE students;

# remove a column
ALTER TABLE students DROP COLUMN ph_no;
DESCRIBE students;

# modify column's datatype
ALTER TABLE students MODIFY COLUMN name CHAR(20);
DESCRIBE students;

# rename table name
ALTER TABLE students RENAME TO stu;

# rename name to stu_name
ALTER TABLE stu RENAME COLUMN name TO stu_name;
DESCRIBE stu;

# drop table
DROP TABLE stu;

# drop database
DROP DATABASE student;

# create new table : employee
CREATE TABLE employee(
	emp_id TINYINT,
    emp_name VARCHAR(20),
    salary DECIMAL(10,2),
    dept_id TINYINT,
    age TINYINT,
    ph_no VARCHAR(20),
    email VARCHAR(20),
    city VARCHAR(20)
	);
DESCRIBE employee;

# insert few values
INSERT INTO employee VALUES 
(1, "sai",20000.4,10, 23, "1234567890", "sai@gmail.com","diu"),
(2, "mona",2000.45,20, 43, "12345678320", "mona@gmail.com","daman");
# all columns
SELECT *
FROM employee;
#specific columns
SELECT emp_name
FROM employee;

# with where clause
SELECT * 
FROM employee
WHERE dept_id=20;

# delete row
SET SQL_SAFE_UPDATES = 0;
DELETE FROM employee WHERE emp_id=2;

SELECT *
FROM employee;

# update column value
UPDATE employee SET salary=100000 WHERE emp_id=1;
UPDATE employee SET city="hyd" WHERE dept_id = 10;

SELECT *
FROM employee;

# truncate
TRUNCATE TABLE employee;



SELECT *
FROM employee;


# 26 Aug : adding constraints to existing table

# adding PK
ALTER TABLE students ADD PRIMARY KEY(stu_id);

DESCRIBE students;

# adding UNique key
ALTER TABLE students ADD UNIQUE(ph_no);

# adding check constraint
ALTER TABLE students ADD COLUMN age TINYINT;
ALTER TABLE students ADD CHECK(age >= 18);

# adding default value to a column
ALTER TABLE students ALTER COLUMN course SET DEFAULT 'SQL';

# adding NOT NULL constraint
ALTER TABLE students MODIFY COLUMN name VARCHAR(30) NOT NULL;
