#!/usr/bin/python3
"""Creates the alx_book_store database in MySQL server"""
import mysql.connector
from mysql.connector import errorcode

# Database configuration
config = {
    "user": "root",        # Replace with your MySQL username
    "password": "root",    # Replace with your MySQL password
    "host": "localhost",   # Replace if using a different host
}

# Database name to create
DB_NAME = "alx_book_store"

try:
    # Establish connection to MySQL server
    cnx = mysql.connector.connect(**config)
    cursor = cnx.cursor()
    
    # Create database if not exists
    cursor.execute(f"CREATE DATABASE IF NOT EXISTS {DB_NAME}")
    
    print(f"Database '{DB_NAME}' created successfully!")

except mysql.connector.Error as err:
    if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print("Error: Access denied - check username/password")
    elif err.errno == errorcode.ER_BAD_DB_ERROR:
        print("Error: Database doesn't exist")
    else:
        print(f"Error: {err}")
        
finally:
    # Clean up resources
    if 'cursor' in locals():
        cursor.close()
    if 'cnx' in locals() and cnx.is_connected():
        cnx.close()
