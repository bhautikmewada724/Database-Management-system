--Lab-8 Exception Handling
--1.Handle Divide by Zero Error and Print message like: Error occurs that is - Divide by zero error.Declare  @var1 int;Declare @var2 int;Begin Try 		Set @var1=8;		Set @var2=@var1/0;End TryBegin Catch 		Print 'Error Occured That is: ' + Error_Message()End Catch--2. Try to convert string to integer and handle the error using try…catch block.Declare @variable varchar(50);	Declare @num int;		Begin Try				Set @variable  = 'Hello'				Set @num =  @variable		End Try		Begin Catch				Print ' Cannot convert string to integer '		End Catch;--3. Create a procedure that prints the sum of two numbers: take both numbers as integer & handle exception with all error functions if any one enters string value in numbers otherwise print result.
Create Proc SP_Sum
	@Num1 int,
	@Num2 int
As
Begin
		Declare @Result int
		Set @Result = @Num1 + @Num2
		Print 'The Result Is :' + Cast(@Result as Varchar) 
End;
		Begin Try
			Exec SP_Sum 1,Hello
		End Try
		Begin Catch
			Select Error_Number();
			Select Error_Message();
			Select Error_Severity();
			Select Error_State();
		End Catch

-- 4. Handle a Primary Key Violation while inserting data into customers table and print the error details such as the error message, error number, severity, and state.
	Begin Try
		Insert Into Customers Values(8 , 'Ankit' , 'bhau@15458gmail.com')
		-----------------
		Insert Into Customers Values(9 , 'Vraj' , 'bhautik1685@gmail.com')
	End Try
	Begin Catch 
		Print ('Error Caught Because Of Primary Key Violation');
	End Catch

--5. Throw custom exception using stored procedure which accepts Customer_id as input & that throws Error like no Customer_id is available in database.
Alter Proc SP_CusID
	@CustomerId int
	As
		Begin Try
			If Exists (Select * from Customers Where Customer_id = @CustomerId)
					Print 'Customer Id Is Available'
			Else
				Throw 50002, ' no Customer_id is available in database.',1;
		End Try
		Begin Catch
			Print 'Error Message :' + Error_Message();
		End Catch

Exec SP_CusID 10

--6. Handle a Foreign Key Violation while inserting data into Orders table and print appropriate error message.
Begin Try 
	Insert Into Orders 
	Values(2,3,'2023-09-12')
End Try

Begin Catch
	Print 'Error:' + Error_Message();
End Catch; 

--7. Throw custom exception that throws error if the data is invalid.
Create Proc SP_Invalid_Data
	@CId Int,
	@CName varchar(50),
	@Email varchar(50)

	As 
	Begin Try
		If @CId < 0
			Throw 50003,'Invalid Data',2;
		Else
			Insert Into Customers 
			Values (@CId , @CName , @Email)
	End Try
	Begin Catch
		Print 'Error Message:' + Error_Message();
	End Catch

Exec SP_Invalid_Data 0,'Mohit','mohit@158gmail.com'

--8. Create a procedure which prints the error message that “The Customer_id is already taken. Try another one.
Create Proc SP_Customer_Insert
	@Customer_Id Int,
	@Customer_Name varchar(50),
	@Email varchar(50)
As 
Begin Try
	Insert Into Customers
	Values (@Customer_Id ,
	@Customer_Name,
	@Email)
End Try

Begin Catch
	Print 'The Customer_id is already taken. Try another one'
End Catch

Exec SP_Customer_Insert 10,'asdf','asdf123@gmail.com'


















































