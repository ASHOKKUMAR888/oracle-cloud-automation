import oracledb

conn = oracledb.connect(
    user="cloudadmin",
    password="Cloud123",
    dsn="localhost:1521/FREEPDB1"
)

cursor = conn.cursor()

cursor.execute("SELECT * FROM customers")

for row in cursor:
    print(row)

cursor.close()
conn.close()

