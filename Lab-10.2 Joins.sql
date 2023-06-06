--Lab-10 (Joins)--

--1--
select Village.VillageName as villagename,City.CityName as Cityname
from Village
inner join City
on Village.CityID = City.CityID
where City.Cityname='Rajkot'

--2--
Select Village.VillageName as villagename,City.Pincode as Citypin
from Village
inner join City 
on Village.CityID = City.CityID

--3--
Select City.Cityname as Cityname,count(Village.Cityid) as noofvillage
from City
left outer join Village
on City.CityID=Village.CityID
group by city.CityName
having COUNT(Village.CityId)>1

--4--
Select City.Cityname ,count(Village.Cityid) as noofvillage
from City
left outer join Village
on city.CityID=Village.CityID
group by City.CityName
having COUNT(Village.Cityid)=0

--5--
select City.Cityname ,count(Village.Cityid) as noofvillage
from City
left outer join Village
on City.CityID=Village.CityID
group by city.CityName

--6--
Select City.Cityname as Cityname,count(Village.CityId) as noofvillage
from City
left outer join Village
on City.CityID=Village.CityID
group by City.CityName
having COUNT(Village.CityId)>1





