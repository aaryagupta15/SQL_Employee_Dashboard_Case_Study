select * from employee;

select department, count(*) as employeecount 
from employee
group by department
order by employeecount desc;