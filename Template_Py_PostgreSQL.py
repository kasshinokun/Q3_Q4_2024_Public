#----------Template from Replit for How to use Python and PostgreSQL 
#----------to develop a cloud based application
#----------URL: https://docs.replit.com/cloud-services/storage-and-databases/postgresql-on-replit

import os
import psycopg2.pool


# Create a connection pool with a min_size of 0 and a max_size of 80
# Use the `DATABASE_URL` environment variable we provide to connect to the Database
# It is included in your Replit environment automatically (no need to set it up)
pool = psycopg2.pool.SimpleConnectionPool(0, 80, os.environ['DATABASE_URL'])

# Get a connection from the pool
conn = pool.getconn()

# Create a cursor using the connection
cur = conn.cursor()

# Do your database operations using the cursor

# Create a demo table called "users"
cur.execute(
    """
    CREATE TABLE users (
        id SERIAL PRIMARY KEY,
        username VARCHAR(255),
        points INTEGER
    )
    """
)

# Add a demo user to the table with 0 points
cur.execute(
    """
    INSERT INTO users (username, points)
    VALUES (%s, %s)
    """,
    ('alice', 0)
)

# Increment the points by 1
cur.execute(
    """
    UPDATE users
    SET points = points + 1
    WHERE username = %s
    """,
    ('alice',)
)

# Get the user
cur.execute(
    """
    SELECT *
    FROM users
    WHERE username = %s
    """,
    ('alice',)
)

user = cur.fetchone()

# Print the user
print(user)

# Delete the user
cur.execute(
    """
    DELETE FROM users
    WHERE username = %s
    """,
    ('alice',)
)

# Close the cursor and return the connection to the pool
cur.close()
pool.putconn(conn)

# When you are done using the pool, close it to release the resources
pool.closeall()
