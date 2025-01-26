Select first_name, salary, department from employee where salary in (select max(salary) as 'Max Salary'from employee group by department)
order by salary desc;
