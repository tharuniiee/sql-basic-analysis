-- 1. Total revenue
SELECT 
    SUM(quantity * price) AS total_revenue
FROM sales;

-- 2. Total orders
SELECT 
    COUNT(DISTINCT order_id) AS total_orders
FROM sales;

-- 3. Revenue by product
SELECT 
    product,
    SUM(quantity * price) AS revenue
FROM sales
GROUP BY product
ORDER BY revenue DESC;

-- 4. Revenue by category
SELECT 
    category,
    SUM(quantity * price) AS revenue
FROM sales
GROUP BY category
ORDER BY revenue DESC;

-- 5. Monthly sales trend
SELECT 
    SUBSTR(order_date, 1, 7) AS month,
    SUM(quantity * price) AS revenue
FROM sales
GROUP BY month
ORDER BY month;
