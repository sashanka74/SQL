CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50) NOT NULL
);

INSERT INTO Department (DeptID, DeptName) VALUES
(100, 'CSE'),
(101, 'EEE'),
(102, 'ECE'),
(103, 'MECH');

select * from Department

--(ddl)
ALTER TABLE Department ADD StdName VARCHAR(50);

EXEC sp_rename 'dbo.Department.DeptID', 'StdID', 'COLUMN';

ALTER TABLE Department DROP COLUMN StdName;

--(dml)
UPDATE Department SET DeptName = 'CIVIL' WHERE StdID = 103;

DELETE FROM Department WHERE StdID = 103;

--(dql/sql)
SELECT * FROM Department;

SELECT DeptName FROM Department;

SELECT * FROM Department WHERE DeptName = 'CSE';

SELECT * FROM Department ORDER BY DeptName DESC;

--(tcl)
BEGIN TRANSACTION;

INSERT INTO Department (StdID, DeptName) VALUES (103, 'IT');
UPDATE Department SET DeptName = 'COMPUTER SCIENCE' WHERE StdID = 100;

COMMIT;

ROLLBACK;

CREATE TABLE Toppers (
    TopperID INT PRIMARY KEY,
    TopperName VARCHAR(50) NOT NULL
);

INSERT INTO  Toppers(TopperID , TopperName) VALUES
(100, 'Nani'),
(101, 'Sashank'),
(102, 'Abhi'),
(103, 'Jeevan');

select * from Toppers

--(ddl)
ALTER TABLE Toppers ADD TopperLocation VARCHAR(50);

EXEC sp_rename 'dbo.Toppers.TopperID', 'ToppersID', 'COLUMN';

ALTER TABLE Toppers DROP COLUMN TopperLocation;

--(dml)
UPDATE Toppers SET TopperName = 'Harsha' WHERE ToppersID = 101;

DELETE FROM Toppers WHERE ToppersID = 103;

--(dql/sql)
SELECT * FROM Toppers;

SELECT topperName FROM Toppers;

SELECT * FROM Toppers WHERE TopperName = 'Abhi';

SELECT * FROM Toppers ORDER BY TopperName ASC;

--(tcl)
BEGIN TRANSACTION;

INSERT INTO Toppers(ToppersID, topperName) VALUES (103, 'Jeevan');
UPDATE Toppers SET TopperName = 'Jeevan' WHERE ToppersID = 103;

COMMIT;

ROLLBACK;

--(set operations)
SELECT DeptName FROM Department
UNION ALL
SELECT TopperName FROM Toppers;

SELECT DeptName FROM Department
UNION
SELECT TopperName FROM Toppers;

SELECT DeptName FROM Department
INTERSECT
SELECT TopperName FROM Toppers;

SELECT DeptName FROM Department
EXCEPT
SELECT TopperName FROM Toppers;

--(cte tables)
WITH DeptCTE AS (
    SELECT StdID, DeptName
    FROM Department
    WHERE DeptName LIKE 'ECE'
)
SELECT * FROM DeptCTE;

WITH ToppersCTE AS (
    SELECT ToppersID, TopperName
    FROM Toppers
    WHERE TopperName LIKE 'Abhi'
)
SELECT * FROM ToppersCTE;

WITH CountCTE AS (
    SELECT COUNT(*) AS TotalDepts
    FROM Department
)
SELECT TotalDepts FROM CountCTE;

WITH CountCTE AS (
    SELECT COUNT(*) AS TotalToppers
    FROM Toppers
)
SELECT TotalToppers FROM CountCTE;
















