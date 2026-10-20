-- =====================================================
-- E-COMMERCE DATA ENGINEERING PIPELINE
-- Business Analysis
-- =====================================================

-- 1. Number of payments by payment method

SELECT
    payment_type,
    COUNT(*) AS number_of_payments
FROM payments
GROUP BY payment_type
ORDER BY number_of_payments DESC;


-- 2. Number of reviews by rating

SELECT
    review_score,
    COUNT(*) AS number_of_reviews
FROM reviews
GROUP BY review_score
ORDER BY number_of_reviews DESC;


-- 3. Number of orders by status

SELECT
    order_status,
    COUNT(*) AS number_of_orders
FROM orders
GROUP BY order_status
ORDER BY number_of_orders DESC;


-- 4. Monthly revenue analysis

SELECT
    DATE_TRUNC('month', o.order_purchase_timestamp) AS order_month,
    SUM(oi.total_item_value) AS total_revenue
FROM orders AS o
JOIN order_items AS oi
    ON o.order_id = oi.order_id
GROUP BY DATE_TRUNC('month', o.order_purchase_timestamp)
ORDER BY order_month;


-- 5. Monthly order volume

SELECT
    DATE_TRUNC('month', order_purchase_timestamp) AS order_month,
    COUNT(*) AS total_orders
FROM orders
GROUP BY DATE_TRUNC('month', order_purchase_timestamp)
ORDER BY order_month;


-- 6. Revenue by product category

SELECT
    p.product_category_name_english,
    SUM(oi.total_item_value) AS total_revenue
FROM order_items AS oi
JOIN products AS p
    ON oi.product_id = p.product_id
GROUP BY p.product_category_name_english
ORDER BY total_revenue DESC;


-- 7. Average delivery time for delivered orders

SELECT
    ROUND(AVG(delivery_days), 2) AS average_delivery_days
FROM orders
WHERE order_status = 'delivered';
