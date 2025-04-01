create table Hotel (
HotelID int primary key,
Name varchar not null,
Location varchar not null,
Rating int
)

insert into Hotel (HotelID, Name, Location, Rating) values
(1, 'Raddison Blu', 'las vegas', 4),
(2, '4 Brother', 'london', 4),
(3, 'Naivaidyam', 'new york', 4),
(4, 'COSO', 'Chicago', 3),
(5, 'Vegenation', 'Dubai', 4)

select * from Hotel

create table Bookings (
BookingID int primary key,
CustomerName varchar not null,
CheckInDate DATE not null,
CheckOutDate DATE not null,
HotelID int,
FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID)
)

select * from Bookings

INSERT INTO Bookings (BookingID, CustomerName, CheckInDate, CheckOutDate, HotelID) VALUES
(101, 'Rehansh', '2025-04-06', '2025-04-02', 1),
(102, 'Shubham', '2025-04-05', '2025-04-15', 2),
(103, 'Piyush', '2025-04-10', '2025-04-15', 3),
(104, 'sujal', '2025-04-18', '2025-04-16', 4),
(105, 'Ashish', '2025-04-20', '2025-04-30', 5)

