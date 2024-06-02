import psycopg2 as pg2
from secret import password

# - Establish connection
conn = pg2.connect(database='dvdrental', user='postgres', password=password)

# - Get a cursor from connect
cur = conn.cursor()

# - Execute query with cursor
# - Best practice to provide query as 
#   single string.
cur.execute('SELECT * FROM payment')

# - Fetch the first row
print(cur.fetchone())

# - Fetch the first 10 rows
print(cur.fetchmany(10))

data = cur.fetchmany(10)

# - Print the first row, 4th column
print(data[0][4])

conn.close()