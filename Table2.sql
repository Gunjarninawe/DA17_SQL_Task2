create table Std (
std_ID int primary key,
FirstName varchar not null,
LastName varchar not null,
Major varchar
)

select * from std

insert into Std (std_ID, FirstName, LastName, Major) values
(1, 'Rehansh', 'Jha', 'Computer Science'),
(2, 'Aryan', 'ingole', 'Mathematics'),
(3, 'sakshi', 'Mende', 'Engineering'),
(4, 'tripti', 'Bawane', 'Physics'),
(5, 'Lokesh', 'Chauhan', 'Astronomy')


create table Enrollments (
Enrollment_ID int primary key,
CourseName varchar not null,
Std_ID Int,
FOREIGN KEY (std_ID) REFERENCES Stds(Std_ID)
)

SELECT * FROM Enrollments

insert into Enrollments (EnrollmentID, CourseName, StdID) values
(1, 'web Development', 1),
(2, 'Data Analytics', 2),
(3, 'JAVA full stack', 3),
(4, 'Data Science', 4),
(5, 'Algorithms',5)

