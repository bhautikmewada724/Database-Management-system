Create Database Bank_Info

CREATE TABLE Deposit
(Actno INT,Cname VARCHAR(50),Bname VARCHAR(50),Amount DECIMAL(8,2),Adate DATETIME)

CREATE TABLE Branch
(Bname VARCHAR(50),City VARCHAR(50))

CREATE TABLE Customers
(Cname VARCHAR(50),City VARCHAR(50))

CREATE TABLE Borrow
(Loanno INT,Cname VARCHAR(50),Bname VARCHAR(50),Amount DECIMAL(8,2))

--Insert the data into tables using Query as shown below.

--deposit--
INSERT INTO Deposit 
VALUES(101,'anil','vrce',1000,'1/mar/95')
INSERT INTO Deposit 
VALUES(102,'sunil','ajni',5000,'4/jan/96')
INSERT INTO Deposit 
VALUES(103,'mehul','karolbagh',3500,'17/nov/95')
INSERT INTO Deposit 
VALUES(104,'madhuri','chandi',1200,'17/dec/95')
INSERT INTO Deposit 
VALUES(105,'prmod','m.g.road',3000,'27/mar/96')
INSERT INTO Deposit 
VALUES(106,'sandip','andheri',2000,'31/mar/96')
INSERT INTO Deposit 
VALUES(107,'shivani','virar',1000,'5/sep/95')
INSERT INTO Deposit 
VALUES(108,'kranti','nehru place',5000,'2/jul/95')
INSERT INTO Deposit 
VALUES(109,'minu','powai',7000,'10/aug/95')

--branch--
INSERT INTO Branch 
VALUES('vrce','nagpur')
INSERT INTO Branch 
VALUES('ajni','nagpur')
INSERT INTO Branch 
VALUES('karolbagh','delhi')
INSERT INTO Branch 
VALUES('chandi','delhi')
INSERT INTO Branch 
VALUES('dharampeth','nagpur')
INSERT INTO Branch 
VALUES('m.g.road','banglore')
INSERT INTO Branch 
VALUES('andheri','bombay')
INSERT INTO Branch 
VALUES('virar','bombay')
INSERT INTO Branch 
VALUES('nehru place','delhi')
INSERT INTO Branch 
VALUES('powai','bombay')

--customers--
INSERT INTO Customers 
VALUES('anil','culcutta')
INSERT INTO Customers 
VALUES('sunil','dehi')
INSERT INTO Customers 
VALUES('mehul','baroda')
INSERT INTO Customers 
VALUES('mandar','patna')
INSERT INTO Customers 
VALUES('madhuri','nagpur')
INSERT INTO Customers 
VALUES('prmod','nagpur')
INSERT INTO Customers 
VALUES('sandip','surat')
INSERT INTO Customers 
VALUES('shivani','bombay')
INSERT INTO Customers 
VALUES('kranti','bombay')
INSERT INTO Customers 
VALUES('naren','bombay')

--borrow--
INSERT INTO Borrow 
VALUES(201,'anil','vrce',1000)
INSERT INTO Borrow 
VALUES(206,'mehul','ajni',5000)
INSERT INTO Borrow 
VALUES(311,'sunil','dharampeth',3000)
INSERT INTO Borrow 
VALUES(321,'madhuri','andheri',2000)
INSERT INTO Borrow 
VALUES(375,'prmod','virar',8000)
INSERT INTO Borrow 
VALUES(481,'kranti','nehru place',3000)

--2.1--

--1--
Select * from Deposit

--2--
Select * from Borrow

--3--
Select * from Customers

--4--
Select ActNo,CName,Amount from Deposit

--5--
Select LoanNo,Amount From Borrow

--6--
Select	* from Deposit
where Bname='Andheri'

--7--
Select Actno,Amount from Deposit 
where Actno=106

--8--
Select Cname From Borrow
where Amount>5000

--9--
Select Cname From Deposit
where Adate> '1-12-96'

--10--
Select Cname from Deposit 
where Actno<105

--11--
Select Cname From Customers
where City='NAGPUR' or City='Delhi'

--12--
Select Cname From Deposit 
where Amount>4000 And Actno<105

--13--
Select Cname From Borrow
where Amount>=3000 and Amount<=8000

--14--
Select Cname from Deposit
where Bname <> 'Andheri'

--15--
Select Bname From Borrow
where Amount is null

--16--
Select ActNo,Cname,Amount From Deposit
where Bname IN ('AJNI','KAROLBAGH','M.G. ROAD')
and Actno <104

--17--
Select Top 5 * From Customers

--18--
Select Top 3  * From Deposit
where Amount>10004

--19--
Select Top 5 Loanno,Cname  From Borrow
where Bname <> 'Andheri'

--20--
Select Distinct City From Customers

--21--
Select Distinct Bname From Branch

--22--
Select * From Customers
Order by City

--23--
Select * From	Deposit 
Order by Amount Desc;

--24--
Select * From Customers
Order by City Desc

--25--


--2.2--
--1--
Update	Deposit
set Amount=5000
where Amount=3000

--2--
Update Deposit 
set Bname = 'C.G. ROAD'
where Bname = 'VRCE'

--3--
Update Deposit
set Actno=111 , Amount=5000
where Cname='Sandip' 

--4--
Update Borrow
Set Amount= 0.1*Amount+Amount

--5--
Update Deposit
set Amount=5000
where Actno  between 103 and 107 

--6--
Update Borrow
set Amount=Null
where Loanno = 321

--7--
Update Borrow
Set Loanno=401,Bname='Ajni'
where Loanno = 201 and Bname = 'Vrce'

--8--
Update Customers
set Cname='Anil Jain'
where Cname='Anil'

--9--
Update Deposit
Set Cname='Ramesh',Bname='VRCE',Amount=5500
where Actno= 102

--10--
Update Borrow
Set Bname= Null,Amount= Null
where Loanno=481 and Bname='Kranti'

--2.3--

--1--
Delete From Customers
where City='Bombay'

--2--
Delete  from Deposit
where Amount<=	1000

--3--
Delete From Borrow
where Bname='Ajni'

--4--
Delete From Borrow
Where Loanno  between 201 and 210

--5--
Delete from Deposit
where Adate = '1996-12-01'

--6--
Truncate Table Customers

--7--
Delete From Deposit
where Cname='Anil' and Actno=101

--8--
Delete from Deposit
where Bname <>'Andheri'

--9--
Delete From Borrow
where Amount<=2000 and Bname <>'VRCE'


--10--
Drop Table Branch
