--Lab 7
--Date Functions

--1
select GETDATE() as Today_Date

--2
select GETDATE() + 365

--3
select CONVERT(varchar(20), GETDATE(), 100)

--4
select CONVERT(varchar(20), GETDATE(), 106)

--5
select CONVERT(varchar(20), GETDATE(), 107)

--6
select DATEDIFF(month, '2008-12-31', '2009-03-31')

--7
select DATEDIFF(year, '2010-09-14', '2012-01-25')

--8
select DATEDIFF(hour, '2012-01-25 7:00', '2012-01-26 10:30')

--9
select DATEPART(DAY, '2016-05-12')
select DATEPART(MONTH, '2016-05-12')
select DATEPART(YEAR, '2016-05-12')

--10
select YEAR(GETDATE()) + 5
--OR
select DATEADD(year, 5, GETDATE() )

--11
select DATEADD(month, -2, GETDATE() )

--12
select DATENAME(month, GETDATE() )
select DATEPART(month, GETDATE() )

--13
select EOMONTH(GETDATE())

--14
select GETDATE() + 30

--15
select DATEDIFF(YEAR, '2005-08-03', GETDATE() )