use company;

desc departament;

-- retira a ambiguidade atraves do alias ou AS STATEMENT
Select Dname, l.Dlocaltion as Department_name
from departament as d, dept_locations as l
where d.Dnumber - l.Dnumber;
