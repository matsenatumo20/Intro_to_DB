import mysql.connector

def create_database():
    try:
        # Establish a connection to the MySQL server
        db = mysql.connector.connect(
            host="localhost",
            user="your_username",
            password="your_password"
        )

        # Create a cursor object
        cursor = db.cursor()

        # Create the database if it doesn't exist
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

        # Print a success message
        print("Database 'alx_book_store' created successfully!")

        # Close the cursor and connection
        cursor.close()
        db.close()

    except mysql.connector.Error as err:
        # Print an error message if connection fails
        print(f"Failed to connect to the database: {err}")

if __name__ == "__main__":
    create_database()

