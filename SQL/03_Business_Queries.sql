/*=====================================================
Retail Sales Analysis using SQL
Business Analysis Queries
Author: Tammineni Himagiri
=====================================================
Description:
This script answers key business questions
using SQL queries on the retail sales database.
=====================================================*/

-- ==================================================
-- Select Database
-- ==================================================

USE TitanTech_Retail;

-- ==================================================
-- Business Question 1
-- Which product generated the highest revenue?
-- ==================================================

SELECT Products.ProductName,
SUM(OrderDetails.Quantity * OrderDetails.UnitPrice) AS TotalRevenue
FROM Products
JOIN OrderDetails
ON Products.ProductID = OrderDetails.ProductID
GROUP BY Products.ProductName
ORDER BY TotalRevenue DESC
LIMIT 1;

-- ==================================================
-- Business Question 2
-- Which product sold the highest number of units?
-- ==================================================

SELECT Products.ProductName,
SUM(OrderDetails.Quantity) AS UnitsSold
FROM Products
JOIN OrderDetails
ON Products.ProductID = OrderDetails.ProductID
GROUP BY Products.ProductName
ORDER BY UnitsSold DESC
LIMIT 1;

-- ==================================================
-- Business Question 3
-- Which customer spent the most money?
-- ==================================================

SELECT Customers.CustomerName,
SUM(OrderDetails.Quantity * OrderDetails.UnitPrice) AS TotalSales
FROM Customers
JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
JOIN OrderDetails
ON Orders.OrderID = OrderDetails.OrderID
GROUP BY Customers.CustomerName
ORDER BY TotalSales DESC
LIMIT 1;

-- ==================================================
-- Business Question 4
-- Which sales channel generated the highest revenue?
-- ==================================================

SELECT Orders.SalesChannel,
SUM(OrderDetails.Quantity * OrderDetails.UnitPrice) AS TotalSales
FROM Orders
JOIN OrderDetails
ON Orders.OrderID = OrderDetails.OrderID
GROUP BY Orders.SalesChannel
ORDER BY TotalSales DESC
LIMIT 1;

-- ==================================================
-- Business Question 5
-- Which city generated the highest revenue?
-- ==================================================

SELECT Customers.City,
SUM(OrderDetails.Quantity * OrderDetails.UnitPrice) AS TotalRevenue
FROM Customers
JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
JOIN OrderDetails
ON Orders.OrderID = OrderDetails.OrderID
GROUP BY Customers.City
ORDER BY TotalRevenue DESC
LIMIT 1;
