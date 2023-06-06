Select * from Students_Lab5

--1--
Select Firstname from Students_Lab5
where Firstname like 'k%'

--2--
Select Firstname from Students_Lab5
where Firstname like '_____'

--3--
Select * from Students_Lab5
where City like '%a' and city like  '______'

--4--
Select * From Students_Lab5
where Lastname like '%tel'

--5--
Select * From Students_Lab5
where Firstname like 'ha%' 
and Lastname like '%t'
--or--
--'ha%t'--

--6--
Select * From Students_Lab5
where Firstname like 'k_y%'

--7--
Select Firstname from Students_Lab5
where website is null 
and Firstname like '_____'

--8--
Select * from Students_Lab5
where lastname like '%jer%'

--9--
Select * From Students_Lab5
where City like 'r%' or City like'b%'

--10--
Select * from Students_Lab5
where Website is not null

--11--
Select * from Students_Lab5
where Firstname like '[A-H]'

--12--
Select * From Students_Lab5
where Firstname like '_[A,E,I,O,U]'

--13--
Select * From Students_Lab5
where City like '%rod%'

--14--
Select * From Students_Lab5
where Website like 'bi%'

--15--
Select * From Students_Lab5
where Lastname like '______'

--16--
Select * From Students_Lab5
where City like '_____' and City not like 'ba%'

--17--
Select * From Students_Lab5
where Division like 'II%'

--18--
Select * from Students_Lab5
where Division like '%bc%'

--19--
Select * From Students_Lab5
where Division like '______' and Website is not null

--20--
Select * from Students_Lab5
where Firstname not like '___[a,e,i,o,u]'


