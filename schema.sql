-- BodyScan Tailor Dashboard Database Schema
-- Author: Gaurav Raghuvanshi
-- GitHub: github.com/Gaurawr/bodyscan-tailor-dashboard

-- 1. CUSTOMERS TABLE
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    full_name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    phone TEXT,
    city TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. BODY SCANS TABLE
CREATE TABLE body_scans (
    scan_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER REFERENCES customers(customer_id),
    scan_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    height_cm REAL,
    weight_kg REAL,
    chest_cm REAL,
    waist_cm REAL,
    hips_cm REAL,
    shoulder_cm REAL,
    sleeve_cm REAL,
    inseam_cm REAL,
    neck_cm REAL,
    scan_status TEXT DEFAULT 'completed'
);

-- 3. TAILORS TABLE
CREATE TABLE tailors (
    tailor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    full_name TEXT NOT NULL,
    shop_name TEXT,
    city TEXT,
    phone TEXT,
    email TEXT,
    rating REAL DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 4. ORDERS TABLE
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER REFERENCES customers(customer_id),
    tailor_id INTEGER REFERENCES tailors(tailor_id),
    scan_id INTEGER REFERENCES body_scans(scan_id),
    garment_type TEXT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    delivery_date DATE,
    total_amount REAL,
    currency TEXT DEFAULT 'USD'
);

-- 5. ORDER STATUS TABLE
CREATE TABLE order_status (
    status_id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_id INTEGER REFERENCES orders(order_id),
    status TEXT NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);