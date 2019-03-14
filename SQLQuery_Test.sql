-- 1.1 Query that lists all customers in paris or london inc customerID, companyname, and all address fields.

-- SELECT CustomerID, CompanyName, Address +' '+ City + ' ' + Country + ' '+ PostalCode AS "Address" 
-- FROM Customers WHERE City='Paris' OR City='London';
-- ***************************************************************************************************************************************

-- 1.2 List all products stored in bottles

-- SELECT ProductName, QuantityPerUnit FROM Products WHERE QuantityPerUnit LIKE '%bottle%';
-- ***************************************************************************************************************************************

-- 1.3 Same as above but added Supplier name and Country

-- SELECT ProductName, QuantityPerUnit, p.SupplierID, Country 
-- FROM Products p
-- INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
-- WHERE QuantityPerUnit LIKE '%bottle%';
-- ***************************************************************************************************************************************

-- 1.4 Shows how many products are in each category; including category name in result set and listing the highest number first.

-- SELECT COUNT(c.CategoryName) AS "Total", c.CategoryName
-- FROM Categories c 
-- INNER JOIN Products p ON c.CategoryID = p.CategoryID
-- GROUP BY CategoryName;
-- ***************************************************************************************************************************************

-- 1.5 List all UK employees joining their title of courtesy, first name and last name. Including their city of residence.

-- SELECT TitleOfCourtesy + ' '+ FirstName + ' '+ LastName AS "Full Name", City AS "City of Residence" 
-- FROM Employees WHERE Country='UK';
-- ***************************************************************************************************************************************

-- 1.6 List Sales Totals for all Sales Regions (via the Territories table using 4 joins) with a Sales Total greater than 1,000,000.
-- Using FORMAT to present the numbers.

-- SELECT FORMAT(SUM(UnitPrice * Quantity * (1-Discount)),'C') AS "Sales Total", RegionDescription AS "Sales Region" 
-- FROM Territories t 
-- INNER JOIN Region r ON t.RegionID = r.RegionID
-- INNER JOIN EmployeeTerritories et ON t.TerritoryID = et.TerritoryID
-- INNER JOIN Orders o ON et.EmployeeID = o.EmployeeID
-- INNER JOIN [Order Details] od ON o.OrderID = od.OrderID
-- GROUP BY RegionDescription
-- HAVING SUM(UnitPrice * Quantity * (1-Discount))> 1000000
-- ORDER BY "Sales Total";
-- ***************************************************************************************************************************************

-- 1.7 Count how many Orders have a Freight amount greater than 100.00 and either USA or UK as Ship Country.

-- SELECT COUNT(*) AS "Orders From UK/USA With Frieght Above 100"  
-- FROM Orders WHERE Freight > 100 AND ShipCountry IN ('UK', 'USA')
-- ***************************************************************************************************************************************

-- 1.8 Write an SQL Statement to identify the Order Number of the Order with the highest amount of discount applied to that order.

-- SELECT TOP 1 OrderID, FORMAT(SUM(UnitPrice * Quantity * Discount), 'C') AS "Highest Discount Applied" FROM [Order Details]
-- GROUP BY OrderID
-- ORDER BY SUM(UnitPrice * Quantity * Discount) DESC 
-- ***************************************************************************************************************************************

-- 2.1 Design and build a suitable set of fully normalised tables to store information
-- 2.2 Create statements that allow the creation and recreation of the database made previously

-- CREATE DATABASE SpartaAcademy_db;
-- DROP TABLE CourseSchedule, CourseScheduleTrainers, CourseScheduleAttendees, Rooms, Academies, CourseCatalog, Employees;

-- CREATE TABLE Academies(
--     AcademyID INT NOT NULL IDENTITY PRIMARY KEY,
--     AcademyName VARCHAR (20)
-- )

-- CREATE TABLE Rooms(
--     RoomID INT NOT NULL IDENTITY PRIMARY KEY,
--     AcademyID INT NOT NULL FOREIGN KEY REFERENCES Academies(AcademyID),
--     RoomName VARCHAR (20),
--     Description VARCHAR (50),
--     Capacity INT NOT NULL
--     check(Capacity <=25)
-- )

-- CREATE TABLE CourseCatalog(
--     CourseID INT NOT NULL IDENTITY PRIMARY KEY,
--     CourseName VARCHAR (20),
--     Duration INT NULL
-- )

