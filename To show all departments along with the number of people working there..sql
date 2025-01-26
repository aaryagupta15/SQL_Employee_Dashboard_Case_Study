select * from employee;
select department, count(*) as 'Number of employees' from employee 
group by department 
order by count(department);