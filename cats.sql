SET SQL_SAFE_UPDATES = 0;
show databases;
drop database cats_app;
create database cats_app;
use cats_app;
show tables;
create table cats (
	cat_id int auto_increment primary key ,
	name  varchar(20) not null default "no name",
	age  int not null default 0,
    breed  varchar(20) default "normal");
    
insert into cats(name , age) values
						("dusty" , 9),
					   ("frenzy" , 10),
                       ("ruby", 1),
                       ("robin",4),
                       ("giza", 5),
                       ("snipy",6),
                       ("jetty",8);
-- insert into cats(name , age) value(,);
select * from cats;
select cat_id id from cats order by cat_id asc;
select breed b, name n from cats ;
select breed from cats where breed = "normal";
select cat_id id , age a from cats where cat_id = age;
update cats set cats.name = "dawny" where name = "snipy";
update cats set breed = "shorty" where age = 5;
update cats set age = 3 where age = 4;
update cats set breed = "hee" where age = 8;
select * from cats;
show tables;
desc cats;
-- drop table cats;
-- show tables;
SET SQL_SAFE_UPDATES = 1;
