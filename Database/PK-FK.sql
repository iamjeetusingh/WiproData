# create database
create database richfolks;

# use database
use richfolks;

# crate table
create table city(
city_id int not null auto_increment,
city_name varchar(50) not null,
primary key (city_id)
);

# display content of the table.
select * from city;

# insert data to the table.
insert into city(city_name)
values ("Delhi"),
		("Mumbai"),
        ("Kolkata"),
        ("Chennai"),
        ("Madhya Pradesh"),
        ("Karnataka");
        
# display content of the table.
select * from city;

# creating another table with details:
create table customers(
id int not null,
firstname varchar(50) not null,
lastname varchar(50) not null,
city int not null,
primary key (id),
foreign key (city) references city(city_id)
);

# display this table
select * from customers;

# inserting the data inthe table.
insert into customers (id,firstname, lastname, city) values
(10,"Mukesh","Ambani",6),
(11,"Anil","Ambani",6),
(12,"Anant","Ambani",1),
(13,"Ratan","Tata",3),
(14,"Aditya","Birla",5),
(15,"Gautam","Adani",1);

select * from customers;
select * from city;

select c.id, c.firstname, c.lastname, city.city_name from customers c
inner join city on city.city_id=c.city;












