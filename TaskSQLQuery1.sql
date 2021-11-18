CREATE TABLE [Books] (
	Id integer NOT NULL,
	Name varchar(60) NOT NULL,
	Title varchar(100) NOT NULL,
	Author varchar(50) NOT NULL,
	Category varchar(50) NOT NULL,
	Price int NOT NULL,
	Quantity int NOT NULL,
	Author_İd int    REFERENCES Author(İd)
 
 )


CREATE TABLE Author (
	İd int primary key identity NOT NULL,
	Name varchar(255) NOT NULL,
	Sur_Name varchar(255) NOT NULL,
	Book_Quantity integer NOT NULL
)

insert into Author(Name,Sur_Name,Book_Quantity)
values('cavif','haciyev',14)
insert into Author(Name,Sur_Name,Book_Quantity)
values('eli','eliyev',44)


select  Author.Name 'Author_Name',
 Books.Name 'Book_Name'
 from Books
INNER JOIN Author
on Books.Author_İd=Author.İd



--self join
create table school(
Id int primary key identity,
name  nvarchar(50),
Position nvarchar(50),
DependOn int 
)

--self
select table1.Position,table2.Position 'Depend on' from school AS table1
join school as table2
on
table1.DependOn=table2.Id

--cross
create table Model(
Id int primary key identity,
model  nvarchar(50),
)
create table Ram(
Id int primary key identity,
ram  nvarchar(50),
)
insert into Model(model)
values('hp'),
('MAc'),
('Dell'),
('asus'),
('acer'),
('razer'),
('monster')

insert into Ram(ram)
values('4gb'),
('8gb'),
('16 gb'),
('24 gb'),
('32 gb'),
('64 gb'),
('128 gb')

Select M.model ,r.ram from Model M
cross join Ram r





