import sqlite3
import csv
import os

db_path = r'C:\Users\HP\python-lessons\bodyscan-tailor-dashboard\database\bodyscan.db'
export_path = r'C:\Users\HP\python-lessons\bodyscan-tailor-dashboard\database'

conn = sqlite3.connect(db_path)

tables = ['customers', 'body_scans', 'tailors', 'orders', 'order_status']

for table in tables:
    cursor = conn.cursor()
    cursor.execute(f"SELECT * FROM {table}")
    rows = cursor.fetchall()
    headers = [desc[0] for desc in cursor.description]
    
    with open(f'{export_path}\\{table}.csv', 'w', newline='') as f:
        writer = csv.writer(f)
        writer.writerow(headers)
        writer.writerows(rows)
    print(f"✅ {table}.csv exported!")

conn.close()
print("\n🎉 All tables exported to CSV!")