use Product_Info
INSERT INTO Product_Info VALUES(1,'Smatphone',35000);
INSERT INTO Product_Info VALUES(2,'Laptop',65000);
INSERT INTO Product_Info VALUES(3,'Headphones',5500);
INSERT INTO Product_Info VALUES(4,'Television',85000);
INSERT INTO Product_Info VALUES(5,'Gaming Console',32000);



----Part A-----
---1. Create a cursor Product_Cursor to fetch all the rows from a products table.
Declare
       @Product_id int,
	   @Product_Name varchar(250),
	   @Price Decimal (10,2);

Declare Product_Cursor cursor	
For select
          Product_id,
		  Product_Name,
		  Price
from Product_Info

open Product_Cursor 
fetch next from Product_Cursor into @Product_id,
                                    @Product_Name,
									@Price;
while @@FETCH_STATUS = 0
begin
print cast(@Product_id as varchar(100))+'-'+@Product_Name+'-'+cast(@Price as varchar(50))
fetch next from Product_Cursor into @Product_id,
                                    @Product_Name,
									@Price;
end;
close Product_Cursor;
deallocate Product_Cursor;

---2. Create a cursor Product_Cursor_Fetch to fetch the records in form of ProductID_ProductName.(Example: 1_Smartphone)
Declare
       @Product_id int,
	   @Product_Name varchar(250);
	 

Declare Product_Cursor_fetch cursor
For select
          Product_id,
		  Product_Name
		
from Product_Info

open Product_Cursor_fetch 
fetch next from Product_Cursor_fetch into @Product_id,
                                    @Product_Name;
									
while @@FETCH_STATUS = 0
begin
print cast(@Product_id as varchar(100))+'-'+@Product_Name
fetch next from Product_Cursor_fetch into @Product_id,
                                    @Product_Name;
								
end;
close Product_Cursor_fetch;
deallocate Product_Cursor_fetch;

---3. Create a cursor Product_CursorDelete that deletes all the data from the Products table.

Declare
       @Product_id int
	 
Declare Product_CursorDelete cursor
For select
          Product_id
		  
from Product_Info

open Product_CursorDelete


fetch next from Product_CursorDelete into @Product_id;
                                    
while @@FETCH_STATUS = 0
begin
delete from Product_Info
where @Product_id=Product_id
fetch next from Product_CursorDelete into @Product_id;

end;
close Product_CursorDelete;
deallocate Product_CursorDelete;


----Part B-----
---4.Create a cursor Product_CursorUpdate that retrieves all the data from the products table and increases the price by 10%.
Declare
       @Product_id int,
	   @Product_Name varchar(250),
	   @Price Decimal (10,2);

Declare Product_CursorUpdate cursor
For select
          Product_id,
		  Product_Name,
		  Price
from Product_Info

open Product_CursorUpdate 
fetch next from Product_CursorUpdate into @Product_id,
                                    @Product_Name,
									@Price;
while @@FETCH_STATUS = 0
begin
Update Product_Info 
Set Price = @Price + @Price*0.1
where @Product_id = Product_id
fetch next from Product_CursorUpdate into @Product_id,
                                    @Product_Name,
									@Price;
end;
close Product_CursorUpdate;
deallocate Product_CursorUpdate;

---Part – C
---5. Create a cursor to insert details of Products into the NewProducts table if the product is “Laptop”
---(Note: Create NewProducts table first with same fields as Products table)
Declare
       @Product_id int,
	   @Product_Name varchar(250),
	   @Price Decimal (10,2);

Declare New_Product_Cursor cursor
For select
          Product_id,
		  Product_Name,
		  Price
from Product_Info

open New_Product_Cursor 
fetch next from New_Product_Cursor into @Product_id,
                                    @Product_Name,
									@Price;
while @@FETCH_STATUS = 0
begin
		if(@Product_Name = 'Laptop')
			 Insert into NewProducts
			 values (@Product_id , @Product_Name , @Price)
		
		fetch next from New_Product_Cursor into @Product_id,
                                    @Product_Name,
									@Price;
end;

close New_Product_Cursor;
deallocate New_Product_Cursor;