-- CREATE TABLE Employees(
--     EmployeeID INT NOT NULL IDENTITY PRIMARY KEY,
--     FirstName VARCHAR (10),
--     LastName VARCHAR (20),
--     EmployeeType VARCHAR (1)
--     check(EmployeeType = 'T' OR EmployeeType = 'S',
--     StartDate DATE NULL,

-- )

-- CREATE TABLE CourseSchedule(
--     CourseScheduleID INT NOT NULL IDENTITY PRIMARY KEY,
--     AcademyID INT NOT NULL FOREIGN KEY REFERENCES Academies(AcademyID),
--     RoomID INT NOT NULL FOREIGN KEY REFERENCES Rooms(RoomID),
--     CourseID INT NOT NULL FOREIGN KEY REFERENCES CourseCatalog(CourseID),
--     StartDate DATE NULL,
--     EndDate DATE NULL
-- )

-- CREATE TABLE CourseScheduleTrainers(
--     CourseScheduleID INT NOT NULL,
--     TrainerID INT NOT NULL FOREIGN KEY REFERENCES Employees(EmployeeID),
--     TrainerType VARCHAR (1)
--     check(TrainerType = 'A' OR TrainerType = 'T')
-- )

-- CREATE TABLE CourseScheduleAttendees(
--     CourseScheduleID INT NOT NULL,
--     AttendeeID INT NOT NULL FOREIGN KEY REFERENCES Employees(EmployeeID),
--     Active INT NOT NULL
-- )

-- INSERT INTO [Academies]
--            ([AcademyName])
-- VALUES
--            ('Richmond')
-- ;


-- INSERT INTO [Academies]
--            ([AcademyName])
-- VALUES
--            ('Birmingham')
-- ;

-- INSERT INTO [Academies]
--            ([AcademyName])
-- VALUES
--            ('Leeds')
-- ;

-- INSERT INTO [Rooms]
--            ([AcademyID]
--            ,[RoomName]
--            ,[Description]
--            ,[Capacity])
-- VALUES
--            (1
--            ,'Room 1'
--            ,'Next to the new Lo; sign'
--            ,12)
-- ;

-- INSERT INTO [Rooms]
--            ([AcademyID]
--            ,[RoomName]
--            ,[Description]
--            ,[Capacity])
-- VALUES
--            (1
--            ,'Room 2'
--            ,'Behind the new Sparta sign'
--            ,18)
-- ;
-- INSERT INTO [Rooms]
--            ([AcademyID]
--            ,[RoomName]
--            ,[Description]
--            ,[Capacity])
-- VALUES
--            (1
--            ,'Room 3'
--            ,'No air-con'
--            ,18)
-- ;

-- INSERT INTO [Rooms]
--            ([AcademyID]
--            ,[RoomName]
--            ,[Description]
--            ,[Capacity])
-- VALUES
--            (1
--            ,'Room 4'
--            ,'Has second door with number lock'
--            ,10)
-- ;

-- INSERT INTO [Rooms]
--            ([AcademyID]
--            ,[RoomName]
--            ,[Description]
--            ,[Capacity])
-- VALUES
--            (1
--            ,'Boardroom'
--            ,'Use as last resort'
--            ,14)
-- ;

-- INSERT INTO [CourseCatalog]
--            ([CourseName]
--            ,[Duration])
-- VALUES
--            ('BA-Test',
--            7)
-- ;
-- INSERT INTO [CourseCatalog]
--            ([CourseName]
--            ,[Duration])
-- VALUES
--            ('Engineering',
--            12)
-- ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
--            ,[StartDate]
--            )
-- VALUES
-- 	 		     ('Tim','Cawte','T','07/14/2017')
-- 				 ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
--            ,[StartDate]
--            )
-- VALUES
-- 	 		     ('Richard','Gurney','T','07/01/2017')
-- ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
-- VALUES
-- 	 		     ('Adam','Smith','S')
-- ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
-- VALUES
-- 	 		     ('John','Williams','S')
-- ;
-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
-- VALUES
-- 	 		     ('Nick','Willis','S')
-- ;
-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
-- VALUES
-- 	 		     ('Jenny','Jones','S')
-- ;
-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
-- VALUES
-- 	 		     ('Katie','Prince','S')
-- ;
-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
-- VALUES
-- 	 		     ('Peter','Brown','S')
-- ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
-- VALUES
-- 	 		     ('Mo','Khan','S')
-- ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
-- VALUES
-- 	 		     ('Juan','Carlos','S')
-- ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
-- VALUES
-- 	 		     ('Jan','Miller','S')
-- ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
-- VALUES
-- 	 		     ('Kyle','Carpenter','S')
-- ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
-- VALUES
-- 	 		     ('Alvarao','Carlos','S')
-- ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
-- VALUES
-- 	 		     ('Margaret','Baker','S')
-- ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
-- VALUES
-- 	 		     ('Oti','Mwase','S')
-- ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
-- VALUES
-- 	 		     ('Joe','Mann','S')
-- ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
-- VALUES
-- 	 		     ('Steve','Harris','S')
-- ;

