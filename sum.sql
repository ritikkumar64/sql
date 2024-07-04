create database instagram;
use instagram;

create table user (
id  int,
age int,
name   varchar(30) not null,
email varchar(50) unique,
followers int default 0,
following int, 
constraint check (age >= 13)
);

select distinct age from user;

insert into user
(id, age,name, email, followers, following)
value
(1,14, "ritik", "ritikbholu@gmail.com", 123, 400),
(2,13, "kumar", "r@gmail.com", 13, 400),
(3,15, "rk", "ritik@gmail.com", 123, 400),
(4,16, "ojas", "bholu@gmail.com", 1423, 400);

insert into user
(id, age,name, email, followers, following)
value
(5,19,"abhi", "abhi@gamil.com", 4000,100000000),
(7,22,"abhishek", "abhishek@gamil.com", 400,9000000);

select  followers, name , age
from user
order by followers desc; 

select sum(followers)
from user;


