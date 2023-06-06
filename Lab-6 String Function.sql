--lab 6

--1
select LEN(null), LEN(' hello '), LEN('')

--2
select LOWER('BHAUTIK'), UPPER('bhautik')

--3
select SUBSTRING('Bhautik',1,3)

--4
select SUBSTRING('Bhautik Mewada',3,7)

--5
select REPLACE('abc123efg','123','XYZ'), REPLACE('abcabcabc','c','5')

--6
select ASCII('a'),ASCII('A'),ASCII('z'),ASCII('Z'),ASCII('0'),ASCII('9')

--7
select CHAR(97),CHAR(65),CHAR(122),CHAR(90),CHAR(90),CHAR(48),CHAR(57)

--8
select LTRIM('  hello world')

--9
select  RTRIM('hello world   ')

--10
select SUBSTRING('SQL Server',1,4) + SUBSTRING('SQL Server',5,6)

--15
select REVERSE('Darshan')

--16
select REPLICATE('bhautik',3)