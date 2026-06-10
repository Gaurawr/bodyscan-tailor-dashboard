-- BodyScan Tailor Dashboard — Sample Data
-- Author: Gaurav Raghuvanshi

-- CUSTOMERS
INSERT INTO customers (full_name, email, phone, city) VALUES
('James Wilson', 'james.wilson@email.com', '+1-555-0101', 'New York'),
('Sarah Johnson', 'sarah.j@email.com', '+1-555-0102', 'Los Angeles'),
('Michael Brown', 'michael.b@email.com', '+1-555-0103', 'Chicago'),
('Emily Davis', 'emily.d@email.com', '+1-555-0104', 'Houston'),
('Robert Taylor', 'robert.t@email.com', '+1-555-0105', 'Phoenix'),
('Jennifer Martinez', 'jennifer.m@email.com', '+1-555-0106', 'Philadelphia'),
('William Anderson', 'william.a@email.com', '+1-555-0107', 'San Antonio'),
('Lisa Thompson', 'lisa.t@email.com', '+1-555-0108', 'San Diego'),
('David Garcia', 'david.g@email.com', '+1-555-0109', 'Dallas'),
('Karen White', 'karen.w@email.com', '+1-555-0110', 'San Jose');

-- TAILORS
INSERT INTO tailors (full_name, shop_name, city, phone, rating) VALUES
('Marco Rossi', 'Rossi Fine Tailoring', 'New York', '+1-555-0201', 4.9),
('Ahmed Khan', 'Khan Bespoke', 'Chicago', '+1-555-0202', 4.7),
('Carlos Rivera', 'Rivera Couture', 'Los Angeles', '+1-555-0203', 4.8),
('John Smith', 'Smith & Sons Tailors', 'Houston', '+1-555-0204', 4.6);

-- BODY SCANS
INSERT INTO body_scans 
(customer_id, height_cm, weight_kg, chest_cm, waist_cm, 
hips_cm, shoulder_cm, sleeve_cm, inseam_cm, neck_cm) VALUES
(1, 182.0, 82.5, 102.0, 86.0, 98.0, 46.0, 65.0, 81.0, 39.0),
(2, 165.0, 58.0, 88.0, 68.0, 92.0, 38.0, 58.0, 74.0, 33.0),
(3, 178.0, 88.0, 108.0, 92.0, 102.0, 48.0, 67.0, 82.0, 41.0),
(4, 162.0, 55.0, 84.0, 64.0, 90.0, 36.0, 56.0, 72.0, 32.0),
(5, 175.0, 78.0, 98.0, 82.0, 96.0, 44.0, 63.0, 79.0, 38.0),
(6, 168.0, 62.0, 90.0, 72.0, 94.0, 39.0, 59.0, 75.0, 34.0),
(7, 180.0, 85.0, 104.0, 88.0, 100.0, 47.0, 66.0, 80.0, 40.0),
(8, 160.0, 52.0, 82.0, 62.0, 88.0, 35.0, 55.0, 71.0, 31.0),
(9, 176.0, 80.0, 100.0, 84.0, 97.0, 45.0, 64.0, 80.0, 39.0),
(10, 163.0, 57.0, 86.0, 66.0, 91.0, 37.0, 57.0, 73.0, 33.0);

-- ORDERS
INSERT INTO orders 
(customer_id, tailor_id, scan_id, garment_type, 
delivery_date, total_amount) VALUES
(1, 1, 1, 'Business Suit', '2025-02-15', 850.00),
(2, 3, 2, 'Evening Dress', '2025-02-20', 650.00),
(3, 2, 3, 'Wedding Suit', '2025-03-01', 1200.00),
(4, 3, 4, 'Cocktail Dress', '2025-02-28', 550.00),
(5, 1, 5, 'Business Suit', '2025-03-10', 900.00),
(6, 4, 6, 'Formal Dress', '2025-03-05', 600.00),
(7, 2, 7, 'Tuxedo', '2025-03-15', 1100.00),
(8, 3, 8, 'Summer Dress', '2025-02-25', 450.00),
(9, 1, 9, 'Casual Suit', '2025-03-20', 750.00),
(10, 4, 10, 'Party Dress', '2025-03-08', 500.00);

-- ORDER STATUS
INSERT INTO order_status (order_id, status, notes) VALUES
(1, 'Delivered', 'Customer satisfied'),
(2, 'Delivered', 'Delivered on time'),
(3, 'In Progress', 'Stitching started'),
(4, 'Delivered', 'Minor alteration done'),
(5, 'In Progress', 'Fabric cutting done'),
(6, 'Pending', 'Awaiting fabric arrival'),
(7, 'In Progress', 'Design finalized'),
(8, 'Delivered', 'Customer loved it'),
(9, 'Pending', 'Scheduled for next week'),
(10, 'In Progress', 'Measurements verified');