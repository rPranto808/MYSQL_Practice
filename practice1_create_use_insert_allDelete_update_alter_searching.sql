-- drop database diu;

-- create database diu;
-- use diu;

-- create table student(id int primary key,
-- 					name varchar(50) not null,
--                     cgpa float,
--                     city varchar(20));
--                     
-- insert into student(id,name,cgpa,city)values
-- (1,"Rifat",3.77,"dhaka"),
-- (2,"Parvej",3.66,"savar"),
-- (3,"Pranto",3.88,"kalma");

-- select *from student;

-- update student
-- set cgpa=3.54 where id=3;
-- delete from student where id=3;

-- -- adding new row  
-- insert into student (id,name,cgpa,city)values
-- (3,"pranto",3.77,"kalma");

-- ALTER TABLE STUDENT
-- MODIFY COLUMN cgpa VARCHAR(1) DEFAULT "A";


-- drop database mysection;

-- create database varsity;
-- use varsity;
-- create table student(id int primary key,
-- 					name varchar(30),
--                     cgpa float,
--                     section varchar(20));

-- insert into student(id,name,cgpa,section)values
-- (1,"Rifat",3.66,"a"),
-- (2,"Parvej",3.77,"b"),
-- (3,"Pranto",3.67,"c");

-- select *from student;
-- select *from student where name="Pranto";
-- select *from student where name like "%%j";
-- SELECT * FROM STUDENT WHERE NAME LIKE BINARY "Ri%";

-- truncate table student;
-- delete from student where name ="Pranto";

-- update student 
-- set cgpa=3.33 where id=2;

-- select *from student where cgpa =3.33;


-- select *from student
-- where cgpa between 3.0 and 3.5;

-- select *from student 
-- where name between 'A' and 'q';

-- select *from student 
-- where cgpa>=3.25 and cgpa<=3.6;

-- alter table student
-- add column birthdate date default null;

drop database diu;

create database diu;
use diu;

create table student(id int primary key,
					 name varchar(50),
                     cgpa float,
                     city varchar(50)
                    );
insert into student(id,name,cgpa,city)values
(1,"Rifat",3.66,"a"),
(2,"Parvej",3.77,"b"),
(3,"Pranto",3.67,"c");

select *from student;
select *from student where id =2;
select *from student where cgpa=3.77;

update student
set cgpa=3.90 where id=2;

ALTER TABLE STUDENT
MODIFY COLUMN cgpa VARCHAR(1) DEFAULT "A";

-- Adding a new column
alter table student add age int;
select *from student;
-- modifying the datatype of a column
alter table student modify age float;
-- renaming a column 
alter table student rename column age to stdAge;

-- dropping column
alter table student drop column age;

-- adding a unique constraint

ALTER TABLE student ADD CONSTRAINT salary UNIQUE (EMAIL);

-- ranaming a table
alter table student rename to Std;
select *from Std;










