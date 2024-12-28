-- Clasulas de ordenação 
use company;

Select * From employee order by Fname, Lname;

-- nome do departamento , nome do gerente
Select distinct d.Dname, concat(e.Fname,' ', e.Lname) as Manager, Address
From departament as d, employee e, works_on as w, project p
where (d.Dnumber = e.Dno and e.Ssn=d.Mgr_ssn and w.Pno = p.Pnumber)
order by d.Dname, e.Fname, e.Lname;

-- recupero todos os empregados e seus projetos em andamento
Select distinct d.Dname as Department, concat(e.Fname,' ', e.Lname) as Employee,p.Pname as Project_Name,Address 
from departament as d, employee e, works_on w, project p 
where (d.Dnumber = e.Dno and e. Ssn = w.Essn and w.Pno = p.Pnumber)
order by d.Dname, e.Fname, e. Lname;



