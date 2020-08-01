create database truyum
go

use truyum
go

create table Menu
(
Menu_Id int IDENTITY(1,1) PRIMARY KEY,
Name varchar(30),
Price numeric(5,2),
Active varchar(10),
Date_Of_Launch date,
Category varchar(30),
Free_Delivery varchar(10),
Action varchar(10)
)
go

create table Users
(
user_ids int Identity(1,1) primary key,
Name varchar(30),
Free_Delivery varchar(10),
Price numeric(5,2),
Category varchar(30),
Action varchar(50)
)
go

create table cart 
(
cart_id int Identity(1,1)
constraint fk_cart_id foreign key(cart_id) references Users(user_ids),
Name varchar(30),
Free_Delivery varchar(10),
Price numeric(5,2),
Action varchar(50)
)
go
