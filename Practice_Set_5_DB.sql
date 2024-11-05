create database company;
use company;


create table employee(
id int primary key,
name varchar(50),
manager_id int 
);

insert into employee
(id, name, manager_id) values
(101, "Adam", 103),
(102, "Bob", 104),
(103, "Casey", null),
(104, "Donald", 103);

desc employee;
select * from employee;

select a.name as manager_name, b.name
from employee as a
join employee as b
on a.id = b.manager_id;

select name from employee
union
select name from employee;

select name from employee
union all
select name from employee;

