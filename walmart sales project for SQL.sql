CREATE DATABASE IF NOT EXISTS walmartSales;
USE walmartSales;
CREATE TABLE IF NOT EXISTS sales(
invoice_id VARCHAR(30) NOT NULL PRIMARY KEY,
branch VARCHAR(5) NOT NULL,
city VARCHAR(30) NOT NULL,
customer_type VARCHAR(30) NOT NULL,
gender VARCHAR(30) NOT NULL,
product_line VARCHAR(100) NOT NULL,
unit_price DECIMAL(10,2) NOT NULL,
quantity INT NOT NULL,
tax_pct FLOAT(6,4) NOT NULL,
total DECIMAL(12, 4) NOT NULL,
date DATETIME NOT NULL,
time TIME NOT NULL,
payment VARCHAR(15) NOT NULL,
cogs DECIMAL(10,2) NOT NULL,
gross_margin_pct FLOAT(11,9),
gross_income DECIMAL(12, 4),
rating float8(2, 1)
);

SELECT * FROM sales;



## for not null value
SELECT COUNT(branch) AS NotNullbranchCount
FROM sales;

#### for adding table

ALTER TABLE sales
ADD time_of_day VARCHAR(20) NOT NULL;

select count(customer_type) from sales;
   
### What is the average rating of each product line?

SELECT product_line, AVG(rating) AS average_rating
FROM sales
GROUP BY product_line;

### What is the most common product line by gender?

SELECT gender, product_line, COUNT(*) AS product_count
FROM sales
GROUP BY gender, product_line
ORDER BY gender, product_count DESC;


### Which branch sold more products than average product sold?

SELECT AVG(products_line) AS average_products_sold
FROM sales;


### 

SELECT payment_method, COUNT(*) AS payment_count
FROM payment
GROUP BY payment_method
ORDER BY payment_count DESC
LIMIT 1;


