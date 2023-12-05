USE northwind;
/* Workbook 7 - */

-- Q1
SELECT * FROM Products;

-- Q2
SELECT ProductID, ProductName, UnitPrice
FROM Products;

-- Q3
SELECT ProductID, ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice ASC;

-- Q4
SELECT ProductName, UnitPrice FROM Products
WHERE UnitPrice <= '7.50';

-- Q5
SELECT ProductName, UnitPrice, UnitsInStock FROM Products
WHERE UnitsInStock >= '100'
ORDER BY UnitPrice DESC;

-- Q6
SELECT ProductName, UnitPrice, UnitsInStock FROM Products
WHERE UnitsInStock >= '100'
ORDER BY UnitPrice DESC, ProductName;