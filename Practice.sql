//Day-1

CREATE TABLE Emp
(
Emp_id int,
Emp_name nvarchar(28),
Emp_email nvarchar(28),
Emp_phone bigint
)

SELECT * FROM Emp

INSERT INTO Emp
values(
100,
'Nani',
'nani@gmail.com',
7890373640
)

INSERT INTO Emp
values(
200,
'Sashank',
'Sashank@gmail.com',
7890373641
)

INSERT INTO Emp
values(
300,
'Abhi',
'Abhi@gmail.com',
9890373641
)

INSERT INTO Emp
values(
400,
'Jeevan',
'Jeevan@gmail.com',
6890373641
)

//Day-2

Update Emp
set Emp_name='Nani143'
Where Emp_id=100

Delete from Emp
Where Emp_id=200

Truncate table Emp

Drop table Emp

//Day-3

USE SqlPractice

Update Emp set Emp_email=Null where Emp_id=300

//Day-4
create table Dept
(
deptno int primary Key,
deptname varchar(50)
)

insert into Dept
values
(100,'CSE'),
(200,'EEE'),
(300,'ECE')

Alter table Dept
Add constraint fk_dept
foreign key(deptno) references dept(deptno)

select distinct(deptno) from Dept
Select * from Dept

//Day-5
CREATE SCHEMA Sales

create table Sales.Emp
(
Empid int,
Empname varchar(50),
Empemail varchar(50)
)

insert into Sales.Emp
values(101,'Nani','Nani@gamil.com')

select * from Sales.Emp