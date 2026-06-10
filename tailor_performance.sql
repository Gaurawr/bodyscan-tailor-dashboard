-- BodyScan Tailor Performance Queries
-- Author: Gaurav Raghuvanshi

-- 1. Tailor Overview Dashboard
SELECT
    t.full_name AS tailor,
    t.shop_name,
    t.city,
    t.rating,
    COUNT(o.order_id) AS total_orders,
    ROUND(SUM(o.total_amount), 2) AS total_revenue
FROM tailors t
LEFT JOIN orders o ON t.tailor_id = o.tailor_id
GROUP BY t.tailor_id
ORDER BY total_revenue DESC;

-- 2. Tailor Delivery Performance
SELECT
    t.full_name AS tailor,
    COUNT(o.order_id) AS total_orders,
    SUM(CASE WHEN os.status = 'Delivered' 
        THEN 1 ELSE 0 END) AS delivered,
    SUM(CASE WHEN os.status = 'In Progress' 
        THEN 1 ELSE 0 END) AS in_progress,
    SUM(CASE WHEN os.status = 'Pending' 
        THEN 1 ELSE 0 END) AS pending,
    ROUND(SUM(CASE WHEN os.status = 'Delivered' 
        THEN 1 ELSE 0 END) * 100.0 / 
        COUNT(o.order_id), 1) AS delivery_rate
FROM tailors t
LEFT JOIN orders o ON t.tailor_id = o.tailor_id
LEFT JOIN order_status os ON o.order_id = os.order_id
GROUP BY t.tailor_id
ORDER BY delivery_rate DESC;

-- 3. Best Performing Tailor
SELECT
    t.full_name AS tailor,
    t.shop_name,
    t.rating,
    ROUND(SUM(o.total_amount), 2) AS total_revenue,
    COUNT(o.order_id) AS total_orders,
    ROUND(AVG(o.total_amount), 2) AS avg_order_value
FROM tailors t
JOIN orders o ON t.tailor_id = o.tailor_id
GROUP BY t.tailor_id
ORDER BY total_revenue DESC
LIMIT 1;

-- 4. Tailor Specialization
SELECT
    t.full_name AS tailor,
    o.garment_type,
    COUNT(*) AS total_orders,
    ROUND(SUM(o.total_amount), 2) AS revenue
FROM tailors t
JOIN orders o ON t.tailor_id = o.tailor_id
GROUP BY t.tailor_id, o.garment_type
ORDER BY t.full_name, total_orders DESC;

-- 5. Customer Satisfaction by Tailor
SELECT
    t.full_name AS tailor,
    t.rating,
    COUNT(o.order_id) AS total_orders,
    SUM(CASE WHEN os.status = 'Delivered' 
        THEN 1 ELSE 0 END) AS completed_orders
FROM tailors t
LEFT JOIN orders o ON t.tailor_id = o.tailor_id
LEFT JOIN order_status os ON o.order_id = os.order_id
GROUP BY