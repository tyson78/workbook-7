/* Workbook-7 nested-queries */

USE northwind;

-- Q1
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM Products);

-- Q2
SELECT OrderID, ShipName, ShipAddress
FROM Orders
WHERE ShipVia  = (SELECT ShipperID FROM Shippers 
			WHERE CompanyName LIKE '%Federal Shipping%');

-- Q3
SELECT OrderID, ProductID
FROM `Order Details`
WHERE ProductID = (SELECT ProductID FROM Products 
			WHERE ProductName LIKE '%Sasquatch Ale%');

-- Q4
SELECT FirstName, LastName
FROM Employees
WHERE EmployeeID = (SELECT EmployeeID FROM Orders
				WHERE OrderID = '10266');
                
-- Q5
SELECT customers.ContactName
FROM customers
JOIN orders ON customers.CustomerID = orders.CustomerID
WHERE orders.OrderID = 10266;