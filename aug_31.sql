
USE superstore;

# 31 Aug : revision
SELECT *
FROM superstore;

# q1 : customer_name,sales,profit
SELECT customer_name,sales,profit
FROM superstore;

DESCRIBE superstore;

# q2 : display all records where region="North"
SELECT *
FROM superstore
WHERE Region="North";

#q3 : display all records where Category="Office Supplies"
SELECT *
FROM superstore
WHERE Category="Office Supplies";