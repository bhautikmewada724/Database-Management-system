--Lab 10(Joins)--

--1--
Select * from Student 
Cross Join Result

--2--
Select
     Student.Rno,
	 Student.Name,
	 Student.Branch,
	 Result.SPI from Student
Inner Join result
on Student.Rno=Result.Rno
Where Branch='CE' 

--3--
Select 
     Student.Rno,
	 Student.Name,
	 Student.Branch,
	 Result.SPI from Student
Inner Join result
on Student.Rno=Result.Rno
Where Branch<>'EC'

--4--
Select Student.branch,Avg(SPI) from Student
Left Outer Join Result
on Student.Rno=Result.Rno
Group by Student.Branch

--5--
Select Student.Branch,Avg(SPI) from Student
Inner Join Result
on Student.Rno=Result.Rno
Group by Student.Branch
Order by Avg(SPI)

--6--
Select Student.Branch,Avg(SPI) from Student
Inner Join result
on Student.Rno=Result.Rno
Where Student.Branch='CE' or Student.Branch='ME'
Group by Student.Branch

--7--
Select * From Student
Left Outer Join Result
On Student.Rno=Result.Rno

--8--
Select * from student
Right Outer Join Result
on Student.Rno=Result.Rno

--9--
Select * from student
Full Outer Join Result
on Student.Rno=Result.Rno

Select * from Employee
--10--
Select Emp.EmployeeNo ,Emp.Name as EMPName,Emp.Managerno
from Employee as Emp
Left Outer Join	Employee As Mgr
on Emp.Managerno = Mgr.EmployeeNo





