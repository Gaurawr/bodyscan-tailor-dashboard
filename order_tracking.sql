-- BodyScan Order Tracking Queries
-- Author: Gaurav Raghuvanshi

-- 1. All Orders with Current Status
SELECT
    o.order_id,
    c.full_name AS customer,
    t.shop_name AS tailor,
    o.garment_type,
    o.total_amount,
    o.delivery_date,
    os.status,
    os.notes
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN tailors t ON o.tailor_id = t.tailor_id
JOIN order_status os ON o.order_id = os.order_id
ORDER BY o.order_date DESC;

-- 2. Orders by Status
SELECT
    os.status,
    COUNT(*) AS total_orders,
    ROUND(SUM(o.total_amount), 2) AS total_value
FROM orders o
JOIN order_status os ON o.order_id = os.order_id
GROUP BY os.status
ORDER BY total_orders DESC;

-- 3. Pending & In Progress Orders
SELECT
    c.full_name AS customer,
    c.phone,
    o.garment_type,
    o.delivery_date,
    os.status,
    os.notes
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_status os ON o.order_id = os.order_id
WHERE os.status IN ('Pending', 'In Progress')
ORDER BY o.delivery_date ASC;

-- 4. Revenue by Garment Type
SELECT
    garment_type,
    COUNT(*) AS total_orders,
    ROUND(SUM(total_amount), 2) AS total_revenue,
    ROUND(AVG(total_amount), 2) AS avg_order_value
FROM orders
GROUP BY garment_type
ORDER BY total_revenue DESC;

-- 5. Monthly Revenue Trend
SELECT
    strftime('%Y-%m', order_date) AS month,
    COUNT(*) AS total_orders,
    ROUND(SUM(total_amount), 2) AS monthly_revenue
FROM orders
GROUP BY month
ORDER BY month;