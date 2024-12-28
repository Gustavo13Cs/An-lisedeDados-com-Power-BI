-- funções e clasulas de agrupamentos 

use company;

Select count(*) from employee;

Select count(*) from employee, departament
where Dno=Dnumber and Dname = 'Research';

Select count(*) as Number_of_employees, round(avg(Salary),2) as Salary_avg from employee
group by Dno;

