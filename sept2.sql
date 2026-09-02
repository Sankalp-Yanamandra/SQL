USE world;

# numerical fn

# ROUND()
SELECT ROUND(3.145,2); # round off to 2 decimal places

SELECT 
    name,
    lifeexpectancy,
    ROUND(lifeexpectancy, 0) AS `ROunded value`
FROM
    country;
    
# CEIL()
SELECT CEIL(23.56); # 24

# FLOOR()
SELECT FLOOR(23.56); # 23

SELECT 
    name,
    lifeexpectancy,
    CEIL(lifeexpectancy) AS `round up`,
    FLOOR(lifeexpectancy) AS `round down`
FROM
    country;
    
# POWER()
SELECT POWER(2,10); # 1024

SELECT POWER(5,0.5); # sq root of 5

SELECT 
    name,
    population,
    POWER(population, 2) AS `double population`
FROM
    country;
    
# SQRT()
SELECT SQRT(16);
SELECT SQRT(150);

SELECT 
    name,
    population,
    ROUND(SQRT(population), 0) AS `square root`
FROM
    country;
    
# ABS()
SELECT ABS(-45);
SELECT ABS(100-290);

SELECT gnp, gnpold, gnp-gnpold, ABS(gnp-gnpold) AS differnce
FROM country;

# MOD()

SELECT MOD(56,9);

SELECT name, population,MOD(population, 3) AS remainder
FROM country;

# SIGN()
SELECT SIGN(-56);# -1
SELECT SIGN(67);# 1
SELECT SIGN(0);# 0

# RAND()
SELECT RAND();

# GREATEST()
SELECT name, gnp, gnpold, GREATEST(gnp, gnpold) AS `greatest`
FROM country;

# upper() ,lower(), length()
SELECT name, UPPER(name), LOWER(name), LENGTH(name), LEFT(name, 3), RIGHT(name, 3), SUBSTRING(name, 1,4)
FROM country
LIMIT 5;

# trim()
SELECT TRIM("    car   ");

# replace()
SELECT REPLACE('sutherland','suther','fin'); # finland

# concat()
SELECT CONCAT('monali',' manubhai ','thakur');

# concat_ws()
SELECT CONCAT_WS("-","monali","thakur");

# lpad(), rpad()
SELECT name, LPAD(name, 20, "#"), RPAD(name, 20, "#")
FROM country;

# locate()
SELECT LOCATE('hi','hi I am');

