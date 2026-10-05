# 🗄️ DataDigger

DataDigger is a beginner-friendly **MySQL database project** created to practice SQL and basic database management concepts.

The project manages information about **customers, products, orders, and order details**. It demonstrates how different tables can be connected using primary keys and foreign keys and how SQL queries can be used to manage and analyze data.

## 📌 Project Overview

The database is named **DataDigger**.

It contains four main tables:

### 👤 1. Customers

The `Customers` table stores basic information about customers, including their name, email, and address.

Each customer has a unique `CustomerID`, which is the **Primary Key** of the table.

### 📦 2. Products

The `Products` table stores information about products available for sale.

It contains the product name, price, and available stock. Each product is identified by a unique `ProductID`.

### 🛒 3. Orders

The `Orders` table stores information about customer orders.

It contains the order date and total amount. `CustomerID` is used as a **Foreign Key** to connect each order with a customer from the `Customers` table.

### 📋 4. OrderDetails

The `OrderDetails` table stores the individual products included in each order.

It connects orders with products using `OrderID` and `ProductID` foreign keys. It also stores the quantity purchased and subtotal.

## 🔗 Table Relationships

The tables are connected using **Primary Keys and Foreign Keys**.

```text
Customers
    │
    │ CustomerID
    ▼
  Orders
    │
    │ OrderID
    ▼
OrderDetails
    ▲
    │ ProductID
    │
Products
```

### What this means

- One customer can have multiple orders.
- An order can contain multiple order details.
- Each order detail refers to a particular product.
- Foreign keys help maintain relationships between the tables.

## 📝 SQL Queries and Operations

The project contains queries for each of the four tables.

### 👤 Customers Queries

Sample customer records are inserted using `INSERT`.

The project then demonstrates how to:

- Display all customers using `SELECT`.
- Update a customer's address using `UPDATE`.
- Delete a customer using `DELETE`.
- Find customers with a specific name using `WHERE`.

For example, the project searches for customers whose name is **Alice**.

### 📦 Products Queries

Sample products such as Mouse, Keyboard, Headphones, Monitor, and USB Cable are added to the database.

The project demonstrates:

- Displaying products.
- Sorting products by price using `ORDER BY`.
- Updating a product price.
- Deleting products that are out of stock.
- Finding products within a specific price range using `BETWEEN`.
- Finding the highest and lowest product prices using `MAX()` and `MIN()`.

These queries provide basic ways to manage and analyze product information.

### 🛒 Orders Queries

Sample orders are added with customer IDs, order dates, and total amounts.

The project demonstrates:

- Finding orders belonging to a particular customer.
- Updating an order's total amount.
- Deleting an order using its `OrderID`.
- Finding orders placed within the specified recent date range.
- Finding the highest, lowest, and average order amounts.

The `MAX()`, `MIN()`, and `AVG()` functions are used for basic order analysis.

### 📋 OrderDetails Queries

The `OrderDetails` table contains information about products included in different orders.

The project demonstrates:

- Finding all details for a particular order.
- Calculating total revenue using `SUM()`.
- Finding the top 3 most ordered products using `GROUP BY`, `ORDER BY`, and `LIMIT`.
- Counting how many times a particular product has been sold using `COUNT()`.

These queries demonstrate how SQL can be used to extract useful information from sales data.

## 🧮 SQL Concepts Practiced

### `CREATE DATABASE`

Creates the `DataDigger` database where all project tables are stored.

### `CREATE TABLE`

Creates the four tables required for the project.

### Primary Key

A primary key uniquely identifies each record in a table.

For example, `CustomerID` uniquely identifies each customer.

### Foreign Key

A foreign key connects one table with another table.

For example, `CustomerID` in the `Orders` table connects an order to a customer.

### `INSERT`

Used to add new records to a table.

### `SELECT`

Used to retrieve information from the database.

### `UPDATE`

Used to modify existing records.

### `DELETE`

Used to remove records from a table.

### `WHERE`

Used to filter records based on a condition.

### `BETWEEN`

Used to find values within a specified range.

### `ORDER BY`

Used to sort query results in ascending or descending order.

### `GROUP BY`

Used to group records based on a particular column, such as grouping order details by product.

### `LIMIT`

Used to restrict the number of records returned by a query.

## 📊 Aggregate Functions

The project also demonstrates several SQL aggregate functions:

| Function | Purpose |
|---|---|
| `SUM()` | Calculates the total of numeric values |
| `AVG()` | Calculates the average value |
| `MAX()` | Finds the highest value |
| `MIN()` | Finds the lowest value |
| `COUNT()` | Counts records |

These functions are mainly used in the project for basic product and sales analysis.

## 🎯 Project Objectives

The main objectives of this project are:

- To understand basic database creation.
- To learn how to create and connect multiple tables.
- To practice CRUD operations.
- To understand primary and foreign keys.
- To practice filtering and sorting data.
- To use aggregate functions for basic analysis.
- To understand how SQL can be used for simple order and sales management.

## 🚀 How to Run

1. Install **MySQL** on your computer.
2. Open MySQL Workbench, VS Code with a MySQL extension, or another MySQL-compatible environment.
3. Open the `data_digger.sql` file.
4. Connect to your MySQL server.
5. Run the complete SQL script.
6. The `DataDigger` database and its tables will be created.
7. Execute the queries to view and modify the sample data.

## 📁 Project Structure

```text
DataDigger/
│
├── data_digger.sql
└── README.md
```

## 🛠️ Technologies Used

- 🐬 **MySQL**
- 🗃️ **SQL**

## 🎓 Learning Outcome

Through this project, I practiced creating relational databases, designing tables, establishing relationships, performing CRUD operations, and using SQL functions to retrieve and analyze data.
