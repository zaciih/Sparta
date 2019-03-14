-- CREATE DATABASE my_db;

-- USE my_db;
-- CREATE TABLE film_table(
--     film_name VARCHAR(20),
--     film_type VARCHAR(15)
-- )
-- Get information about the table
-- SP_HELP film_table
 
-- Delete the table
-- DROP TABLE film_table
 
-- CREATE TABLE film_table (
-- film_id INT NOT NULL IDENTITY PRIMARY KEY,
-- film_name VARCHAR (20),
-- genre VARCHAR(15),
-- release_date DATE,
-- director VARCHAR(20),
-- writer VARCHAR(20),
-- star VARCHAR(20),
-- film_language VARCHAR(15),
-- official_website VARCHAR(20),
-- plot_summary TEXT NOT NULL DEFAULT 'No current summary is available'
-- )
 
-- SP_HELP film_table
 
-- ALTER TABLE film_table
-- Add a new column
-- ADD run_time INT;

-- Edit existing column
-- ALTER COLUMN film_name VARCHAR (20) NOT NULL;

-- alter existing column with default value
-- ADD CONSTRAINT df_summary DEFAULT 'No current summary available' FOR summary;
 
-- Seed data to table
-- INSERT INTO table_name (col1, col2, ...) VALUES (val1, ...)

-- INSERT INTO film_table (film_name, genre, director, film_language) VALUES ('Jaws', 'Thriller', 'Spielberg', 'English');
-- INSERT INTO film_table (film_name, genre, director, film_language) VALUES ('Hot Fuzz', 'Comedy', 'Edgar Wright', 'English');
-- INSERT INTO film_table (film_name, genre, director, film_language) VALUES ('Shaun of the Dead', 'Comedy', 'Edgar Wright', 'English');
-- INSERT INTO film_table (film_name, genre, director, film_language) VALUES ('Alien', 'Horror', 'Ridley Scott', 'English');
 
-- Update table data
-- UPDATE table SET attribute WHERE query
-- UPDATE film_table SET genre='Horror' WHERE film_name='Jaws'

-- Delete table data
-- DELETE FROM film_table WHERE director='Edgar Wright';


-- Queries
-- * = universal selector character - returns all columns 
-- SELECT col1,col2,.. FROM table_name WHERE query ORDER BY col_name
-- SELECT * FROM film_table ORDER BY director;

-- SELECT TOP x - returns the top x products from the results
-- <,>, <=, >=, != (not equal to) still work! even with letters!
-- AND/OR work just like if statements

-- SELECT * FROM Products WHERE Discontinued='1' AND UnitsInStock!=0 ORDER BY UnitPrice DESC;
-- SELECT ProductName, UnitPrice, UnitsInStock FROM Products WHERE UnitPrice<=30 AND UnitsInStock>0;

-- DISTINCT returns results without duplicates
-- SELECT DISTINCT City FROM Customers;

-- Wildcard searches 
-- _ blank char, % any number of blank chars
-- [abc] range of values, [^abc] not this range
-- SELECT CustomerID, ContactName FROM Customers WHERE ContactName LIKE '[ABC]%' ORDER BY ContactName;

-- WHERE col_name IN ('option1', 'option2', 'option3',..) returns values which match any of the options
-- SELECT * FROM Customers WHERE Region IN ('AK', 'SP') ORDER BY Region;

-- BETWEEN - Selects values between a range of values
-- SELECT * FROM EmployeeTerritories WHERE TerritoryID BETWEEN 06897 AND 10038;

-- SELECT ProductName, ProductID FROM Products WHERE UnitPrice <5;
-- SELECT CategoryName FROM Categories WHERE CategoryName LIKE '[BS]%';
-- SELECT COUNT(*) FROM Orders WHERE EmployeeID=5 OR EmployeeID=7;

-- AS - Column name given an Alias
-- col1 + col2 will concatente the data
-- SELECT CompanyName AS "Company Name", city+', '+Country AS city FROM Customers;
-- SELECT CompanyName, city FROM Customers;

-- SELECT CompanyName AS "Company Name", city+', '+Country AS city, Region FROM Customers WHERE Region IS NULL;

-- SELECT DISTINCT Country FROM Customers WHERE Region IS NOT NULL;

-- Math operators
-- + = Addition, - = Subtraction, * = Multiply, / = Divide, % = Modulus

-- SELECT UnitPrice, Quantity, Discount, UnitPrice*Quantity*(1-Discount) AS "Net Total" FROM [Order Details] ORDER BY "Net Total";

-- ORDER BY col_name. DESC - Descending, ASC - Ascending 

-- String Functions 