-- INSERT INTO [Employees]
--             ([FirstName]
--             ,[LastName]
--             ,[EmployeeType]
            
--             )
-- VALUES
--                 ('Rob', 'Whitehouse', 'T')
-- ;

-- INSERT INTO [Employees]
--             ([FirstName]
--             ,[LastName]
--             ,[EmployeeType]
            
--             )
-- VALUES
--                 ('Giverny', 'Wilson-Martin', 'T')
-- ;

-- INSERT INTO [Employees]
--             ([FirstName]
--             ,[LastName]
--             ,[EmployeeType]
            
--             )
-- VALUES
--                 ('Yinka', 'Merit', 'S')
-- ;

-- INSERT INTO [Employees]
--             ([FirstName]
--             ,[LastName]
--             ,[EmployeeType]
            
--             )
-- VALUES
--                 ('Zac', 'Harrison', 'S')
-- ;

-- INSERT INTO [Employees]
--             ([FirstName]
--             ,[LastName]
--             ,[EmployeeType]
            
--             )
-- VALUES
--                 ('Tom', 'Shirely', 'S')
-- ;

-- INSERT INTO [dbo].[CourseSchedule]
--            ([AcademyID]
--            ,[RoomID]
--            ,[CourseID]
--            ,[StartDate]
--            ,[EndDate])
-- VALUES
--            (1
--            ,1
--            ,1
--            ,'01/15/2018'
--            ,'03/02/2018'
-- 		  )
-- ;

-- INSERT INTO [dbo].[CourseSchedule]
--            ([AcademyID]
--            ,[RoomID]
--            ,[CourseID]
--            ,[StartDate]
--            ,[EndDate])
-- VALUES
--            (1
--            ,4
--            ,2
--            ,'01/15/2018'
--            ,'03/02/2018'
-- 		  )
-- ;

