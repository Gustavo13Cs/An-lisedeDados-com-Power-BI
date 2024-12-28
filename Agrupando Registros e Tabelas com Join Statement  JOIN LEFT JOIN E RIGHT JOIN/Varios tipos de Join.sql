use company;
-- join STATEMENT
desc employee;
desc works_on;
Select * From employee JOIN departament on Ssn = Mgr_ssn;

-- JOIN 
Select * From employee JOIN departament on Ssn = Mgr_ssn;

-- JOIN ON -- INNNER JOIN ON 
Select * From employee JOIN departament on Ssn = Mgr_ssn;
Select Fname,Lname,Address
from (employee join departament on Dno=Dnumber)
where Dname = 'Reserarch';

Select * From dept_locations; -- addresss e Dnumber 
Select * From departament; -- Dname,Dept-Create-date

-- ele exluir informações q estão não estão na mesma tabela
Select Dname as Department,Dept_Create_date as StartDate, Dlocaltion as Location
from departament INNER JOIN dept_locations using(Dnumber)
order by StartDate;

-- CROS JOIN - produto cartesiano 

sELECT * from employee cross join dependent;
