# BodyScan Tailor Dashboard — Database Creator
# Author: Gaurav Raghuvanshi
# Run this file to create the SQLite database

import sqlite3
import os

# Create database in same folder
db_path = os.path.join(os.path.dirname(__file__), 'bodyscan.db')

# Read and execute schema
conn = sqlite3.connect(db_path)
cursor = conn.cursor()

# Read schema.sql
with open(os.path.join(os.path.dirname(__file__), 'schema.sql'), 'r') as f:
    cursor.executescript(f.read())

# Read sample_data.sql
with open(os.path.join(os.path.dirname(__file__), 'sample_data.sql'), 'r') as f:
    cursor.executescript(f.read())

conn.commit()
conn.close()

print("✅ Database created successfully!")
print(f"📁 Location: {db_path}")
print("\nTables created:")
print("  ✅ customers")
print("  ✅ body_scans")
print("  ✅ tailors")
print("  ✅ orders")
print("  ✅ order_status")