create database apna_college;
use apna_college;


CREATE TABLE student ( 
rollno INT PRIMARY KEY, 
name VARCHAR(50), 
marks INT NOT NULL, 
grade VARCHAR(1), 
city VARCHAR(20) 
);


desc student;

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"), 
(102, "bhumika", 93, "A", "Mumbai"), 
(103, "chetan", 85, "B", "Mumbai"), 
(104, "dhruv", 96, "A", "Delhi"), 
(105, "emanuel", 12, "F", "Delhi"), 
(106, "farah", 82, "B", "Delhi");

select * from student ;

create view view1 as
select rollno, name, marks from student; 

select * from view1;

select * from view1
where marks>90;

drop view view1;








select avg(marks) from student;

select full_name, marks
from student 
where marks>89.0000;

select full_name, marks
from student 
where marks> (select avg(marks) from student) ;

select rollno
from student
where rollno%2=0;

select rollno, name
from student
where rollno%2=0;

select name
from student
where rollno in (102, 104, 106);

select rollno, name, city
from student
where rollno in (select rollno 
				from student 
				where rollno%2=0);

select *
from student
where city = "Delhi";

select max(marks)
from (select *
	from student
	where city = "Delhi") as temp;




Alter table student
change column full_name name varchar(50);

alter table student
add column age int;

alter table student
drop column age;

alter table student
rename to stud;

alter table stud
rename to student;

alter table student
add column age int not null default 19;

alter table student
modify column age varchar(2);

alter table student
change age stu_age int;

alter table student
drop column stu_age;

alter table student
rename to stud;

desc student;

insert into student 
(rollno, name, marks, grade, stu_age) values
(107, "gargi", 68, "c", 100);

select * from student;
select * from stud;


update student
set city="Pune"
where rollno=107;

truncate table student;

alter table student
rename column name to full_name;

desc student;
select * from student;

delete from student
where marks<80;

alter table student
drop column grade;

create table students(
id int primary key,
name varchar(50)
);

INSERT INTO students (id, name) VALUES 
(101, 'adam'),
(102, 'bob'),
(103, 'casey');



create table courses(
id int primary key,
course varchar(50)
);
drop table cources;

INSERT INTO courses (id, course) VALUES 
(102, 'english'),
(105, 'math'),
(103, 'science'),
(107, 'computer science');

select * from students;
select * from courses;

select * 
from students
inner join courses
on students.id = courses.id;

select * 
from students as s
inner join courses as c
on s.id = c.id;

select * 
from students as s
left join courses as c
on s.id = c.id;

select * 
from students as s
left join courses as c
on s.id = c.id
where c.id is null;


select * 
from students as s
right join courses as c
on s.id = c.id;

select * 
from students as s
right join courses as c
on s.id = c.id
where s.id is null;


select * 
from students as s
left join courses as c
on s.id = c.id
union
select * 
from students as s
right join courses as c
on s.id = c.id;

select * 
from students as s
left join courses as c
on s.id = c.id
where c.id is null
union
select * 
from students as s
right join courses as c
on s.id = c.id
where s.id is null;



create table employee(
id int primary key,
name varchar(50),
manager_id int 
);

insert into employee
(id, name, manager_id) values
(101, "Adam", 103),
(102, "Bob", 104),
(103, "Casey" ),
(104, "Donald", 103);














CREATE TABLE dept ( 
id int primary key,
name varchar(50)
);

insert into dept values
(101, "English"),
(102, "IT");

select * from dept;

update dept
set id = 111
where id = 101;

insert into teacher values
(101, "Adam", 101),
(102, "Bob", 102),
(103, "Casey", 103),;

select * from teacher;

CREATE TABLE teacher ( 
id int primary key,
name varchar(50),
dept_id int,
foreign key (dept_id) references dept(id)
on delete cascade
on update cascade
);

drop table teacher;


select distinct(city) from student;

select * from student where marks>80;
select * from student where city="Mumbai";
select * from student where marks>80 && city="Mumbai";
select * from student where marks>80 And city="Mumbai";

select * from student where marks+10>100;
select * from student where marks=93;
select * from student where marks>90;
select * from student where marks>90 and city="Mumbai";

select * from student where marks>90 or city="Mumbai";

select * from student where marks between 80 and 90;

select * from student where city in ("Mumbai", "Delhi", "Gurgaon");

select * from student where city not in ("Mumbai", "Delhi");

select * from student where city in ("Faridabad", "Gurgaon");

select * from student limit 3;

select * from student where marks>75 limit 3;

select * from student order by marks asc;

select * from student order by marks desc limit 3;

select count(rollno) from student;

select max(marks) from student;

select min(marks) from student;

select sum(marks) from student;

select avg(marks) from student;

select city 
from student
group by city;

select city, count(name) 
from student
group by city;

select city, name, count(name) 
from student
group by city, name;

select city, avg(marks)
from student
group by city;

select grade, count(rollno)
from student
group by grade
order by grade;

select city, count(rollno)
from student
group by city
having max(marks)>90;

SELECT city, grade, marks
FROM student
WHERE grade="A"
GROUP BY city, grade, marks
HAVING MAX(marks)>90
ORDER BY city asc;

SELECT city
FROM student
WHERE grade="A"
GROUP BY city
HAVING MAX(marks)>90
ORDER BY city asc;

set sql_safe_updates=0;
set sql_safe_updates=1;

update student
set grade="O"
where grade="A";

update student
set marks=82, grade="B"
where rollno=105;

update student
set marks=12, grade="F"
where rollno=105;

update student
set grade="F"
where marks<=40;

update student
set marks=82
where rollno=105;

update student
set grade="B"
where marks between 80 and 90;

update student
set marks = marks+1;

delete from student
where marks<33;

delete from student;

select * from student;