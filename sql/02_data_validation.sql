-- ==========================================
-- E-COMMERCE DATA ENGINEERING PIPELINE
-- Data Validation
-- ==========================================

-- 1. Verify the number of records in each table

SELECT 'customers' AS table_name, COUNT(*) AS total_rows FROM customers
UNION ALL
SELECT 'orders', COUNT(*) FROM orders
UNION ALL
SELECT 'order_items', COUNT(*) FROM order_items
UNION ALL
SELECT 'products', COUNT(*) FROM products
UNION ALL
SELECT 'sellers', COUNT(*) FROM sellers
UNION ALL
SELECT 'payments', COUNT(*) FROM payments
UNION ALL
SELECT 'reviews', COUNT(*) FROM reviews
UNION ALL
SELECT 'geolocation', COUNT(*) FROM geolocation;

-- 2. Check for missing customer IDs in orders

SELECT
    COUNT(*) AS missing_customer_ids
FROM orders
WHERE customer_id IS NULL;

-- 3. Check for orders without a matching customer

SELECT
    COUNT(*) AS orphan_orders
FROM orders AS o
LEFT JOIN customers AS c
    ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;
  

-- 4. Check for duplicate order IDs

SELECT
    order_id,
    COUNT(*) AS duplicate_count
FROM orders
GROUP BY order_id
HAVING COUNT(*) > 1;


-- 5. Check delivered orders with missing delivery duration

SELECT
    COUNT(*) AS missing_delivery_days
FROM orders
WHERE order_status = 'delivered'
  AND delivery_days IS NULL;