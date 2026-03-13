-- Total Revenue
SELECT 
SUM(item_total) AS total_revenue
FROM ecommerce_dataset.order_items;

-- Average Order Value
SELECT 
SUM(total_amount) / COUNT(order_id) AS avg_order_value
FROM ecommerce_dataset.orders;

-- Order Status Distribution
SELECT 
order_status,
COUNT(*) AS total_orders
FROM ecommerce_dataset.orders
GROUP BY order_status;

-- Top Selling Products
SELECT 
p.product_name,
SUM(oi.quantity) AS total_quantity_sold
FROM ecommerce_dataset.order_items oi
JOIN ecommerce_dataset.products p
ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 10;


-- Revenue by Product Category
SELECT 
p.category,
SUM(oi.item_total) AS category_revenue
FROM ecommerce_dataset.order_items oi
JOIN ecommerce_dataset.products p
ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY category_revenue DESC;

-- Top Customers by Spending
SELECT 
user_id,
SUM(total_amount) AS total_spent
FROM ecommerce_dataset.orders
GROUP BY user_id
ORDER BY total_spent DESC
LIMIT 10;

-- Customer Purchase Frequency
SELECT 
user_id,
COUNT(order_id) AS total_orders
FROM ecommerce_dataset.orders
GROUP BY user_id
ORDER BY total_orders DESC;

-- Product Rating Analysis
SELECT 
product_id,
AVG(rating) AS average_rating,
COUNT(*) AS total_reviews
FROM ecommerce_dataset.reviews
GROUP BY product_id
ORDER BY average_rating DESC;

-- User Engagement Analysis
SELECT 
event_type,
COUNT(*) AS total_events
FROM ecommerce_dataset.events
GROUP BY event_type;

-- User Engagement Analysis by Event Type

SELECT 
event_type,
COUNT(*) AS total_events,
COUNT(DISTINCT user_id) AS unique_users
FROM ecommerce_dataset.events
GROUP BY event_type
ORDER BY total_events DESC;