-- SELECT UPPER(CompanyName), LEFT(PostalCode,CHARINDEX(' ',PostalCode)-1) AS "Post Code Area", LEN(REPLACE(CompanyName,' ','')), CHARINDEX(' ',PostalCode) AS "Index of White Space" FROM Customers WHERE Country='UK';

-- SELECT ProductName, CHARINDEX('''', ProductName) FROM Products WHERE CHARINDEX('''', ProductName)>0;

-- SELECT OrderID, YEAR(OrderDate) AS "Year of Order", MONTH(OrderDate) AS "Month of Order", DAY(OrderDate) AS "Day of Order" FROM Orders;

-- SELECT *, GETDATE() AS 'Current Date' FROM Orders;

-- SELECT OrderDate, DATEADD(m,5, OrderDate) AS "Due Date" FROM Orders;

-- Case Statements
-- Behaves like a Switch/If Statement
-- SELECT OrderID, CASE 
--     WHEN DATEDIFF(d,OrderDate,ShippedDate) < 7 THEN 'On Time'
--     ELSE 'Overdue'
--     END AS "Status" FROM Orders;
-- SELECT FirstName +' '+ LastName AS "Name", CASE
--     WHEN DATEDIFF(yyyy,BirthDate,GETDATE()) > 65 THEN 'Retired'
--     WHEN DATEDIFF(yyyy,BirthDate,GETDATE()) > 60 THEN 'Near Retirement'
--     ELSE 'Keep Working'
--     END AS "Retirement Status" FROM Employees ORDER BY "Retirement Status";

-- Aggregate Functions
-- SELECT SUM(UnitsOnOrder) AS "Total on Order",
--        AVG(UnitsOnOrder) AS "Average on Order",
--        MIN(UnitsOnOrder) AS "Min on Order",
--        MAX(UnitsOnOrder) AS "Max on Order"
-- FROM Products GROUP BY SupplierID;

-- SELECT CategoryID, AVG(ReorderLevel) AS "Average Reorder Level" FROM Products GROUP BY CategoryID ORDER BY "Average Reorder Level" DESC;

-- SELECT SupplierID, SUM(UnitsOnOrder) AS "Total on Order", AVG(UnitsOnOrder) AS "Average on Order" 
-- FROM Products GROUP BY SupplierID HAVING SUM(UnitsOnOrder) > 50;

-- Subqueries
-- Query for all the customers with orders then compares with list of all customers and returns customers without an order
-- SELECT CompanyName AS "Customer" FROM Customers WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);

-- SELECT OrderID, ProductID, UnitPrice, Quantity, Discount, (SELECT MAX(UnitPrice) FROM [Order Details]) AS "Max Price" FROM [Order Details];

-- UNION ALL - includes duplicates , UNION - returns unique values
-- SELECT EmployeeID AS "Employee/Supplier", FirstName +' '+ LastName AS "Employee Name" FROM Employees UNION ALL SELECT SupplierID, CompanyName FROM Suppliers;

-- SELECT OrderID, ProductID, UnitPrice, Quantity, Discount FROM [Order Details] 
-- WHERE ProductID IN (SELECT ProductID FROM Products WHERE Discontinued=1);

-- Suppliers and Products, SupplierID is common

-- SELECT Col1,col2,.. FROM left_table JOIN right_table ON left_col_key = right_col_key

-- SELECT p.SupplierID AS "Supplier ID", CompanyName AS "Company Name", AVG(UnitsonOrder)
-- FROM Products p 
-- INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID GROUP BY p.SupplierID, CompanyName;

-- SELECT ProductName, UnitPrice, CompanyName AS "Supplier", CategoryName AS "Category"
-- FROM Products p
-- INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
-- INNER JOIN Categories c ON p.CategoryID = c.CategoryID

-- SELECT CompanyName, Region, ProductName
-- FROM Suppliers s 
-- INNER JOIN Products p ON s.SupplierID = p.SupplierID;

-- SELECT OrderID, OrderDate, Freight, CompanyName AS "Customer", FirstName + ' '+ LastName AS "Employee Name"
-- FROM Orders o 
-- INNER JOIN Customers c ON o.CustomerID = c.CustomerID
-- INNER JOIN Employees e ON o.EmployeeID = e.EmployeeID;

-- Convert

-- SELECT OrderID, OrderDate FROM Orders;
-- Pre 2012 CONVERT(new_var_type, data_set, date_format_code)
-- SELECT OrderID, CONVERT(VARCHAR(100), OrderDate,103) FROM Orders;
-- Post 2012
-- SELECT OrderID, FORMAT(OrderDate, 'dd/MM/yyyy') FROM Orders;