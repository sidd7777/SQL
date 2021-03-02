SET SQL_SAFE_UPDATES = 0;
drop database shirts_db;
create database shirts_db;
show databases;
use shirts_db;
create table shirts(
	shirt_id int primary key auto_increment not null,
    article varchar(20)  not null,
    color varchar(20) not null,
    shirt_size varchar(5) not null,
    last_worn int not null
);
desc shirts;
insert into shirts(article,color,shirt_size,last_worn) values ('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

select * from shirts;

-- add new shirt with given details
insert into shirts(article, color, shirt_size, last_worn) 
			values('shirt','purple','M',50);
            
select * from shirts;

-- print only article and color
select article, color  from shirts;

-- expect id print all medium shirts
select article, color, shirt_size, last_worn from shirts where shirt_size = 'M' or shirt_size = 'm';

-- change polo shirt to size L
update shirts set shirt_size = "L" where article = 'polo shirt' or article = 'Polo Shirt'
									or article = 'Polo shirt' or article = 'POLO SHIRT';

select * from shirts;


update shirts set last_worn = 0 where last_worn < 16;

select * from shirts;

-- change all white shirts size to xs and off white color
update shirts set shirt_size = 'XS' , color = "off white" where color = 'white';

select * from shirts;

-- remove shirt if last_worn is greater than 200
delete from shirts where last_worn > 199;

select * from shirts;

-- remove all tank top
delete from shirts where article = "tank top";

select * from shirts;

-- clear all data 
truncate table shirts;

select * from shirts;

-- drop table
drop table shirts; 

show tables;

SET SQL_SAFE_UPDATES = 1;

