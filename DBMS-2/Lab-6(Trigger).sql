--Lab-6
 
 -- Part- A
 --1. Create a trigger that fires on INSERT, UPDATE and DELETE operation on the Person table to display a 
    --message “Record is Affected.” 

Alter trigger tr_Person_Insert_Update_Delete
on Person
after insert,update,delete
as
begin
	print 'Record is Affected'
end
 ----------------------------------------------------------------------------------
insert into Person values (101,'Mohit',800,'08-03-2022','Surat',18,'08-03-1998')
update Person set Age = 25 where PersonID = 101
delete Person where PersonID =101
drop trigger tr_Person_Insert_Update_Delete
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

--2. Create a trigger that fires on INSERT, UPDATE and DELETE operation on the Person table. For that, log 
   --all operations performed on the person table into PersonLog.   --Insert Trigger create trigger tr_Person_Insert_Log on Person after Insert as begin	declare @PersonId as int 	declare @PersonName as varchar(250)	select @PersonId = inserted.PersonID, @PersonName = inserted.PersonName from inserted	insert into PersonLog values (@PersonId , @PersonName,'Insert',GETDATE()) end ------------------------------------------------------------------------------------ insert into Person values (103,'Kishan',800000,'08-03-2005','Morbi',18,'08-03-2005') select * from PersonLog drop trigger tr_Person_Insert_Log ------------------------------------------------------------------------------------ --Update Trigger create trigger tr_Person_Update_Log on Person after update as begin	declare @PersonId as int 	declare @PersonName as varchar(250)	select @PersonId = inserted.PersonID, @PersonName = inserted.PersonName from inserted	insert into PersonLog values (@PersonId , @PersonName,'Update',GETDATE()) end ---------------------------------------------- update Person set Salary = 50000 where PersonID = 101 select * from PersonLog drop trigger tr_Person_Update_Log ---------------------------------------------- --Delete Trigger  Alter trigger tr_Person_Delete_Log on Person after delete as begin	declare @PersonId as int 	declare @PersonName as varchar(250)	select @PersonId = deleted.PersonID, @PersonName = deleted.PersonName from deleted	insert into PersonLog values (@PersonId , @PersonName,'delete',GETDATE()) end --------------------------------- delete Person where PersonID =101 select * from PersonLog drop trigger tr_Person_Delete_Log ----------------------------------------------------------------------------------- ----------------------------------------------------------------------------------- --3. Create an INSTEAD OF trigger that fires on INSERT, UPDATE and DELETE operation on the Person table. 
	--For that, log all operations performed on the person table into PersonLog
	
	--Instead of trigger for Insert
create trigger tr_Person_Insert_InsteadOf_Log on Person instead of Insert as begin	declare @PersonId as int 	declare @PersonName as varchar(250)	select @PersonId = inserted.PersonID, @PersonName = inserted.PersonName from inserted	insert into PersonLog values (@PersonId , @PersonName,'Insert Instead of',GETDATE()) end ------------------------------------------------------------------------------------ insert into Person values (101,'Kishan',800000,'08-03-2005','Morbi',18,'08-03-2005') select * from Person select * from PersonLog drop trigger tr_Person_Insert_InsteadOf_Log ------------------------------------------------------------------------------------  --Instead of Trigger for Update  create trigger tr_Person_Update_InsteadOf_Log on Person Instead of update as begin	declare @PersonId as int 	declare @PersonName as varchar(250)	select @PersonId = inserted.PersonID, @PersonName = inserted.PersonName from inserted	insert into PersonLog values (@PersonId , @PersonName,'Instead of Update',GETDATE()) end ---------------------------------------------- insert into Person values (101,'parth',800000,'08-03-2005','Morbi',18,'08-03-2005') update Person set Age = 0 where PersonID = 101 select * from Person select * from PersonLog ----------------------------------------------  --Inseated of Trigger for Delete  create trigger tr_Person_Delete_InsteadOf_Log on Person Instead of delete as begin	declare @PersonId as int 	declare @PersonName as varchar(250)	select @PersonId = deleted.PersonID, @PersonName = deleted.PersonName from deleted	insert into PersonLog values (@PersonId , @PersonName,'Instead of delete',GETDATE()) end --------------------------------- delete Person where PersonID =101 select * from PersonLog select * from Person drop trigger tr_Person_Delete_InsteadOf_Log--------------------------------------------------------------------------------------------------------------------------------4. Create a trigger that fires on INSERT operation on the Person table to convert person name into 
   --uppercase whenever the record is inserted.   --Insert Trigger create trigger tr_Person_Insert_NameUppercase_Log on Person after Insert as begin	declare @PersonId as int	declare @PersonName as varchar(250)	select @PersonName =inserted.PersonName from inserted	select @PersonId = inserted.PersonID from inserted	update Person set PersonName = UPPER(@PersonName) where PersonID = @PersonId	 end ------------------------------------------------------------------------------------ insert into Person values (105,'jay',800000,'08-03-2005','Morbi',18,'08-03-2005') select * from Person drop trigger tr_Person_Insert_NameUppercase_Log ------------------------------------------------------------------------------------ ------------------------------------------------------------------------------------			--PART -B --5. Create a trigger that fires on INSERT operation on person table, which calculates the age and update 
    --that age in Person table.create trigger tr_Person_Age_Inserton Personafter Insertasbegin	declare @PersonID as int	declare @BrithDate as datetime	select @PersonID = inserted.PersonID , @BrithDate = inserted.BirthDate from inserted	update Person set Age = ABS(DATEDIFF(year,@BrithDate,GETDATE())) where @PersonID = PersonID	end------------------------------------------------------------------------------------insert into Person values (106,'akshay',800000,'08-03-2005','Morbi',18,'10-30-2004')select * from Persondrop trigger tr_Person_Age_Insert ------------------------------------------------------------------------------------ ------------------------------------------------------------------------------------ --PART-C--- 6. Create DELETE trigger on PersonLog table, when we delete any record of PersonLog table it prints 
  --‘Record deleted successfully from PersonLog’.

create trigger tr_PersonLog_delete
on PersonLog
after delete
as 
begin
	print 'Record deleted successfully from PersonLog'
end
----------------------------------
delete PersonLog where PLogID = 2
----------------------------------
----------------------------------