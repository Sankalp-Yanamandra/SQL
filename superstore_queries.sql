CREATE DATABASE superstore;

USE superstore;

SHOW DATABASES;
SHOW TABLES;

SELECT *
FROM superstore;

# I. DISTINCT 

# just want specific 3 columns' data
SELECT Category, Country, segment
FROM superstore; # has lot of duplicates

# only country column
SELECT country
FROM superstore; # lot of duplicates

# distinct
SELECT DISTINCT country
FROM superstore; # only unique rows/tuples from this column

# distint on multiple columns
SELECT DISTINCT category,country,segment
FROM superstore; # only a unique set of values/rows/records.tuples
#(1 value of each record comes from each of the 3 columns) taken as a WHOLE STRIP is UNIQUE.

# II. ORDER BY

# unsorted
SELECT DISTINCT country
FROM superstore;

# sort ascending 
SELECT DISTINCT country
FROM superstore
ORDER BY country ASC;

# sort descending
SELECT DISTINCT country
FROM superstore
ORDER BY country DESC;

# eg. distinct unsorted
SELECT DISTINCT country, sales
FROM superstore;

# sorted asc by country
SELECT DISTINCT country, sales
FROM superstore
ORDER BY country ASC;

# sorted desc by country
SELECT DISTINCT country, sales
FROM superstore
ORDER BY country DESC;


# 31 Aug : revision
SELECT *
FROM superstore;

# q1 : customer_name,sales,profit
SELECT customer_name,sales,profit
FROM superstore;


