create table Patients (
PatientID int primary key,
Name varchar not null,
DOB date,
Address varchar
)

select * from Patients

insert into Patients (PatientID, Name, DOB, Address) values
(1, 'Ashish', '1997-06-27', 'Nagpur'),
(2, 'Rehansh', '2005-01-04', 'Jaripatka'),
(3, 'Manav', '1996-11-07', 'wadi'),
(4, 'Devansh', '2003-03-14', 'sitaburdi'),
(5, 'Hitesh', '1998-07-10', 'Medical square')

 

create table Appointments (
AppointmentID int primary key,
AppointmentDate date not null,
Doctor varchar not null,
PatientID INT,
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
)

SELECT * FROM Appointments


insert into Appointments (AppointmentID, AppointmentDate, Doctor, PatientID) values
(1, '2025-03-30', 'Dr. tiwari', 1),
(2, '2025-03-21', 'Dr. luthra', 2),
(3, '2025-03-15', 'Dr. khan', 3),
(4, '2025-03-13', 'Dr. mankar', 4),
(5, '2025-03-14', 'Dr. jhode', 5)

