-- ==========================================
-- E-COMMERCE DATA ENGINEERING PIPELINE
-- Database Schema
-- ==========================================

-- 1. Customers table

CREATE TABLE customers (
    customer_id VARCHAR(50) PRIMARY KEY,
    customer_unique_id VARCHAR(50) NOT NULL,
    customer_zip_code_prefix INTEGER,
    customer_city VARCHAR(100),
    customer_state VARCHAR(10)
);


-- 2. Orders table

CREATE TABLE orders (
    order_id VARCHAR(50) PRIMARY KEY,
    customer_id VARCHAR(50) NOT NULL,
    order_status VARCHAR(30),
    order_purchase_timestamp TIMESTAMP,
    order_approved_at TIMESTAMP,
    order_delivered_carrier_date TIMESTAMP,
    order_delivered_customer_date TIMESTAMP,
    order_estimated_delivery_date TIMESTAMP,
    delivery_days INTEGER
);


-- 3. Order Items table

CREATE TABLE order_items (
    order_id VARCHAR(50) NOT NULL,
    order_item_id INTEGER NOT NULL,
    product_id VARCHAR(50) NOT NULL,
    seller_id VARCHAR(50) NOT NULL,
    shipping_limit_date TIMESTAMP,
    price DOUBLE PRECISION,
    freight_value DOUBLE PRECISION,
    total_item_value DOUBLE PRECISION,
    PRIMARY KEY (order_id, order_item_id)
);

-- 4. Products table

CREATE TABLE products (
    product_id VARCHAR(50) PRIMARY KEY,
    product_name_lenght DOUBLE PRECISION,
product_description_lenght DOUBLE PRECISION,
product_photos_qty DOUBLE PRECISION,
product_weight_g DOUBLE PRECISION,
product_length_cm DOUBLE PRECISION,
product_height_cm DOUBLE PRECISION,
product_width_cm DOUBLE PRECISION,
);


-- 5. Sellers table

CREATE TABLE sellers (
    seller_id VARCHAR(50) PRIMARY KEY,
    seller_zip_code_prefix INTEGER,
    seller_city VARCHAR(100),
    seller_state VARCHAR(10)
);


-- 6. Payments table

CREATE TABLE payments (
    order_id VARCHAR(50) NOT NULL,
    payment_sequential INTEGER NOT NULL,
    payment_type VARCHAR(30),
    payment_installments INTEGER,
    payment_value DOUBLE PRECISION,
    PRIMARY KEY (order_id, payment_sequential)
);


-- 7. Reviews table

CREATE TABLE reviews (
    review_id VARCHAR(50),
    order_id VARCHAR(50),
    review_score INTEGER NOT NULL,
    review_comment_title TEXT,
    review_comment_message TEXT,
    review_creation_date TIMESTAMP,
    review_answer_timestamp TIMESTAMP,
    review_response_days INTEGER,
    PRIMARY KEY (review_id, order_id)
);

-- 8. Geolocation table

CREATE TABLE geolocation (
    geolocation_zip_code_prefix INTEGER PRIMARY KEY,
    geolocation_lat DOUBLE PRECISION,
    geolocation_lng DOUBLE PRECISION,
    geolocation_city VARCHAR(100),
    geolocation_state VARCHAR(10)
);
