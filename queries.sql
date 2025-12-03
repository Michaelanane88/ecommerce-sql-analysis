-- Total Orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- Total Revenue
SELECT SUM(quantity * unit_price) AS total_revenue
FROM orders;

-- Unique Customers
SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM orders;

-- Best Selling Products
SELECT product, SUM(quantity) AS total_units_sold
FROM orders
GROUP BY product
ORDER BY total_units_sold DESC;

-- Revenue by Category
SELECT category, SUM(quantity * unit_price) AS category_revenue
FROM orders
GROUP BY category
ORDER BY category_revenue DESC;

-- Daily Revenue Trend
SELECT order_date, SUM(quantity * unit_price) AS daily_revenue
FROM orders
GROUP BY order_date
ORDER BY order_date;

-- Top Customer by Total Spend
SELECT customer_id, SUM(quantity * unit_price) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC;
