---------------
Create Procedure SPDepartment_Insert
	@DepartmentID int,
	@DepartmentName varchar(100)
as 
begin 
	Insert Into Department(DepartmentId,DepartmentName)
	Values(@DepartmentID , @DepartmentName)
end

Exec SPDepartment_Insert 1,'Admin'
Exec SPDepartment_Insert 2,'IT'
Exec SPDepartment_Insert 3,'HR'
Exec SPDepartment_Insert 4,'Account'

Select * From Department



--------
Alter Procedure SPDesignation_Insert
	@DesignationID int,
	@DesignationName varchar(100)
as 
begin 
	Insert Into Designation(DesignationID,DesignationName)
	Values(@DesignationID , @DesignationName)
end

Exec SPDesignation_Insert 11,'Jobber'
Exec SPDesignation_Insert 12,'Welder'
Exec SPDesignation_Insert 13,'Clerk'
Exec SPDesignation_Insert 14,'Manager'
Exec SPDesignation_Insert 15,'CEO'

Select * From Designation



---------------------
Create Procedure SPPerson_Insert
	@WorkerID int ,
	@FirstName varchar(100),
	@LastName varchar(100),
	@Salary decimal(8,2),
	@JoiningDate datetime,
	@DepartmentID int,
	@DesignationID int
as 
begin
	Insert Into Person(WorkerId , FirstName , LastName , Salary , JoiningDate , DepartmentId , DesginationId)
	Values(@WorkerID , @FirstName , @LastName , @Salary , @JoiningDate , @DepartmentID , @DesignationID)
end

Exec SPPerson_Insert 101,'Rahul','Anshu',56000,'1990-01-01',1,12
Execute SPPerson_Insert 102,'Hardik','Hinsu',18000,'1990-09-25',2,11
Execute SPPerson_Insert 103,'Bhavin','Kamani',25000,'1991-05-14',Null,11
Execute SPPerson_Insert 104,'Bhoomi','Patel',39000,'2014-02-20',1,13
Execute SPPerson_Insert 105,'Rohit','Rajgor',17000,'1990-07-23',1,12
Execute SPPerson_Insert 106,'Priya','Mehta',25000,'1990-10-18',1,12
Execute SPPerson_Insert 107,'Neha','Trivedi',18000,'2014-02-20',1,12

Select * From Person