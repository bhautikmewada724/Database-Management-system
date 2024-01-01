CREATE DATABASE PERSON_INFO_1118

Select * from Person
Select * from Department

--1--
Select Person.PersonName , Department.DepartmentName , Department.DepartmentCode
from Person
Left Outer Join Department
on Person.DepartmentID = Department.DepartmentID

--2--
Select Person.PersonName,Department.Location from Person 
Inner Join Department
on Person.DepartmentID = Department.DepartmentID
where Location = 'C-Block'

--3--
Select Person.PersonName,Person.Salary,Department.DepartmentName
from Person
Inner Join Department
on Person.DepartmentID = Department.DepartmentID
where City = 'Jamnagar'

--4--
Select Person.PersonName,Person.Salary,Department.DepartmentName
from Person
Inner Join Department
on Person.DepartmentID = Department.DepartmentID
where City <> 'Rajkot'


--5--
Select * from Person 
Inner Join Department
on Person.DepartmentID = Department.DepartmentID
where DepartmentName = 'Computer'

--6--
Select * from Person 
Left Outer Join Department
on Person.DepartmentID = Department.DepartmentID
where Department.DepartmentID is Null

--7--
Select Person.PersonName From Person
Left Outer Join Department
on Person.DepartmentID = Department.DepartmentID
where Department.DepartmentName = 'Civil' and JoiningDate > 1-08-2001 


--8--
Select Person.PersonName,Department.DepartmentName from Person
Inner Join Department
on Person.DepartmentId = Department.DepartmentId
where getdate()-JoiningDate>365

--9--
Select Count(Person.PersonId) as CountOfDepartment,Department.DepartmentName from Person 
Inner Join Department
on Person.DepartmentId = Department.DepartmentId
Group By Department.DepartmentName

--10--
Select Max(Person.Salary) as MaxSalary,Min(Person.Salary) as MinSalary,Department.DepartmentName  from Person 
Inner Join Department
on Person.DepartmentId = Department.DepartmentId
Group By Department.DepartmentName

--11--
Select Sum(Person.Salary) as TotalSalary, Avg(Person.Salary) as AvgSalary, Max(Person.Salary) as MaxSalary,Min(Person.Salary) as MinSalary,Person.City  from Person 
Group By Person.City


--12--
Select Department.DepartmentName,Sum(Person.Salary) from Person
Inner Join Department
on Person.DepartmentId = Department.DepartmentId
Group by Department.DepartmentName 
Having Sum(Person.Salary)>100000


--13--
Select Avg(Person.Salary) as AvgSalary from Person
where Person.City = 'Ahemdabad'

--14--
Select Department.DepartmentName from Person
Inner Join Department
on Person.DepartmentId = Department.DepartmentId
where Person.PersonId = Null

--15--
Select Department.DepartmentName, Count(Person.DepartmentId) from Person
Inner Join Department
on Person.DepartmentId = Department.DepartmentId
Group by Department.DepartmentName
having Count(Person.DepartmentId)>2

--16--
Select Person.PersonName  + 'lives in ' +Person.City + ' and works in ' +Department.DepartmentName +' Department'
from Person 
Inner Join Department
on Person.DepartmentId = Department.DepartmentId

--17--
Select Person.PersonName  + 'earns ' +convert(varchar(100),Person.Salary) + ' from Department ' +Department.DepartmentName +' Department'
from Person 
Inner Join Department
on Person.DepartmentId = Department.DepartmentId
 

--18--
Select Sum(Person.Salary) as TotalSalary , Avg(Person.Salary) as AverageSalary , Max(Person.Salary) as MaximumSalary,
Person.City,Department.DepartmentName
from Person
Inner Join Department
on Person.DepartmentId = Department.DepartmentId
Group by Person.City,Department.DepartmentName

--19--
Update Person 
set Salary = Salary + Salary*0.1 from Person 
Inner Join Department
on Person.DepartmentId = Department.DepartmentId
where Department.DepartmentName = 'Computer' 