
-- Easy Level

-- 1. Total sale_amount per category
SELECT category, SUM(sale_amount) AS total_sales
FROM sales
GROUP BY category;

-- 2. Retrieve all sales ordered by sale_amount in descending order
SELECT *
FROM sales
ORDER BY sale_amount DESC;

-- List all sales in 'Food Grains' sorted by order_id
SELECT *
FROM sales
WHERE category = 'Food Grains'
ORDER BY order_id ASC;

-- 3. Top 5 most expensive sales
SELECT *
FROM sales
ORDER BY sale_amount DESC
LIMIT 5;

-- Fetch 10 random sales transactions
SELECT *
FROM sales
ORDER BY RANDOM()
LIMIT 10;

-- 4. Top 3 highest revenue-generating customers
SELECT customer_name, SUM(sale_amount) AS total_revenue
FROM sales
GROUP BY customer_name
ORDER BY total_revenue DESC
LIMIT 3;

-- 5. Filter sales above $3000, group by category, and order by total sales
SELECT category, SUM(sale_amount) AS total_sales
FROM sales
WHERE sale_amount > 3000
GROUP BY category
ORDER BY total_sales DESC;

-- 6. Total sales per region where total sales exceed $10,000
SELECT region, SUM(sale_amount) AS total_sales
FROM sales
GROUP BY region
HAVING SUM(sale_amount) > 10000;

-- Medium Level

-- 7. Highest, lowest, and average sale_amount per category
SELECT category, 
       MAX(sale_amount) AS highest_sale, 
       MIN(sale_amount) AS lowest_sale, 
       AVG(sale_amount) AS average_sale
FROM sales
GROUP BY category;

-- 8. Retrieve the 5 most recent sales
SELECT *
FROM sales
ORDER BY transaction_date DESC
LIMIT 5;

-- Top 3 largest transactions per region
SELECT region, sale_amount
FROM sales
ORDER BY region, sale_amount DESC
LIMIT 3;

-- 9. Top 10 regions contributing to total sales
SELECT region, SUM(sale_amount) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC
LIMIT 10;

-- 10. Categories with total sales exceeding $20,000 (top 3 categories)
SELECT category, SUM(sale_amount) AS total_sales
FROM sales
GROUP BY category
HAVING SUM(sale_amount) > 20000
ORDER BY total_sales DESC
LIMIT 3;

-- Hard Level

-- 11. Top 3 regions where total sales exceeded 2,000, sorted in descending order
SELECT region, SUM(sale_amount) AS total_sales
FROM sales
GROUP BY region
HAVING SUM(sale_amount) > 2000
ORDER BY total_sales DESC
LIMIT 3;

-- Retrieve categories with the highest sales per region
SELECT region, category, MAX(sale_amount) AS highest_sale
FROM sales
GROUP BY region, category;

-- 12. Top 3 transactions in terms of sale_amount
SELECT *
FROM sales
ORDER BY sale_amount DESC
LIMIT 3;
