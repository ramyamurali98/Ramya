--1. View Menu Item List Admin (TYUC001)
--a. Frame insert scripts to add data into menu_item table. Refer View Menu Item List Admin screen shot from Web UI Specification for sample data.

insert into Menu values ('Sandwich','99.00','Yes','2017/03/15','Main Course','Yes','Edit')
go
insert into Menu values('Burger','129.00','Yes','2017/12/23','Main Course','No','Edit')
go
insert into Menu values('Pizza','149.00','Yes','2017/08/21','Main Course','No','Edit')
go
insert into Menu values('French Fries','57.00','No','2017/07/02','Starters','Yes','Edit')
go
insert into Menu values('Chocolate Brownie','32.00','Yes','2022/11/02','Dessert','Yes','Edit')
go

--b. Frame SQL query to get all menu items

select * from Menu

--2. View Menu Item List Customer (TYUC002)
--a. Frame SQL query to get all menu items which after launch date and is active

select * from Menu 
where  Active like '%Yes' and [Date_Of_Launch] <GETDATE();

--3. Edit Menu Item (TYUC003)
--a. Frame SQL query to get a menu items based on Menu Item Id

select * from Menu 
where Menu_id=2

--b. Frame update SQL menu_items table to update all the columns values based on Menu Item Id

update  Menu
set name='Chocolate Brownies' where Menu_id=5

--4. Add to Cart (TYUC004)
--a. Frame insert scripts for adding data into user and cart tables.In user table
--create two users. Once user will not have any entries in cart, while the other will have at least 3 items in the cart

insert into Users values('Ramya')
go
insert into Users values('Ranjani')
go
insert into Users values('Priya')
go
insert into Users values('Krithi')
go

select * from Users

insert into cart values(1,1)
go
insert into cart values(2,2)
go
insert into cart values(1,1)
go
insert into cart values(1,3)
go
insert into cart values(1,4)
go

select * from cart

--5. View Cart (TYUC005)
--a. Frame SQL query to get all menu items in a particular user’s cart

select m.Menu_Id,m.Name,m.Price,m.Date_of_Launch,m.Category,u.user_Id,u.user_name,c.cart_id
from Menu m inner join cart c
on m.Menu_Id=c.menu_id
inner join Users u
on u.user_id=c.users_id
where c.cart_id=1
go

--b. Frame SQL query to get the total price of all menu items in a particular user’s cart

select sum(m.Price)as [Total Amount],u.user_Name
from Menu m inner join cart c
on m.Menu_id=c.menu_id
inner join Users u
on u.user_id=c.users_id
where u.user_Id=1
group by u.user_Name,u.user_id
go

--6. Remove Item from Cart (TYUC006)
--a. Frame SQL query to remove a menu items from Cart based on User Id and Menu Item Id

delete cart
where users_id=2 and menu_id=2
go

