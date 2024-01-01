----Select All PK
----Department
Alter Proc SPDepartment_SelectPK
@DepartmentID int
as 
begin
	Select DepartmentId,DepartmentName From Department
		   where DepartmentId = @DepartmentId
end

Exec dbo.SPDepartment_SelectPK 1

-----Designation
Alter Proc SPDesignation_SelectPK
@DesignationID int
as 
begin
	Select DesignationID,DesignationName From Designation
		   where DesignationID = @DesignationID
end

Exec dbo.SPDesignation_SelectPK 3

-----Person
Alter Proc SPPerson_SelectPK
@WorkerID int
as 
begin
	Select WorkerId,FirstName,LastName,Salary,JoiningDate From Person
		   where WorkerId = @WorkerID
end

Exec dbo.SPPerson_SelectPK 102