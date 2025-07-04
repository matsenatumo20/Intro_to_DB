-- task_6.sql

-- Insert a row into the customer table
INSERT INTO customer (customer_id, customer_name, email, address)
VALUES 
    (2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness Ave.');

-- Check if the customer was inserted successfully
SELECT * FROM customer WHERE customer_id = 2;






