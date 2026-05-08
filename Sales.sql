CREATE DATABASE Sales;

USE Sales;

-- 1. Show all customer records
SELECT * 
FROM customers;

-- 2. Show total number of customers
SELECT COUNT(*) 
FROM Customers;

-- 3. Show transactions for chennai market
SELECT * 
FROM transactions 
where market_code = "Mark001";

-- 4. Show distinct product codes that were sold in chennai
SELECT DISTINCT Product_code 
FROM transactions 
WHERE market_code = "Mark001";

-- 5. Show transactions where currency is US dollars
SELECT * 
FROM transactions 
WHERE currency = "USD";

-- 6. Show transactions in 2020 join by date table
SELECT transactions.*, date.* 
FROM transactions INNER JOIN date 
ON transactions.order_date = date.date 
WHERE date.year = 2020;

-- 7. Show total revenue in year 2020
SELECT SUM(t.sales_amount) 
FROM transactions t INNER JOIN
date ON t.order_date = date.date
WHERE date.year = 2020 AND t.currency = 'INR\r' OR t.currency = 'USD\r';

-- 8. Show total revenue in year 2020, January Month
SELECT SUM(t.sales_amount) 
FROM transactions t INNER JOIN
date ON t.order_date = date.date
WHERE date.year = 2020 AND date.month_name = 'January' AND (t.currency = 'INR\r' OR t.currency = 'USD\r');

-- 9. Show total revenue in year 2020 in Chennai
SELECT SUM(t.sales_amount) 
FROM transactions t INNER JOIN
date ON t.order_date = date.date 
WHERE date.year = 2020 AND t.market_code = "Mark001";
