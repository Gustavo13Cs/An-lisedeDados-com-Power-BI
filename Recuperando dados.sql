Select * From employee;

-- gerente e seu departamento
Select Ssn,Fname,Dname from employee e, departament d where (e.Ssn = d.Mgr_ssn);

-- recuperando dependetes dos empregados
Select Fname,Dependent_name,Relationship From employee , dependent where Essn = Ssn;

