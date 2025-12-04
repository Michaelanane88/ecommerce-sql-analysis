-- 1) Load data (reference only - imported via CSV)
-- orders.csv contains: order_id, customer_id, order_date, product, category, quantity, unit_price, country

-- 2) Total Revenue
SELECT SUM(quantity * unit_price) AS total_revenue
FROM orders;

-- 3) Unique Customers
SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM orders;

-- 4) Best Selling Products (by units sold)
SELECT product, SUM(quantity) AS total_units_sold
FROM orders
GROUP BY product
ORDER BY total_units_sold DESC;

-- 5) Revenue by Category
SELECT category, SUM(quantity * unit_price) AS category_revenue
FROM orders
GROUP BY category
ORDER BY category_revenue DESC;

-- 6) Daily Revenue Trend
SELECT order_date, SUM(quantity * unit_price) AS daily_revenue
FROM orders
GROUP BY order_date
ORDER BY order_date;

-- 7) Top Customer by Total Spend
SELECT customer_id, SUM(quantity * unit_price) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 1;
