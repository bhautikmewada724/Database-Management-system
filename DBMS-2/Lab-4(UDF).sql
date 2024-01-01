----Scalar Valued Functions----

--1--
Alter Function hello2()
returns varchar(100)
as 
begin
	declare @str varchar(100)
	Set @str = 'Hello World From UDF!' 
	return @str
end

Select dbo.hello2()

--2--
Create Function fun_AddNumber(@num1 int , @num2 int)
returns int
as 
begin
	declare @result int
	set @result = @num1 + @num2
	return @result
end

Select dbo.fun_AddNumber(5,5)

--3--
Create Function fun_CubeOfNum(@num int)
returns int
as 
begin
	declare @result int
	set @result = @num*@num*@num
	return @result
end
Select dbo.fun_CubeOfNum(2)

--4--
Create Function fun_Even_Odd(@num int)
returns varchar(100)
as
begin
	declare @result varchar(100)
	if(@num % 2 = 0)
		set @result = 'Even Number'
	else
		set @result = 'Odd Number'
	return @result
end

Select dbo.fun_Even_Odd(7)

--5--
CREATE FUNCTION compare_integers (@a INT, @b INT)
RETURNS VARCHAR(255) 
AS
BEGIN
RETURN(
  CASE	

		WHEN @a = @b THEN  'a is equal to b'
		WHEN @a < @b THEN  'a is less than b'
		ELSE 'a is greater than b'

  END
  )
END
SELECT DBO.compare_integers(5,5)

--6--
Alter Function fun_FirstNNum(@num int)
returns varchar(100)
as
begin
	declare @i int, @result varchar(100) = ' '
	set @i = 1

	while(@i <= @num)
	begin
		set @result = @result+Cast(@i as varchar(10))+' '
		set @i = @i+1
	end
	return @result
end

Select dbo.fun_FirstNNum(10)

--7--
Alter Function fun_Even_Sum(@num int)
returns int
as 
begin
	declare @i int = 1, @result int = 0
	while(@i<=@num)
	begin
		if(@i % 2 = 0)
		set @result = @result + @i
		set @i = @i + 1
	end
	return @result
end

Select dbo.fun_Even_Sum(20)

--8--
Alter Function fun_Prime(@num int)
returns varchar(100)
as 
begin
	declare @result varchar(100) = 0 ,@count int = 0 , @i int = 1
	while( @i <= @num)
	begin
	if(@num % @i = 0)
	set @count = @count + 1
	set @i = @i + 1
	end
	if(@count = 2)
	set @result = 'Prime Number'
	else
	set @result = 'Not a Prime Number'
	return @result
end

Select dbo.fun_Prime(12)

--9--
Create Function fun_DateDifference(@startdate varchar(50) , @enddate varchar(50))
returns varchar(50)
as 
begin 
	declare @result varchar(50)
	set cast(@result as date)= DATEDIFF(day , Cast(@startdate as date) , Cast(@enddate as date))
	return @result
end

Select dbo.fun_DateDifference(05-07-2021 , 05-07-2022)


------Table Valued Functions------


--1
Create Function start_Name(firstname varchar(100))
returns table (
	firstname varchar(100)
)
return table(
	Select FirstName from Person
	where Person.firstname like 'B%'
);

--OR
Alter Function fun_startNameWithB()
returns table
as
return(
	Select * from Person
	where Person.firstname like 'B%'
);
	
select * from dbo.fun_startNameWithB()

---2
Create Function unique_Name()
returns table
as
return(
	Select Distinct FirstName from Person
);
select * from dbo.unique_Name()

--OR
Alter function fun_DistinctFirstName()
	returns table
	as
		return (select distinct FirstName from Person)

	--------
	select * from dbo.fun_DistinctFirstName()


----3
Alter function fun_PersonsDetail(@departmentId int)
	returns table
	as
	   return (select firstname from Person where DepartmentID = @departmentId)
	
	-------
	select * from dbo.fun_PersonsDetail(5)

