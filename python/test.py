import oracledb

conn = oracledb.connect(
    user="cloudadmin",
    password="Cloud123",
    dsn="localhost:1521/FREEPDB1"
)

print("Connected Successfully")

conn.close()

