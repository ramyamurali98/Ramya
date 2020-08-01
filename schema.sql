--Creating database TruYum

create database truyum
go

use truyum
go

--Creating Table Menu

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

--Creating Table Users 
create table Users
(
user_Id int Identity(1,1) primary key,
user_Name varchar(30)
)
go

--Creating Table cart

create table cart 
(
cart_id int Identity(1,1) primary key,
users_id int,
menu_id int,
constraint fk_menu foreign key (menu_id) references Menu(Menu_Id),
constraint fk_user foreign key (users_id) references Users(user_Id)
)
go
