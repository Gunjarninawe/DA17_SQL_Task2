create table Customers (

CustomerID int primary key,
Name varchar not null,
Email varchar  not null,
PhoneNumber bigint 
)

select * from Customers

insert into Customers (CustomerID, Name, Email, PhoneNumber) values
(1, 'Harsh ', 'harsh@example.com', 5632587),
(2, 'Ritesh', 'ritesh@example.com', 2345601),
(3, 'Anish', 'anish@example.com', 345012),
(4, 'Devanshu', 'dev@examole.com', 69872),
(5, 'Aryan', 'aryan@example.com', 785495)


create table Orders (
OrderID int primary key,
OrderDate DATE not null,
Amount int,
CustomerID int,
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
)

select * from Orders

insert into Orders (OrderID, OrderDate, Amount, CustomerID) values
(1, '2025-03-01', 150, 1),
(2, '2025-03-02', 297, 2),
(3, '2025-03-03', 250, 3),
(4, '2025-03-04', 543, 4),
(5, '2025-03-05', 327, 5)

