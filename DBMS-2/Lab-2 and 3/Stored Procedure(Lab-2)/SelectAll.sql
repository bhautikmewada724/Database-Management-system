Alter Proc SPPerson_SelectAll
as 
Begin
	Select * from Person
	Inner Join Department
	on Person.DepartmentId = Department.DepartmentId
	Inner Join Designation
	on Person.DesginationId = Designation.DesignationID
end

EXEC dbo.SPPerson_SelectAll

---Department
Alter Proc SPDepartment_SelectAll
as 
Begin
	Select * from Department
end

Exec dbo.SPDepartment_SelectAll

---Designation
Create Proc SPDesignation_SelectAll
as 
Begin
	Select * from Designation
end

Exec dbo.SPDesignation_SelectAll