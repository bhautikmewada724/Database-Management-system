----Designation
Alter Proc SPDesignation_Delete
@DesignationId int
as
begin
Delete from Designation 
where DesignationId = @DesignationId
end


-----Person
Alter Proc SPPerson_Delete
@WorkerId int 
as 
begin
Delete From Person 
where WorkerId = @WorkerId
end


----Department
Create Proc SPDepartment_Delete
@DepartmentId int 
as 
begin
Delete From Department
where DepartmentId = @DepartmentId
end