-- Inserção de dados no bd company

use company;

Select * From employee;
insert into employee values('John','B','Smith',123456789,'1965-01-09','731-Fondren-Houston-Tx','M',30.0000,null,5);

insert into employee values
('Anna','S','Smith',125445649,'1965-01-09','731-Fondren-Houston-Tx','F',10.0000,123456789,4),
('Luiza','B','Cunha',232345632,'1965-11-09','731-Fondren-Houston-Tx','F',32.0000,232345632,3),
('Gustavo','C','Santos',123456739,'1965-05-09','731-Fondren-Houston-Tx','M',35.0000,123456739,2),
('Marcus','V','Smith',123442329,'1965-02-09','731-Fondren-Houston-Tx','M',30.0000,123442329,1),
('Kauan','C','Smith',123456754,'1965-03-09','731-Fondren-Houston-Tx','M',10.0000,123456754,10);


Insert into dependent values (125445649, 'Alice','F','1986-04-05', 'Daughter'),
(232345632, 'Gustavo','M','2004-12-13', 'Son'),
(123456739, 'Rosa','F','1986-04-15', 'Santos'),
(123442329, 'Jose','M','1986-01-05', 'Cunha'),
(123456754, 'Aline','F','1986-01-05', 'Silva');

insert into departament values ('Reserarch',5,125445649,'1988-05-22','1986-05-22'),
('Administration',4,123456739,'1995-01-01','1994-01-01'),
('Headquarters',1,123456754,'1981-06-19','1980-06-19');

insert into dept_locations values (1,'Houston'),
(5,'Bellaire'),
(4,'Staffor'),
(5,'Sugarland'),
(5,'Houston');

insert into project values ('ProductX',1,'Bellaire',5),
('ProductY',2,'Bellaire',5),
('ProductZ',3,'Bellaire',5),
('ProductA',10,'Bellaire',4),
('ProductB',20,'Bellaire',1),
('ProductC',30,'Bellaire',4);

INSERT INTO WORKS_ON VALUES (125445649,1,32.5),
(123456754,2,7.5),
(125445649,3,40.0),
(123442329,2,32.5),
(123442329,1,10.5);




