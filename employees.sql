show databases;
drop database employee;
create database employee;
use employee;
create table employees(
	id int auto_increment primary key,
    last_name varchar(100) not null,
    first_name varchar(100) not null,
    middle_name varchar(100) ,
    age int not null,
    current_status varchar(100) not null default "employed"
);
desc employees;
insert into employees(first_name, last_name, age) values( "Siddhesh" ,"Dandavatimath",20);
select * from employees