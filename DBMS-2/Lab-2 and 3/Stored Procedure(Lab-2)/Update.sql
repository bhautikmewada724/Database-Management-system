-----Person
Alter Proc SPPerson_Update
@WorkerId int , @FirstName varchar(100) , @LastName varchar(100) , @Salary decimal(8,2) , @JoiningDate Datetime
as 
begin
Update Person set FirstName = @FirstName,
				  LastName =  @LastName,
				  Salary = @Salary,
				  JoiningDate = @JoiningDate
where WorkerId = @WorkerId
end

Exec SPPerson_Update 102,'Bhautik','Mewada',65222,'02-07-2004'

-----Department
Create Proc SPDepartment_Update
@DepartmentId int , @DepartmentName varchar(100)
as
begin
Update Department set DepartmentName = @DepartmentName
where DepartmentId = @DepartmentId
end


------Designation
Create Proc SPDesignation_Update
@DesignationId int , @DesignationName varchar(100)
as
begin 
Update Designation set DesignationName = @DesignationName
where DesignationID = @DesignationId
end
