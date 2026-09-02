CREATE DATABASE grocery_store;
# use it
USE grocery_store;

# products table
CREATE TABLE products(
	product_id INT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    category VARCHAR(30) NOT NULL,
    price DECIMAL(8,2) CHECK(price > 0),
    stock INT CHECK(stock >= 0),
    supplier_email VARCHAR(100) UNIQUE,
    status VARCHAR(20) DEFAULT 'Available'
);

# all db n tables
SHOW DATABASES;
SHOW TABLES;

# check product table schema
DESCRIBE products;

# insert data
INSERT INTO products VALUES(1, "Basmati Rice", "Grains", 650, 25, "rice@supplier.com", "Available"),
		(2, "Wheat Flour", "Grains", 420, 40, "wheat@supplier.com", "Available"),
        (3, "Milk", "Dairy", 60, 100, "milk@supplier.com", "Available"),
        (4, "Cheese", "Dairy", 280, 15, "cheese@supplier.com", "Available"),
        (5, "Apple", "Fruits", 180, 50, "apple@supplier.com", "Available"),
        (6, "Banana", "Fruits", 70, 80, "banana@supplier.com", "Available"),
        (7, "Potato Chips", "Snacks", 50, 60, "chips@supplier.com", "Available"),
        (8, "Chocolate", "Snacks", 120, 30, "chocolate@supplier.com", "Available"),
        (9, "Cooking Oil", "Grocery", 190, 8, "oil@supplier.com", "Available"),
        (10, "Green Tea", "Beverages", 350, 5, "tea@supplier.com", "Available");
        
# check inserted data
SELECT *
FROM products;

# imp step
SET SQL_SAFE_UPDATES = 0;

# The price of Milk increases from ₹60 to ₹65.
# Update the record.
UPDATE products SET price=65 WHERE product_name="Milk";

# check updated records
SELECT *
FROM products;

# The store receives 20 more packets of Cooking Oil.
# Update its stock.
UPDATE products SET stock = stock + 20 WHERE product_name="Cooking Oil";

# check updated records
SELECT *
FROM products
WHERE product_name = "Cooking Oil";

# Q8.
# The supplier for Green Tea changes.
# Change its supplier email to:
# greentea@supplier.com
UPDATE products SET supplier_email = "greentea@supplier.com" WHERE product_name = "Green Tea";

# check updated records
SELECT *
FROM products
WHERE product_name = "Green Tea";

# Q9.
# The store stops selling Potato Chips.
# Delete that product.
DELETE FROM products WHERE product_name = "Potato Chips";

# check records
SELECT *
FROM products;

# Q11.
# Display only:
# product_name
# price
SELECT product_name, price
FROM products;

# Q12.
# Display products whose price is greater than ₹200.
SELECT *
FROM products
WHERE price > 200;

# Q13.
# Display products whose price is less than or equal to ₹100.

# mtd 1
SELECT *
FROM products
WHERE price BETWEEN 0 AND 100;
# mtd 2
SELECT *
FROM products
WHERE price <= 100;


#Q15 — AND
#Find products where:
#price > ₹100
#AND
#stock > 20
SELECT *
FROM products
WHERE price > 100 AND stock > 20;


# Q21.
# Display all the different categories available in the store.
SELECT DISTINCT category
FROM products;


# Q25.
# Display products alphabetically by product_name.
SELECT *
FROM products
ORDER BY product_name ASC;

# Q26.
# Find all Dairy or Fruits products whose price is less than ₹300.
SELECT *
FROM products
WHERE price < 300 AND (category IN ("Dairy", "Fruits"));


#Q30 — ⭐ Final Challenge
#The store manager asks:
#"Show me all products that are either expensive (price ≥ ₹300) OR have low stock (stock ≤ 10), 
#but don't show Snacks. Sort the results from highest price to lowest price."
SELECT *
FROM products
WHERE (price >= 300 OR stock <= 10) AND (category <> "Snacks")
ORDER BY price DESC; 