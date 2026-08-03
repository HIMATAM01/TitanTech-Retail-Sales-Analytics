/*=====================================================
Retail Sales Analysis using SQL
Database Schema
Author: Tammineni Himagiri
=====================================================
Description:
This script creates the database and all tables
required for the Retail Sales Analysis project.
=====================================================*/

-- ===========================================
-- Create Database
-- ===========================================

CREATE DATABASE TitanTech_Retail;

-- ===========================================
-- Select Database
-- ===========================================

USE TitanTech_Retail;

-- ===========================================
-- Table: Customers
-- ===========================================

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    Phone VARCHAR(15),
    Email VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    JoinDate DATE
);

-- ===========================================
-- Table: Products
-- ===========================================

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Department VARCHAR(50),
    Category VARCHAR(50),
    Brand VARCHAR(50),
    UnitPrice DECIMAL(10,2),
    StockQuantity INT
);

-- ===========================================
-- Table: Orders
-- ===========================================

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATE,
    PaymentMethod VARCHAR(30),
    SalesChannel VARCHAR(30),

    FOREIGN KEY (CustomerID)
    REFERENCES Customers(CustomerID)
);

-- ===========================================
-- Table: OrderDetails
-- ===========================================

CREATE TABLE OrderDetails (
    OrderDetailsID INT PRIMARY KEY,
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (OrderID)
    REFERENCES Orders(OrderID),

    FOREIGN KEY (ProductID)
    REFERENCES Products(ProductID)
);
