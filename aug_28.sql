USE superstore;

SELECT * 
FROM superstore;

# Q1. get only country germany and distinct -> WHERE clause
SELECT DISTINCT * 
FROM superstore
WHERE Country="Germany";

# Q1. get only country germany and spain and distinct -> AND
SELECT DISTINCT *
FROM superstore
WHERE Country="Germany" AND "Spain"; # no records with single column having both germany n spain
# in the same cell. (Not possible)

# Q2. get only country germany or spain and distinct -> OR
SELECT *
FROM superstore
WHERE Country="Germany" OR "Spain";

# Q3. get all records from countries - spain,germany,italy,france [TEDIOUS]
SELECT DISTINCT *
FROM superstore
WHERE Country="Spain" OR Country="Germany" OR Country="Italy" OR Country="France";

# Q4. get all records from countries - spain,germany,italy,france [BETTER WAY] - IN
SELECT DISTINCT *
FROM superstore
WHERE Country IN ("Germany","France","Italy","Spain");

# Q5. get all records from country=austria and category=technology
SELECT DISTINCT *
FROM superstore
WHERE Country="Austria" AND Category="Technology";

# Q6. get unique records from countries OTHer than germany ---> != or <> or NOT insert
# mtd 1
SELECT DISTINCT *
FROM superstore
WHERE Country NOT IN ("Germany");

# mtd 2

SELECT DISTINCT *
FROM superstore
WHERE Country != "Germany";

# mtd 3

SELECT DISTINCT *
FROM superstore
WHERE Country <> "Germany";

# Q7. get all countrie and sales where sales > 1000
SELECT country, sales
FROM superstore
WHERE sales > 1000
ORDER BY sales DESC;
# mtd 2
SELECT country, sales
FROM superstore
WHERE sales > 1000
ORDER BY sales ASC;
# mtd 3 : no sorting
SELECT country, sales
FROM superstore
WHERE sales > 1000;

# Q8. get all countries where sales btwn 500 to 1000 -> BETWEEN or >= AND <=
SELECT country, sales
FROM superstore
WHERE sales BETWEEN 500 AND 1000; 

# mtd 2 
SELECT country,sales
FROM superstore
WHERE sales >= 500 AND sales <= 1000;

# Q9. get countries from france to spain
SELECT country
FROM superstore
WHERE country BETWEEN "france" AND "spain"
ORDER BY country ASC;

# mtd 2
SELECT country
FROM superstore
WHERE country >= "france" AND country <= "spain";

# Q10. france n germany n sales > 500
SELECT country, sales
FROM superstore
WHERE country IN ("france","germany") AND sales > 500
ORDER BY sales DESC;