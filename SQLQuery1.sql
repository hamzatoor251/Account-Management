create table adminList(
ID int primary key identity (1,1),
userName varchar(100),
Password varchar (100)
)

insert into adminList values ('Ali', 'Ali111@')
insert into adminList values('Ahmad', 'Ahmad222@' )
insert into adminList values('Ghufi', 'Ghufi333@' )
insert into adminList values('Ibi', 'Ibi444@' )
insert into adminList values('Haday', 'Haday555@' )
insert into adminList values('Iram', 'Iram666@' )
insert into adminList values('Rida', 'Rida777@' )

select * from adminList


create table adminList(
ID int primary key identity (1,1),
userName varchar(100),
Password varchar (100)
)



create table accList(
ID int primary key identity (1,1),
userName varchar(100),
Password varchar (100),
Email varchar(100)
)

insert into accList values ('Ali', 'Ali111@', 'Ali111@gmail.com')
insert into accList values('Ahmad', 'Ahmad222@','Ahmad222@gmail.com')
insert into accList values('Ghufi', 'Ghufi333@', 'Ghufi333@gmail.com' )
insert into accList values('Ibi', 'Ibi444@' , 'Ibi444@gmail.com' )
insert into accList values('Haday', 'Haday555@', 'Haday555@gmail.com' )
insert into accList values('Iram', 'Iram666@', 'Iram666@gmail.com' )
insert into accList values('Rida', 'Rida777@', 'Rida777@gmail.com' )
select * from accList


create table customersList(
ID int primary key identity (1,1),
userName varchar(100),
Address varchar(200),
Email varchar(200),
)
drop table customersList
insert into customersList values ('Ali', 'Ali111@', 'Ali111@gmail.com')
insert into customersList values('Ahmad', 'Ahmad222@','Ahmad222@gmail.com')
insert into customersList values('Ghufi', 'Ghufi333@', 'Ghufi333@gmail.com' )
insert into customersList values('Ibi', 'Ibi444@' , 'Ibi444@gmail.com' )
insert into customersList values('Haday', 'Haday555@', 'Haday555@gmail.com' )
insert into customersList values('Iram', 'Iram666@', 'Iram666@gmail.com' )
insert into customersList values('Rida', 'Rida777@', 'Rida777@gmail.com' )
select * from customersList

create table itemsList(
ID int primary key identity (1,1),
Name varchar(100),
CostPrice varchar(100),
SalePrice varchar(100),
Expiry varchar(100)
)
drop table itemsList

insert into itemsList values ('Apples',  '10' , '15','6/08/2022')
insert into itemsList values ('Pears',   '12', '17','6/08/2022' )
insert into itemsList values ('Bananas ',    '15', '20','6/08/2022')
insert into itemsList values ('Milk',   '20', '30' ,'6/08/2022')
insert into itemsList values ('Butter', '42', '50','6/08/2022' )
insert into itemsList values ('Eggs',  '14', '21','6/08/2022' )
insert into itemsList values ('Soap', '5', '12' ,'6/08/2022')
insert into itemsList values ('Shampoo',  '9', '14' ,'6/08/2022')
insert into itemsList values ('Conditioner',  '35', '45' ,'6/08/2022')
insert into itemsList values ('Deodorant', '24', '34','6/08/2022' )
insert into itemsList values ('Beans', '23', '25','6/08/2022' )
insert into itemsList values ('Soup', '17', '23' ,'6/08/2022')
insert into itemsList values ('Broth', '31', '35' ,'6/08/2022')
insert into itemsList values ('Meals',  '25', '35' ,'6/08/2022')
insert into itemsList values ('Pizza',   '20', '32' ,'6/08/2022')
insert into itemsList values ('Potatoes',  '12', '17' ,'6/08/2022')
insert into itemsList values ('Sandwich',  '18', '22','6/08/2022' )
insert into itemsList values ('Hot Cereal',  '27', '32' ,'6/08/2022')
select * from itemsList

create table Employees(
EmpID int primary key identity (1,1),
Name varchar(100),
Designation varchar (100),
Tenure varchar(100)
)
insert into Employees values ('Ali', 'Assoiciate SE', '2 Years')
insert into Employees values('Ahmad', 'Assoiciate SE','3 Years')
insert into Employees values('Ghufi', 'Assoiciate SE', '4 Years' )
insert into Employees values('Ibi', 'Senior Developer' , '5 Years' )
insert into Employees values('Haday', 'Senior Developer', '3 Years' )
insert into Employees values('Iram', 'Senior Developer', '1.5 Years' )
insert into Employees values('Rida', 'Senior Developer', '6 Months' )
select * from Employees

