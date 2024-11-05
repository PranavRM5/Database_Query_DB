create database college;
create database if not exists college;
use college;

drop database college;  
drop database if exists college;

create table student(
id int primary key,
name varchar(50),
age int not null
);

desc student;
insert into student values(1,"Pranav",22);
insert into student values(2,"Raj",21);
select * from student;

show databases;
show tables;

drop table student;

create table student(
rollno int primary key,
name varchar(50)
);

desc student;

select * from student;

insert into student(rollno, name) values (1, "Pranav");
insert into student(rollno, name) values (2, "Ram");
insert into student(rollno, name) values (3, "Shyam"), (4,"Jay");
insert into student values (5, "Shiv");

create table temp1(
id int unique
);

insert into temp1 value(101);
insert into temp1 value(101);

select * from temp1;

create table temp2(
id int not null
);

insert into temp2 value( );
insert into temp2 value( );
insert into temp2 value(101);

select * from temp2;


create table temp3(
id int,
name varchar(50),
age int,
city varchar(20),
primary key(id, name)
);

drop table temp3;

create table emp(
id int,
salary int default 25000
);

insert into emp (id) values (101);

select * from emp;
