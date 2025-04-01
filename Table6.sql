create table Studentss (
StudentID int primary key,
FirstName varchar,
DateOfBirth DATE not null
)

select from Studentss

insert into Studentss (StudentID, FirstName, DateOfBirth) values
(1, 'Aryan', '2005-05-15'),
(2, 'Bob',  '2006-08-22'),
(3, 'yash', '2004-12-10'),
(4, 'ritesh', '2005-03-30'),
(5, 'Ishita', '2006-07-19')



create table Coursess (
CourseID int primary key,
CourseName varchar not null,
Credits int not null
)

select * from Coursess

 insert into Coursess (CourseID, CourseName, Credits) values
(101, 'DBMS', 4),
(102, 'DSPD', 3),
(103, 'EOIT', 2),
(104, 'TOC', 3),
(105, 'JAVA', 2)


create table Enrollment (
EnrollmentID int primary key,
StudentssID int,
CoursessID int,
EnrollmentDate DATE not null,
FOREIGN KEY (StudentssID) REFERENCES Student(StudentssID),
FOREIGN KEY (CoursessID) REFERENCES Courses(CoursessID)
)

select * from Enrollment

insert into Enrollment (EnrollmentID, StudentssID, CoursessID, EnrollmentDate) values
(1001, 1, 101, '2025-03-01'),
(1002, 2, 102, '2025-03-02'),
(1003, 3, 103, '2025-03-03'),
(1004, 4, 104, '2025-03-04'),
(1005, 5, 105, '2025-03-05')

