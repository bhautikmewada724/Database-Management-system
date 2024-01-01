--Lab-6
 
 -- Part- A
 --1. Create a trigger that fires on INSERT, UPDATE and DELETE operation on the Person table to display a 
    --message �Record is Affected.� 

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
   --all operations performed on the person table into PersonLog.
	--For that, log all operations performed on the person table into PersonLog
	
	--Instead of trigger for Insert
create trigger tr_Person_Insert_InsteadOf_Log
   --uppercase whenever the record is inserted.
    --that age in Person table.
  --�Record deleted successfully from PersonLog�.

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