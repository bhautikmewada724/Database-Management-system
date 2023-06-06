--Lab 9--
Select * from Electrical
Select * from Computer

--1--
Select Name From Computer 
Union 
Select Name From Electrical

--2--
Select Name from Computer
Union all
Select Name From Electrical

--3--
Select Name from Computer
Intersect
Select Name From Electrical

--4--
Select Name from Computer
Except
Select Name From Electrical

--5--
Select Name from Electrical
Except
Select Name From Computer

--6--
Select * from Electrical
Union
Select * From Computer

--7--
Select * from Computer
Intersect
Select * from Electrical

--9.2--
Select * from Cricket
Select * from WorldCup
Select * from T20
Select * from IPL2023
--1--
Select Name,City,Age into WorldCup from Cricket

--2--
Select Name,City into T20 from Cricket
where 1=0

--3--
Select Name,City,Age into IPL from Cricket
where 1=0

--4--
Insert into IPL Select * from Cricket
where Name like '_A_____%' 

--5--
Delete from IPL

--6--
Delete from Cricket
where City = 'Jharkhand'

--7--
SP_RENAME 'IPL', 'IPL2018'

--8--
Truncate Table T20