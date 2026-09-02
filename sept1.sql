USE world;

# check what all tables
SHOW TABLES;

# schema for each table
DESCRIBE city;
DESCRIBE country;
DESCRIBE countrylanguage;

# ORDER BY : sort results
# Q. countries n population sorted in desc order
SELECT name, population
FROM country
ORDER BY population DESC;

# Q. same as above but only want top-13 results => LIMIT xa
SELECT name, population
FROM country
ORDER BY population DESC
LIMIT 13;

# GROUP BY, AS
# Q. group countries by continents
SELECT continent, COUNT(name) AS total_countries
FROM country
GROUP BY continent;

# or COUNT(*) : counts NULL values also
SELECT continent, COUNT(*) AS total_countries
FROM country
GROUP BY continent;

# HAVING condition
# Q. same as above but only need a continent with more than 30 countries
SELECT continent, COUNT(*) AS total_countries
FROM country
GROUP BY continent
HAVING COUNT(*) > 30;

# or
SELECT 
    continent, COUNT(*) AS total_countries
FROM
    country
GROUP BY continent
HAVING total_countries > 30;

# Arithmetic operators
SELECT name, population, population+1000 AS new_pop
FROM country;

SELECT name, population, population DIV 2 AS new_pop
FROM country;

# assigment op
SET @age=23; # ensure ; here also => 1st execute
SELECT @age+100; # => 2nd execute

# logical operator

# Q dont want asia 
SELECT 
    name, continent, population
FROM
    country
WHERE
    NOT continent = 'asia';

# bitwise operator

SELECT 6&3 AS bitwise_and;

SELECT 6<<3 AS left_shift;

# LIKE

# Q. countries starting with I
SELECT name
FROM country
WHERE name LIKE "I%";

# Q. countries with only 5 letters and ending in A
SELECT name
FROM country
WHERE name LIKE "____A";

# ISNULL and ISNULL()

# check if head of state is null
SELECT name, headofstate
FROM country
WHERE headofstate IS NULL;

SELECT name, headofstate, ISNULL(headofstate)
FROM country;
