create database if not exists first_example;

use first_example;

Create table person(
person_id smallint unsigned,
fname varchar(20),
lname varchar(20),
gender enum('M','F'),
birth_date DATE,
street varchar(30),
city varchar(20),
state varchar(20),
country varchar(20),
postal_code varchar(20),
Constraint pk_person primary key(person_id) -- cria a primary key e da nome a ela 
);

desc person; -- retorna a descrição da tabela 

create table favorite_food (
person_id smallint unsigned,
food varchar(20),
constraint pk_favorite_food primary key (person_id, food), -- declarando como chave composta
constraint fk_favorite_food_person_id foreign key (person_id) references person(person_id) -- criando chave estrangeira
);

desc favorite_food;

desc person;
Insert into person values ('4','Gustavo','Cunha','M','2004-12-13','Rua Francisco','Estancia','SE','BRASIL','49200-000'),
('2','Rosa','Cunha','F','1967-11-22','Rua Francisco','Estancia','SE','BRASIL','49200-000'),
('3','Rademaker','Ramos','M','1970-04-06','Rua Francisco','Estancia','SE','BRASIL','49200-000');
Select * From person;

delete from person where person_id=4;


desc favorite_food;

Insert into favorite_food values (1,'lasanha'),
(2,'Churrasco'),
(3,'Strogonoff');

Select * From favorite_food;










