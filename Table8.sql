create table Customers_B (
CustomerID int primary key,
FirstName varchar not null,
LastName varchar not null,
PhoneNumber bigint not null
)

insert into Customers_B (CustomerID, FirstName, LastName, PhoneNumber) values
(1, 'Ashish', 'jha', 9876543),
(2, 'priti', 'patil', 876543),
(3, 'Rahul', 'hulke', 765432),
(4, 'vaibhav', 'sharma', 654321),
(5, 'Vikram', 'bondre', 543210)

select * from Customers_B 

create table Accounts (
AccountID int primary key,
CustomerID int,
AccountType varchar not null,
Balance int not null,
FOREIGN KEY (CustomerID) REFERENCES Customers_B(CustomerID)
)

insert into Accounts (AccountID, CustomerID, AccountType, Balance) values
(101, 1, 'Savings', 15700),
(102, 2, 'Checking', 255000),
(103, 3, 'Savings', 350500),
(104, 4, 'Checking', 450400),
(105, 5, 'Savings', 585000)

select * from Accounts

create table Transactions (
TransactionID int primary key,
AccountID int,
TransactionType varchar not null,
Amount int not null,
TransactionDate DATE not null,
FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
)

insert into Transactions (TransactionID, AccountID, TransactionType, Amount, TransactionDate) values
(1001, 101, 'Deposit', 50000, '2025-03-01'),
(1002, 102, 'Withdrawal', 200000, '2025-03-02'),
(1003, 103, 'Deposit', 10000, '2025-03-03'),
(1004, 104, 'Withdrawal', 14000,'2025-03-04'),
(1005, 105, 'Deposit', 11000, '2025-03-05')

select * from Transactions 