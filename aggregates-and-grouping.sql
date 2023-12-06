-- workbook 7 - aggregates-and-grouping

USE northwind;

-- Q1
SELECT COUNT(SupplierID)
FROM Suppliers;

-- Q2
SELECT SUM(Salary)
FROM Employees;

-- Q3
SELECT MIN(UnitPrice)
FROM Products;

-- Q4
SELECT AVG(UnitPrice)
FROM Products;

-- Q5
SELECT MAX(UnitPrice)
FROM Products;

-- Q6
SELECT SupplierID, COUNT(ProductID)
FROM Products
GROUP BY SupplierID;

-- Q7
SELECT CategoryID, AVG(UnitPrice)
FROM Products
GROUP BY CategoryID;

-- Q8
SELECT SupplierID, COUNT(ProductID)
FROM Products
GROUP BY SupplierID
HAVING COUNT(ProductID) >= 5
ORDER BY SupplierID;

-- Q9
SELECT ProductID, ProductName, 
UnitPrice * UnitsInStock AS InventoryValue
FROM Products
GROUP BY ProductID
ORDER BY InventoryValue DESC, ProductName;

