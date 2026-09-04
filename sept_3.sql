
# now()
SELECT now() AS `date time`;

# curdate()
SELECT curdate() AS `date now`;

# curtime()
SELECT CURTIME() AS `time now`;

# sysdate()
SELECT SYSDATE() AS `date-time now`;

# year()
SELECT YEAR(NOW()) as yr;
SELECT YEAR(CURDATE()) AS yr;
# using a custom date in YYYY-MM-DD
SELECT YEAR('2018-04-08') AS yr;

# month()
SELECT MONTH(NOW()) as month;
SELECT MONTH('2018-04-08') AS month;

# monthname()
SELECT MONTHNAME(NOW()) as month;
SELECT MONTHNAME('2018-04-08') AS month;

# day()
SELECT DAY(NOW()) as day_num;
SELECT DAY('2018-04-18') AS month;

# daymonth()
SELECT DAYOFMONTH(NOW()) as month;
SELECT DAYOFMONTH('2018-04-18') AS month;

# dayname()
SELECT DAYNAME(NOW()) as month;
SELECT DAYNAME('2018-04-08') AS month;

# date_add()
SELECT DATE_ADD(now(), interval 7 day) AS 'after 1 week';
# date_sub()
SELECT DATE_SUB(now(), interval 3 day) AS `day bfore yesterday`;

# date_format()
SELECT DATE_FORMAT(now(), '%D/%M/%Y %h:%i:%s %p') AS `detailed time`;

# str_to_date()
SELECT STR_TO_DATE('15-08-2026','%d-%m-%Y') AS `independance day`;


# aggregate fn
USE world;

SELECT 
    *
FROM
    country;
    
# count()

# total records
SELECT COUNT(*) AS `total records`
FROM country;

# world population
SELECT 
    SUM(population) AS `World Population`
FROM
    country;
    
# country with ppl living for most years
SELECT MAX(lifeexpectancy) AS `MOST ALIVE`
FROM country;

# country with lowest expectancy
SELECT MIN(lifeexpectancy) AS `least alive`
FROM country;

# avg surface area of a country in the world
SELECT AVG(surfacearea) AS `avg area occupied by a country`
FROM country;

# system fn

# version()
SELECT VERSION();

# database()
SELECT DATABASE();

# user()
SELECT USER();

# last_insert_id()
SELECT LAST_INSERT_ID();

DESC city;

INSERT INTO country(name, continent, indepyear) VALUES('Balochistan', 'Asia',2026);

SELECT LAST_INSERT_ID();