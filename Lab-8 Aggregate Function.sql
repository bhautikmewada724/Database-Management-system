--Aggregate Functions (Lab-8)

--Select * From Employee

--1
Select SUM(salary) As Total_Sal, 
	   AVG(salary) As Average_Sal,
	   MAX(salary) As Maximum,
	   MIN(salary) As Minimum
From Employee

--2
Select COUNT(EID) As Total_Employee
From Employee

--3 
Select MAX(salary) As Max_Sal_IT
From Employee
where Department = 'IT'

--4
Select COUNT(Distinct City) 
From Employee

--5
Select City, COUNT(*) As Total_Emp
From Employee
Where City is not null 
Group By City

--6
Select City, COUNT(City)  
From Employee
Group By City
Having COUNT(*) > 1

--7
Select Department, SUM(salary) 
From Employee
Group By Department

--8
Select AVG(salary) 
From Employee
Group By Department

--9
Select MIN(salary) 
From Employee
Where City = 'Ahmedabad'

--10
Select Department, SUM(salary) 
From Employee
Where City = 'Rajkot'
Group By Department
Having SUM(salary) > 5000

--11
Select COUNT(*) 
From Employee
Where City = 'Rajkot'

--12
Select MAX(salary)- MIN(salary) As SAL_DIFFERENCE
From Employee

--13
Select COUNT(*)
From Employee
Where JoiningDate < '1991-01-01'

--14
Select Department, SUM(salary)
From Employee
Group By Department
Having SUM(salary) > 35000
Order By SUM(salary)

--15
Select Department, COUNT(*) 
From Employee
Group By Department
Having COUNT(*) > 2

--16
Select MIN(salary) 
From Employee
Where City = 'Rajkot'

--17
Select City, COUNT(*) 
From Employee
Group By City

--18
Select Department, MIN(salary)
From Employee
Group By Department
Order By MIN(salary)

--19
Select SUM(salary) As TotalSalary_By_City
From  Employee
Group By City

--20
Select Department, MIN(salary), MAX(salary), SUM(salary)
From Employee
Group By Department


--Second Highest Salry
Select MAX(salary) From Employee
Where Salary < (Select MAX(salary) From Employee)