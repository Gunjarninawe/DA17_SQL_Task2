create table Department (

id int primary key,
name varchar not null,
isActive boolean default true
)

select * from Department

insert into Department (id,name,isActive) values(01,'HR',false)
insert into Department (id,name,isActive) values(02,'ENG',true)
insert into Department (id,name,isActive) values(03,'CEO',true)
insert into Department (id,name,isActive) values(04,'punne',false)


create table Emp(

Emp_ID int primary key,
name varchar not null,
position varchar,
Department_ID int not null,
CONSTRAINT Emp_Department_ID FOREIGN KEY (department_ID) REFERENCES Department(ID) 
)

select * from Emp

insert into Emp (Emp_ID,name,position ,Department_ID)values (01,'employee1','HR',01),
insert into Emp (Emp_ID,name,position ,Department_ID)values (02,'employee2','ENG',02),
insert into Emp (Emp_ID,name,position ,Department_ID)values (03,'employee3','CEO',03),
insert into Emp (Emp_ID,name,position ,Department_ID)values (04,'employee4','ENG',01)

