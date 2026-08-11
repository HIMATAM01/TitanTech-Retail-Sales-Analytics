/*=====================================================
Retail Sales Analysis using SQL
Data Insertion
Author: Tammineni Himagiri
=====================================================
Description:
This script inserts sample data into the
Customers, Products, Orders, and OrderDetails tables.
=====================================================*/

-- ==================================================
-- Select Database
-- ==================================================

USE TitanTech_Retail;

-- ==================================================
-- Insert Data into Customers Table
-- ==================================================

INSERT INTO Customers (
CustomerID,
CustomerName,
Phone,
Email,
City,
State,
JoinDate
)
VALUES
(101,'Aarav Sharma','9876543210','aarav@gmail.com','Hyderabad','Telangana','2023-01-15'),
(102,'Diya Reddy','9876543211','diya@gmail.com','Hyderabad','Telangana','2023-02-10'),
(103,'Rohan Verma','9876543212','rohan@gmail.com','Bengaluru','Karnataka','2023-03-05'),
(104,'Sneha Patel','9876543213','sneha@gmail.com','Mumbai','Maharashtra','2023-04-18'),
(105,'Arjun Rao','9876543214','arjun@gmail.com','Chennai','Tamil Nadu','2023-05-22'),
(106,'Meera Nair','9876543215','meera@gmail.com','Kochi','Kerala','2023-06-12'),
(107,'Kabir Singh','9876543216','kabir@gmail.com','Delhi','Delhi','2023-07-08'),
(108,'Ananya Das','9876543217','ananya@gmail.com','Kolkata','West Bengal','2023-08-14'),
(109,'Vikram Joshi','9876543218','vikram@gmail.com','Pune','Maharashtra','2023-09-20'),
(110,'Priya Iyer','9876543219','priya@gmail.com','Hyderabad','Telangana','2023-10-02');

-- ==================================================
-- Insert Data into Products Table
-- ==================================================

INSERT INTO Products (
ProductID,
ProductName,
Department,
Category,
Brand,
UnitPrice,
StockQuantity
)
VALUES
(201,'Wireless Mouse','Electronics','Accessories','Logitech',899.00,120),
(202,'Mechanical Keyboard','Electronics','Accessories','Redragon',2999.00,75),
(203,'Gaming Monitor','Electronics','Displays','LG',18999.00,40),
(204,'PlayStation 5','Gaming','Console','Sony',54990.00,18),
(205,'DualSense Controller','Gaming','Accessories','Sony',5990.00,60),
(206,'Smart TV 55 Inch','Electronics','Television','Samsung',64999.00,25),
(207,'Refrigerator','Home Appliances','Kitchen','LG',48999.00,22),
(208,'Microwave Oven','Home Appliances','Kitchen','IFB',10999.00,45),
(209,'Smartphone','Electronics','Mobile','Samsung',32999.00,80),
(210,'Fast Charger 65W','Electronics','Accessories','OnePlus',1999.00,150),
(211,'Bluetooth Speaker','Electronics','Audio','JBL',4999.00,65);

-- ==================================================
-- Insert Data into Orders Table
-- ==================================================

INSERT INTO Orders (
OrderID,
CustomerID,
OrderDate,
PaymentMethod,
SalesChannel
)
VALUES
(301,101,'2024-11-02','UPI','Online'),
(302,102,'2024-11-03','Cash','Offline'),
(303,103,'2024-11-09','Debit Card','Offline'),
(304,101,'2024-11-10','UPI','Online'),
(305,104,'2024-11-16','EMI','Online'),
(306,105,'2024-11-17','Debit Card','Offline'),
(307,106,'2024-11-23','UPI','Online'),
(308,107,'2024-11-24','Cash','Offline'),
(309,108,'2024-11-30','EMI','Online'),
(310,109,'2024-12-01','UPI','Online'),
(311,110,'2024-12-07','Debit Card','Offline'),
(312,101,'2024-12-08','UPI','Online');

-- ==================================================
-- Insert Data into OrderDetails Table
-- ==================================================

INSERT INTO OrderDetails (
OrderDetailsID,
OrderID,
ProductID,
Quantity,
UnitPrice
)
VALUES
(401,301,201,2,899.00),
(402,302,202,1,2999.00),
(403,303,203,1,18999.00),
(404,304,205,2,5990.00),
(405,305,204,1,54990.00),
(406,306,208,1,10999.00),
(407,307,209,1,32999.00),
(408,308,210,3,1999.00),
(409,309,206,1,64999.00),
(410,310,211,2,4999.00),
(411,311,207,1,48999.00),
(412,312,201,1,899.00),
(413,312,210,2,1999.00);
