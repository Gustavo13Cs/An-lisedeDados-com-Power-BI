-- JOIN COM MAIS DE 3 TABELAS

Select concat(Fname,' ',Lname) as Complete_name ,Dno as DeptNumber,Pname as ProjectName,Pno as ProjectNumber,Plocation as Location From employee 
inner Join works_on on Ssn = Essn 
inner join project on Pno = Pnumber
where Pname like 'Product%'
order by Pnumber;

-- departament, dept_location , employee

Select Dnumber,Dname,Fname,Lname, Salary, Salary*1.05 as Bonus From departament
inner join dept_locations using(Dnumber)
inner join employee on Ssn = Mgr_ssn
;