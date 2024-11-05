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

select city, avg(marks)
from student
group by city
order by city;

select city, avg(marks) as avg_marks
from student
group by city
order by avg_marks asc;

select city, avg(marks) as avg_marks
from student
group by city
order by avg_marks desc;



















