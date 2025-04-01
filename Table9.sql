create table Inspector (
    inspector_id SERIAL primary key,
    first_name varchar,
    last_name varchar,
    date_of_birth DATE,
    rank varchar,
    department varchar
)

select * from Inspector

insert into Inspector (first_name, last_name, date_of_birth, rank, department) values
('John', 'Doe', '1980-04-15', 'Chief Inspector', 'Homicide'),
('Jane', 'Smith', '1985-07-20', 'Inspector', 'Fraud'),
('Robert', 'Johnson', '1977-11-25', 'Senior Inspector', 'Narcotics'),
('Emily', 'Williams', '1990-02-10', 'Inspector', 'Cyber Crime'),
('Michael', 'Brown', '1982-03-30', 'Inspector', 'Robbery')


create table Police (
    police_id SERIAL primary key,
    first_name varchar,
    last_name varchar,
    date_of_birth DATE,
    badge_number varchar,
    inspector_id int,
    FOREIGN KEY (inspector_id) REFERENCES Inspector(inspector_id)
)

select * from Police

insert into Police (first_name, last_name, date_of_birth, badge_number, inspector_id) values
('James', 'Davis', '1990-05-12', 'B1234', 1),
('Sarah', 'Miller', '1988-09-22', 'B5678', 2),
('David', 'Wilson', '1993-01-03', 'B9876', 3),
('Olivia', 'Moore', '1991-06-18', 'B3456', 4),
('William', 'Taylor', '1994-12-25', 'B2468', 5)


create table Criminal (
    criminal_id SERIAL primary key,
    first_name varchar,
    last_name varchar,
    crime_committed varchar,
    arrest_date DATE,
    police_id int,
    FOREIGN KEY (police_id) REFERENCES Police(police_id)
)

select * from Criminal

insert into Criminal (first_name, last_name, crime_committed, arrest_date, police_id) values
('Alex', 'Adams', 'Theft', '2025-01-12', 1),
('Eva', 'Carter', 'Fraud', '2025-02-14', 2),
('Jack', 'Garcia', 'Drug Trafficking', '2025-03-05', 3),
('Liam', 'Martinez', 'Hacking', '2025-03-20', 4),
('Sophia', 'Lee', 'Armed Robbery', '2025-04-01', 5)
