-- alx_book_store.sql

-- Create database
CREATE DATABASE ALX_BOOK_STORE;

-- Use database
USE ALX_BOOK_STORE;

-- Create Authors table
CREATE TABLE AUTHORS (
    author_id INT AUTO_INCREMENT,
    author_name VARCHAR(215) NOT NULL,
    PRIMARY KEY (author_id)
);

-- Create Books table
CREATE TABLE BOOKS (
    book_id INT AUTO_INCREMENT,
    title VARCHAR(130) NOT NULL,
    author_id INT NOT NULL,
    price DOUBLE NOT NULL,
    publication_date DATE NOT NULL,
    PRIMARY KEY (book_id),
    FOREIGN KEY (author_id) REFERENCES AUTHORS(author_id)
);

-- Create Customers table
CREATE TABLE CUSTOMERS (
    customer_id INT AUTO_INCREMENT,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT NOT NULL,
    PRIMARY KEY (customer_id)
);

-- Create Orders table
CREATE TABLE ORDERS (
    order_id INT AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(customer_id)
);

-- Create Order_Details table
CREATE TABLE ORDER_DETAILS (
    orderdetailid INT AUTO_INCREMENT,
    order_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity DOUBLE NOT NULL,
    PRIMARY KEY (orderdetailid),
    FOREIGN KEY (order_id) REFERENCES ORDERS(order_id),
    FOREIGN KEY (book_id) REFERENCES BOOKS(book_id)
);
