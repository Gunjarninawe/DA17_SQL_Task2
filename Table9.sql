
create table subj_Teach(

subj_id int primary key,
name varchar not null,
no_units int default 5,
isActive boolean DEFAULT TRUE

)
insert into  subj_Teach(subj_id,name,no_units,isActive )values(11,'Science',4,true)
insert into  subj_Teach(subj_id,name,no_units,isActive )values(12,'Maths',4,true)
insert into  subj_Teach(subj_id,name,no_units,isActive )values(13,'Hindi',4,true)
insert into  subj_Teach(subj_id,name,no_units,isActive )values(14,'Marathi',4,false)

select * from subj_Teach


create table INSTRUCTORR (

INS_ID int primary key,
Gender varchar not null,
NAME varchar not null,
subj_id int not null,
CONSTRAINT INSTRUCTOR_subjTeach_subjid FOREIGN KEY (subj_id) REFERENCES subj_Teach(subj_id)	
)

insert into INSTRUCTORR (INS_ID,NAME,Gender,subj_id) values (01,'sharda','F',11)
insert into INSTRUCTORR (INS_ID,NAME,Gender,subj_id)values (02,'Gauri','F',12)
insert into INSTRUCTORR (INS_ID,NAME,Gender,subj_id)values (03,'Sagar','M',13)
insert into INSTRUCTORR (INS_ID,NAME,Gender,subj_id)values (04,'Uday','M',14)

select *from INSTRUCTORR


CREATE TABLE course(

course_id int primary key,
name varchar not null,
isActive boolean DEFAULT true)

insert into course (course_id,name,isActive)values (11,'Data Analyst',true)
insert into course (course_id,name,isActive)values (12,'JAVA FULL STACK',true)
insert into course (course_id,name,isActive)values (13,'MERN FULL STACK',false)
insert into course (course_id,name,isActive)values (14,'SQL',true)

select * from course 



create table STUDENTT (

STD_ID int primary key,
NAME varchar not null,
Gender varchar not null,
course_id int NOT NULL,
CONSTRAINT STUDENT_COURSE_courseid FOREIGN KEY (course_id)REFERENCES course(course_id)
)

insert into STUDENTT ( STD_ID,NAME,Gender,course_id)values (01,'Praful','M',11)
insert into STUDENTT ( STD_ID,NAME,Gender,course_id)values (02,'Rahul','M',12)
insert into STUDENTT ( STD_ID,NAME,Gender,course_id)values (03,'Shruti','F',13)
insert into STUDENTT ( STD_ID,NAME,Gender,course_id)values (04,'Pankaj','M',14)

select * from STUDENTT


create table collegee (

COLL_ID Iint primary key ,
NAME varchar not null,
INS_ID int not null,
STD_ID int not null,
CONSTRAINT college_INSTRUCTOR_INSID FOREIGN KEY (INS_ID)REFERENCES INSTRUCTORR(INS_ID ),
CONSTRAINT college_STUDENTT_STDID FOREIGN KEY (STD_ID)REFERENCES STUDENTT(STD_ID)
)


insert into collegee(COLL_ID,NAME,INS_ID,STD_ID)values(232434,'RCOEM',01,01)
insert into collegee(COLL_ID,NAME,INS_ID,STD_ID)values(782434,'YCCE',02,02)
insert into collegee(COLL_ID,NAME,INS_ID,STD_ID)values(4234,'IIT',03,03)
insert into collegee(COLL_ID,NAME,INS_ID,STD_ID)values(962434,'VNIT',04,04)

select * from collegee