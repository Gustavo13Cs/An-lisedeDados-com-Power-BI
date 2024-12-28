use company;

-- Case Statement

Select Fname,Salary,Dno From employee; 

Update employee set Salary = 
Case
when Dno=5 then Salary+ 2.000 
when Dno=4 then Salary+ 1.500
when Dno=1 then Salary+ 3.000
else Salary + 0  
end;
