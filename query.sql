CREATE DATABASE OurExerciseDb
on primary (name='Customer_Db',Filename='G:\Exercises\Customer_Db.mdf', size=24MB, filegrowth=8MB)
log on (name='Customer_Db_log',  filename='G:\Exercises\Customer_Db_log.ldf') 
COLLATE SQL_Latin1_General_CP1_CI_AS

CREATE TABLE Product
(PId int identity (50,1) primary key,
Pname nvarchar(50) not null,
PPrice float check (PPrice>=50 and PPrice<=100000),
PCompany nvarchar(50) not null,
PQty int check (PQty>=1) DEFAULT 1,
)

insert into Product values ('Laptop', 55000, 'Samsung', 3)
insert into Product values ('MacBook', 98000, 'Apple', 2)
insert into Product values ('Smart TV', 40000, 'Redmi', 6)
insert into Product values ('Note 7', 35000, 'HTC', 5)
insert into Product values ('S22 Ultra', 80000, 'Samsung', 4)

select * from Product
