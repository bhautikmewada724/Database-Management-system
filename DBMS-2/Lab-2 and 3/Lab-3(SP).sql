----Stored Procedure(Lab3)

---1.Create Procedure that show detail of first 3 persons.
Alter Proc SPPerson_FirstThreeDetails
as
begin
Select Top (3)*  from Person
	Left Outer Join Department
	on Person.DepartmentId = Department.DepartmentId
	Left Outer Join Designation
	on Person.DesginationId = Designation.DesignationID
end

EXEC dbo.SPPerson_FirstThreeDetails

---2.Create Procedure that takes department name as input and returns a table with all workers working in that department.
Alter Proc SPProc_2
@DepartmentName varchar(100)
as 
begin
Select FirstName from Person
Inner Join Department
on Department.DepartmentId = Person.DepartmentId
end

Exec SPProc_2 'HR'

---4
Alter Proc SPQuery_4
@Firstname varchar(100)
as 
begin
Select FirstName from Person
	Left Outer Join Department
	on Person.DepartmentId = Department.DepartmentId
	Left Outer Join Designation
	on Person.DesginationId = Designation.DesignationID
end

EXEC dbo.SPQuery_4 'Rahul'

--5
Create Proc SPMaxMinTotal_DepartmentWiseSalary
as 
begin
Select Max(Salary) as MAXSALARY , Min(Salary) As MINSALARY , Sum(Salary) As TotalSalary
from Person
Left Outer Join Department
on Person.DepartmentId = Department.DepartmentId
end

EXEC SPMaxMinTotal_DepartmentWiseSalary

---6
Create Proc SPMaxMinTotal_DesignationwiseSalary
as 
begin
Select Max(Salary) as MAXSALARY , Min(Salary) As MINSALARY , Sum(Salary) As TotalSalary
from Person
Left Outer Join Designation
	on Person.DesginationId = Designation.DesignationID
end

EXEC SPMaxMinTotal_DesignationwiseSalary

