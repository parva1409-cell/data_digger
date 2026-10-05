CREATE DATABASE DataDigger;
USE DataDigger;


-- TABLE CREATION

-- 1. Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Address VARCHAR(255)
);

-- 2. Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
    Stock INT
);

-- 3. Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- 4. OrderDetails Table
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    SubTotal DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


-- 1. CUSTOMERS TABLE QUERIES

-- Insert sample customers
INSERT INTO Customers (Name, Email, Address) VALUES
('Alice', 'alice@gmail.com', '123 Park Street'),
('Bob', 'bob@gmail.com', '456 MG Road'),
('Charlie', 'charlie@gmail.com', '789 Station Road'),
('David', 'david@gmail.com', '321 Ring Road'),
('Alice', 'alice2@gmail.com', '654 Main Street');

-- Retrieve all customer details
SELECT * FROM Customers;

-- Update a customer's address
UPDATE Customers 
SET Address = '100 New Civil Lines' 
WHERE CustomerID = 2;

-- Delete a customer using CustomerID
DELETE FROM Customers 
WHERE CustomerID = 4;

-- Display all customers whose name is 'Alice'
SELECT * FROM Customers 
WHERE Name = 'Alice';



-- 2. PRODUCTS TABLE QUERIES

-- Insert sample products
INSERT INTO Products (ProductName, Price, Stock) VALUES
('Mouse', 450.00, 10),
('Keyboard', 1500.00, 20),
('Headphones', 800.00, 0),
('Monitor', 8500.00, 5),
('USB Cable', 200.00, 15);

-- Retrieve all products sorted by price in descending order
SELECT * FROM Products 
ORDER BY Price DESC;

-- Update the price of a specific product
UPDATE Products 
SET Price = 1600.00 
WHERE ProductID = 2;

-- Delete a product if it is out of stock
DELETE FROM Products 
WHERE Stock = 0;

-- Retrieve products whose price is between 500 and 2000
SELECT * FROM Products 
WHERE Price BETWEEN 500 AND 2000;

-- Retrieve the most expensive and cheapest product using MAX() and MIN()
SELECT MAX(Price) AS HighestPrice, MIN(Price) AS LowestPrice 
FROM Products;


-- 3. ORDERS TABLE QUERIES

-- Insert sample orders
INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES
(1, '2026-10-01', 1600.00),
(2, '2026-09-25', 450.00),
(3, '2026-09-10', 200.00),
(1, '2026-08-15', 3200.00),
(5, '2026-10-04', 1500.00);

-- Retrieve all orders made by a specific customer
SELECT * FROM Orders 
WHERE CustomerID = 1;

-- Update an order's total amount
UPDATE Orders 
SET TotalAmount = 1800.00 
WHERE OrderID = 1;

-- Delete an order using OrderID
DELETE FROM Orders 
WHERE OrderID = 3;

-- Retrieve orders placed in the last 30 days
SELECT * FROM Orders 
WHERE OrderDate >= '2026-09-05';

-- Retrieve highest, lowest, and average order amount
SELECT 
    MAX(TotalAmount) AS HighestOrder, 
    MIN(TotalAmount) AS LowestOrder, 
    AVG(TotalAmount) AS AverageOrder 
FROM Orders;

-- 4. ORDERDETAILS TABLE QUERIES

-- Insert sample order details
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, SubTotal) VALUES
(1, 2, 1, 1600.00),
(2, 1, 1, 450.00),
(4, 2, 2, 3200.00),
(5, 2, 1, 1500.00),
(1, 5, 1, 200.00);

-- Retrieve all order details for a specific order 
SELECT * FROM OrderDetails 
WHERE OrderID = 1;

-- Calculate total revenue generated from all orders using SUM()
SELECT SUM(SubTotal) AS TotalRevenue 
FROM OrderDetails;

-- Retrieve the top 3 most ordered products
SELECT ProductID, SUM(Quantity) AS TotalQuantity 
FROM OrderDetails 
GROUP BY ProductID 
ORDER BY TotalQuantity DESC 
LIMIT 3;

-- Count how many times a specific product has been sold using COUNT()
SELECT COUNT(*) AS TotalSalesCount 
FROM OrderDetails 
WHERE ProductID = 2;