Create Schema if not exists company;

use company;

-- restrição atribuida a um domininio 

-- Create domain D_num as int check(D_num > 0 and D_num < 21);

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
constraint chck_salary_employee Check (Salary < 2000.0), -- fazendo checagem e definindo o nome quando for olhar as constraint
constraint pk_employee primary key (Ssn)
);

use company;
Create table departament (
Dname varchar(15) not null,
Dnumber int not null,
Mgr_ssn char(9),
Mgr_start_date date,
Dept_Create_date date,
Constraint chkcheck_date_dept Check (Dept_Create_date < Mgr_start_date),
constraint pk_dept primary key (Dnumber),
constraint unique_name_dept Unique (Dname),
foreign key (Mgr_ssn) references employee(Ssn)
);

Create table dept_locations(
Dnumber int not null,
Dlocaltion varchar(15) not null,
constraint pk_dept_locations primary key (Dnumber, Dlocaltion), -- a chave primaria e multivaroralvel pq ela e composta
constraint fk_dept_locations foreign key (Dnumber) references departament(Dnumber)
);

create table project(
Pname varchar(15) not null,
Pnumber int not null,
Plocation varchar(15),
Dnum int not null,
primary key (Pnumber),
constraint unique_project unique (Pname),
constraint fk_project foreign key (Dnum) references departament (Dnumber)
);

Create table works_on (
Essn char(9) not null, -- obriga ter 9 digitos
Pno int not null,
Hours decimal(3,1) not null,
primary key (Essn,Pno),
constraint fk_works_on foreign key (Essn) references employee(Ssn),
constraint fk_works_on2 foreign key (Pno) references project(Pnumber)
);

Create table dependent (
Essn char(9) not null,
Dependent_name varchar(15) not null,
Sex char, -- F ou M
Bdate date,
Relationship varchar(8),
Age int not null,
constraint chck_age_dependent check (Age < 22),
primary key (Essn,Dependent_name),
constraint fk_dependent foreign key (Essn) references employee(Ssn)
);

show tables;

ALTER TABLE employee 
add constraint fk_employee
foreign key (Super_ssn) references employee(Ssn)
on delete set null -- Os valores das colunas da chave estrangeira na tabela filha são definidos como NULL. 
on update cascade;

Select * From information_schema.table_constraints where constraint_schema = 'company';

-- 'def', 'company', 'departament_ibfk_1', 'company', 'departament', 'FOREIGN KEY', 'YES'

-- modificar uma constraint : drop e add
alter table departament drop constraint departament_ibfk_1;
alter table departament add constraint fk_dept foreign key (Mgr_ssn) references employee(Ssn)
on update cascade; -- vai fazer que as chaves de outras tabelas tambem mudam junto com o comando 

alter table dept_locations drop constraint fk_dept_locations;
alter table dept_locations add constraint fk_dept_locations foreign key (Dnumber) references departament (Dnumber) on delete cascade















