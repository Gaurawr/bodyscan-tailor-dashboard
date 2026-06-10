-- BodyScan Customer Analysis Queries
-- Author: Gaurav Raghuvanshi

-- 1. Total Customers & Scans Overview
SELECT
    COUNT(DISTINCT c.customer_id) AS total_customers,
    COUNT(DISTINCT b.scan_id) AS total_scans,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(SUM(o.total_amount), 2) AS total_revenue
FROM customers c
LEFT JOIN body_scans b ON c.customer_id = b.customer_id
LEFT JOIN orders o ON c.customer_id = o.customer_id;

-- 2. Customers by City
SELECT
    city,
    COUNT(*) AS total_customers
FROM customers
GROUP BY city
ORDER BY total_customers DESC;

-- 3. Average Body Measurements
SELECT
    ROUND(AVG(height_cm), 1) AS avg_height,
    ROUND(AVG(weight_kg), 1) AS avg_weight,
    ROUND(AVG(chest_cm), 1) AS avg_chest,
    ROUND(AVG(waist_cm), 1) AS avg_waist,
    ROUND(AVG(hips_cm), 1) AS avg_hips
FROM body_scans;

-- 4. Customer Order History
SELECT
    c.full_name,
    c.city,
    o.garment_type,
    o.total_amount,
    os.status,
    o.delivery_date
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_status os ON o.order_id = os.order_id
ORDER BY o.order_date DESC;

-- 5. High Value Customers
SELECT
    c.full_name,
    c.city,
    COUNT(o.order_id) AS total_orders,
    ROUND(SUM(o.total_amount), 2) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 5;