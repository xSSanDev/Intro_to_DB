-- alx_book_store.sql

-- Create the database if it does not exist
CREATE DATABASE IF NOT EXISTS alx_book_store;

-- Use the created database
USE alx_book_store;

-- Create the Authors table
CREATE TABLE Authors (
    author_id INT PRIMARY KEY, -- Primary key for the Authors table
    author_name VARCHAR(215) -- Name of the author
);

-- Create the Books table
CREATE TABLE Books (
    book_id INT PRIMARY KEY, -- Primary key for the Books table
    title VARCHAR(130), -- Title of the book
    author_id INT, -- Foreign key referencing the Authors table
    price DOUBLE, -- Price of the book
    publication_date DATE, -- Publication date of the book
    FOREIGN KEY (author_id) REFERENCES Authors(author_id) -- Foreign key constraint
);

-- Create the Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY, -- Primary key for the Customers table
    customer_name VARCHAR(215), -- Name of the customer
    email VARCHAR(215), -- Email of the customer
    address TEXT -- Address of the customer
);

-- Create the Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY, -- Primary key for the Orders table
    customer_id INT, -- Foreign key referencing the Customers table
    order_date DATE, -- Date of the order
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) -- Foreign key constraint
);

-- Create the Order_Details table
CREATE TABLE Order_Details (
    orderdetailid INT PRIMARY KEY, -- Primary key for the Order_Details table
    order_id INT, -- Foreign key referencing the Orders table
    book_id INT, -- Foreign key referencing the Books table
    quantity DOUBLE, -- Quantity of the book in the order
    FOREIGN KEY (order_id) REFERENCES Orders(order_id), -- Foreign key constraint
    FOREIGN KEY (book_id) REFERENCES Books(book_id) -- Foreign key constraint
);