-- INSERT INTO [dbo].[CourseSchedule]
--            ([AcademyID]
--            ,[RoomID]
--            ,[CourseID]
--            ,[StartDate]
--            ,[EndDate])
-- VALUES
--            (1
--            ,3
--            ,2
--            ,'01/22/2018'
--            ,'03/03/2018'
-- 		  )
-- ;
-- INSERT INTO [dbo].[CourseSchedule]
--            ([AcademyID]
--            ,[RoomID]
--            ,[CourseID]
--            ,[StartDate]
--            ,[EndDate])
-- VALUES
--            (2
--            ,4
--            ,2
--            ,'01/22/2018'
--            ,'03/03/2018'
-- 		  )
-- ;
-- INSERT INTO [CourseScheduleTrainers]
--            ([CourseScheduleID]
--            ,[TrainerID]
--            ,[TrainerType])
-- VALUES
--            (1
--            ,1
--            ,'T')
-- ;
-- INSERT INTO [CourseScheduleTrainers]
--            ([CourseScheduleID]
--            ,[TrainerID]
--            ,[TrainerType])
-- VALUES
--            (2
--            ,2
--            ,'T')
-- ;
-- INSERT INTO [CourseScheduleTrainers]
--            ([CourseScheduleID]
--            ,[TrainerID]
--            ,[TrainerType])
-- VALUES
--            (3
--            ,18
--            ,'T')
-- ;
-- INSERT INTO [CourseScheduleTrainers]
--            ([CourseScheduleID]
--            ,[TrainerID]
--            ,[TrainerType])
-- VALUES
--            (3
--            ,19
--            ,'T')
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
-- VALUES
--            (1
--            ,3
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
-- VALUES
--            (1
--            ,4
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
-- VALUES
--            (1
--            ,5
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
-- VALUES
--            (1
--            ,6
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
-- VALUES
--            (1
--            ,7
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
-- VALUES
--            (1
--            ,8
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
-- VALUES
--            (2
--            ,9
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
-- VALUES
--            (2
--            ,10
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
-- VALUES
--            (2
--            ,11
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
-- VALUES
--            (2
--            ,12
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
-- VALUES
--            (2
--            ,13
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
-- VALUES
--            (2
--            ,14
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
-- VALUES
--            (2
--            ,15
--            ,1)
-- ;
-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
-- VALUES
--            (2
--            ,20
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
-- VALUES
--            (2
--            ,21
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
-- VALUES
--            (2
--            ,22
--            ,1)
-- ;
-- ***************************************************************************************************************************************

-- 3.1 A report similar to the above table (see 2.1) from all 7 tables using one SQL statement; using FORMAT for the dates

-- SELECT cc.CourseName, FORMAT(cs.StartDate,'dd/MM/yy') AS "Start Date", 
-- FORMAT(cs.EndDate,'dd/MM/yy') AS "End Date", a.AcademyName, r.RoomName,
-- e1.FirstName + ' '+ e1.LastName AS "Trainer", e2.FirstName + ' '+ e2.LastName AS "Spartan"
-- FROM CourseSchedule cs
-- INNER JOIN Rooms r ON cs.RoomID = r.RoomID
-- INNER JOIN CourseCatalog cc ON cs.CourseID = cc.CourseID
-- INNER JOIN Academies a ON cs.AcademyID = a.AcademyID
-- INNER JOIN CourseScheduleTrainers cst ON cs.CourseScheduleID = cst.CourseScheduleID
-- INNER JOIN Employees e1 ON cst.TrainerID = e1.EmployeeID
-- INNER JOIN CourseScheduleAttendees csa ON cs.CourseScheduleID = csa.CourseScheduleID
-- INNER JOIN Employees e2 ON csa.AttendeeID = e2.EmployeeID;
-- ***************************************************************************************************************************************

-- 3.2 Repeat 3.1 but concatinate Spartan names into Initials

-- SELECT cc.CourseName, FORMAT(cs.StartDate, 'dd/MM/yy') AS "Start Date", 
-- FORMAT(cs.EndDate,'dd/MM/yy') AS "End Date", a.AcademyName, r.RoomName, 
-- e1.FirstName + ' '+ e1.LastName AS "Trainer", LEFT(e2.FirstName,1) + ' '+ LEFT(e2.LastName,1) AS "Spartan Initials"
-- FROM CourseSchedule cs
-- INNER JOIN Rooms r ON cs.RoomID = r.RoomID
-- INNER JOIN CourseCatalog cc ON cs.CourseID = cc.CourseID
-- INNER JOIN Academies a ON cs.AcademyID = a.AcademyID
-- INNER JOIN CourseScheduleTrainers cst ON cs.CourseScheduleID = cst.CourseScheduleID
-- INNER JOIN Employees e1 ON cst.TrainerID = e1.EmployeeID
-- INNER JOIN CourseScheduleAttendees csa ON cs.CourseScheduleID = csa.CourseScheduleID
-- INNER JOIN Employees e2 ON csa.AttendeeID = e2.EmployeeID;
-- ***************************************************************************************************************************************

-- 3.3 Add a new column after End Date called “Check Date” 
-- which uses DATEADD to add 8 weeks to the Start Date column for BA Test courses and 12 weeks for any others

-- SELECT cc.CourseName, FORMAT(cs.StartDate,'dd/MM/yy') AS "Start Date", FORMAT(cs.EndDate,'dd/MM/yy') AS "End Date", 
-- CASE
-- WHEN cc.CourseName='BA-Test' THEN FORMAT(DATEADD(d,56,cs.StartDate),'dd/MM/yy')
-- ELSE FORMAT(DATEADD(d,84,cs.StartDate),'dd/MM/yy')
-- END AS "Check Date",
-- a.AcademyName, r.RoomName, e1.FirstName + ' '+ e1.LastName AS "Trainer", 
-- LEFT(e2.FirstName,1) + ' '+ LEFT(e2.LastName,1) AS "Spartan Initials"
-- FROM CourseSchedule cs
-- INNER JOIN Rooms r ON cs.RoomID = r.RoomID
-- INNER JOIN CourseCatalog cc ON cs.CourseID = cc.CourseID
-- INNER JOIN Academies a ON cs.AcademyID = a.AcademyID
-- INNER JOIN CourseScheduleTrainers cst ON cs.CourseScheduleID = cst.CourseScheduleID
-- INNER JOIN Employees e1 ON cst.TrainerID = e1.EmployeeID
-- INNER JOIN CourseScheduleAttendees csa ON cs.CourseScheduleID = csa.CourseScheduleID
-- INNER JOIN Employees e2 ON csa.AttendeeID = e2.EmployeeID;
-- ***************************************************************************************************************************************
