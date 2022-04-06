create table Customers(
CustomerId int identity(1,1) primary key not null,
CustomerName varchar(30) not null,
Phone varchar(14) not null,
Email varchar(80) not null,
Notes varchar(200)
);

Select CustomerId,CustomerName, Phone, Email, Notes FROM Customers
insert into Customers values ('Karen Carter','270-245-6699','maksadmedic@rheiop.com','She closed her eyes and then opened them again.')
