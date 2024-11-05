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

select * from student;

alter table student
rename column name to full_name;

alter table student
change full_name name varchar(50) ;

desc student;
select * from student;

delete from student
where marks<80;

alter table student
drop column grade;