
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

select * from Menu


insert into Users values('Sandwich','Yes','99.00','Main Course','Add to Cart')
go
insert into Users values('Burger','No','129.00','Main Course','Add to Cart')
go
insert into Users values('Pizza','No','149.00','Main Course','Add to Cart')
go

select * from Users

insert into cart values('Sandwich','Yes','99.00','Delete')
go
insert into cart values('Burger','No','129.00','Delete')
go
insert into cart values('Pizza','No','149.00','Delete')
go

select * from cart

select * from Menu 
where  Active like '%Yes' and [Date_Of_Launch] <GETDATE();

select * from Menu 
where Menu_id=2

update  Menu
set name='Chocolate Brownies' where Menu_id=5

select sum(price) as Total
from cart