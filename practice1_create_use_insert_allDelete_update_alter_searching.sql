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


CREATE TABLE EMP (
    EMP_ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    DEPT VARCHAR(50),
    SALARY DECIMAL(10,2),
    JOIN_DATE DATE
);

INSERT INTO EMP (EMP_ID, NAME, DEPT, SALARY, JOIN_DATE) VALUES 
(1, 'John Doe', 'IT', 60000.50, '2020-06-15'),
(2, 'Alice Smith', 'HR', 55000.00, '2019-08-20'),
(3, 'Bob Johnson', 'Finance', 75000.75, '2018-03-10'),
(4, 'Charlie Brown', 'IT', 62000.25, '2021-01-05'),
(5, 'David Wilson', 'Marketing', 58000.00, '2022-07-12'),
(6, 'Eve Adams', 'IT', 64000.90, '2017-09-30'),
(7, 'Frank Thomas', 'HR', 53000.45, '2020-12-01'),
(8, 'Grace Lee', 'Finance', 77000.60, '2016-05-25'),
(9, 'Hank Miller', 'Marketing', 59000.80, '2021-09-10'),
(10, 'Ivy Clark', 'IT', 67000.20, '2015-02-14');

#Retrieve all employees ordered by salary in descending order.
SELECT *FROM EMP ORDER BY SALARY DESC;

#Find the employee with the minimum salary.
SELECT MIN(SALARY) FROM EMP;

#Count the total number of employees.
SELECT COUNT(*) FROM EMP;

#Find the maximum salary grouped by department.
SELECT DEPT,MAX(SALARY) FROM EMP GROUP BY DEPT;

SELECT *FROM EMP ORDER BY JOIN_DATE ASC;

#Retrieve all employees sorted by salary in descending order.
SELECT *FROM EMP ORDER BY  SALARY DESC;

#Find employees who joined after 2020-01-01.
SELECT *FROM EMP WHERE JOIN_DATE > '2020-01-01';

#Aggregate Functions (SUM, AVG, MIN, MAX, COUNT)

#total number of employees.
SELECT COUNT(*) FROM EMP;

#total salary paid to all employees.
SELECT SUM(SALARY) FROM EMP;

#
SELECT AVG(SALARY) FROM EMP;

SELECT MIN(SALARY) FROM EMP WHERE DEPT='HR' ;

# GROUP BY and HAVING

#number of employees in each department.
SELECT DEPT,COUNT(*) FROM EMP GROUP BY DEPT;

#average salary per department.
SELECT DEPT,COUNT(*) FROM EMP  GROUP BY DEPT;
#Find departments where the total salary is greater than 150,000.
SELECT DEPT,SUM(SALARY) FROM EMP GROUP BY DEPT HAVING SUM(SALARY)>15000;

#Find departments that have more than 2 employees.
SELECT DEPT, COUNT(*) FROM EMP GROUP BY DEPT HAVING COUNT(*) > 2;








