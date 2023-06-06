--3--

--1--
Alter Table Student
Add City varchar(20),Backlog int not null

--2--
Alter Table Student
Alter Column Name varchar(35)

--3--
Alter Table Student
Alter column CPI decimal

--4--
SP_Rename 'Student.Enrollment_No','ENO'

--5--
Alter Table Student
Drop Column City

--6--
SP_Rename Student, StudentMaster

--7--
Alter Table Student
Drop Column Backlog

--8--
Alter Table Student
Alter column Name not null

--9--
SP_Rename 'Student.Birthdate','BDate'

--10--
Alter Table Student
Alter Column ENO varchar(12)

