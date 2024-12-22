Create Schema if not exists company;

use company;
Create table company.employee(
Fname varchar(25) NOT NULL,
Minit char,
Lname varchar(25) NOT NULL,
Ssn char(9) NOT NULL, -- char obriga que seja nove digitos exatos
Bdate DATE,
Address varchar(30),
Sex char,
Salary decimal(10,2),
Super_ssn char(9),
Dno int NOT NULL,
primary key (Ssn)
);

use company;
Create table departament (
Dname varchar(15) not null,
Dnumber int not null,
Mgr_ssn char(9),
Mgr_start_date date,
primary key (Dnumber),
Unique (Dname),
foreign key (Mgr_ssn) references employee(Ssn)
);

Create table dept_locations(
Dnumber int not null,
Dlocaltion varchar(15) not null,
primary key (Dnumber, Dlocaltion), -- a chave primaria e multivaroralvel pq ela e composta
foreign key (Dnumber) references departament(Dnumber)
);

create table project(

Pname varchar(15) not null,
Pnumber int not null,
Plocation varchar(15),
Dnum int not null,
primary key (Pnumber),
unique (Pname),
foreign key (Dnum) references departament (Dnumber)
);

Create table works_on (
Essn char(9) not null, -- obriga ter 9 digitos
Pno int not null,
Hours decimal(3,1) not null,
primary key (Essn,Pno),
foreign key (Essn) references employee(Ssn),
foreign key (Pno) references project(Pnumber)
);

Create table dependent (
Essn char(9) not null,
Dependent_name varchar(15) not null,
Sex char, -- F ou M
Bdate date,
Relationship varchar(8),
primary key (Essn,Dependent_name),
foreign key (Essn) references employee(Ssn)
);

show tables;



