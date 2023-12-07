/* Workbook-7 joins */

USE northwind;

-- Q1
SELECT ProductID, ProductName, UnitPrice, CategoryName
FROM Products
JOIN Categories
ON Products.CategoryID = Categories.CategoryID
ORDER BY CategoryName, ProductName;

-- Q2
SELECT ProductID, ProductName, UnitPrice, CompanyName
FROM Products
JOIN Suppliers
ON Products.SupplierID = Suppliers.SupplierID
WHERE UnitPrice > 75
ORDER BY ProductName;

-- Q3
SELECT ProductID, ProductName, UnitPrice, 
		Categories.CategoryName, 
		Suppliers.CompanyName AS SupplierName
FROM Products
JOIN Suppliers
ON Products.SupplierID = Suppliers.SupplierID
JOIN Categories
ON Products.CategoryID = Categories.CategoryID
ORDER BY ProductName;

-- Q4
SELECT ProductName, CategoryName
FROM Products
JOIN Categories
ON Products.CategoryID = Categories.CategoryID
WHERE Products.UnitPrice = (SELECT MAX(UnitPrice) AS Price
                        FROM Products
                        GROUP BY CategoryID) 
ORDER BY ProductName; 
                  
-- finding max price query
SELECT MAX(UnitPrice) AS Price, CategoryID
                        FROM Products
                        GROUP BY CategoryID;
                    
-- Q5
SELECT OrderID, ShipName, ShipAddress, Shippers.CompanyName,
ShipCountry
FROM Orders
JOIN Shippers
ON Orders.ShipVia = Shippers.ShipperID
WHERE ShipCountry LIKE '%Germany%'
ORDER BY OrderID;

-- Q6
SELECT Orders.OrderID, Orders.OrderDate, 
Orders.ShipName, Orders.ShipAddress, Products.ProductName
FROM Orders
JOIN `Order Details`
ON Orders.OrderID = `Order Details`.OrderID
JOIN Products
ON `Order Details`.ProductID = Products.ProductID
WHERE Products.ProductName LIKE '%Sasquatch Ale%'
ORDER BY Orders.OrderID;


SELECT * FROM Products;







