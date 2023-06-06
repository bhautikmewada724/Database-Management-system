--Aggregate Functions
-- Lab-7

Select * from Students_Marks

--1
select COUNT(*)
from Students_Marks

--2
select SUM(Marks) as Total_Marks
from Students_Marks

--3
select AVG(Marks) as Average_Marks
from Students_Marks

--4
select MIN(Marks) as Minimum_Marks
from Students_Marks

--5
select MAX(Marks) as Maximum_Marks
from Students_Marks
