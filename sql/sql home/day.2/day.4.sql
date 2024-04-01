create database kade;

use kade;
create table customer(
cust_id varchar(200)primary key,
cust_name varchar(150)
);

create table item(
item_id varchar(50)primary key,
name varchar(100)

);
alter table customer
modify cust_name varchar(150)not null;


insert into customer(cust_id,cust_name)values
('12','kamal');
('13','nimal');

delete from customer where cust_id is null;
