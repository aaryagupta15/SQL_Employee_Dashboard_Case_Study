select first_name, last_name from employee where salary = (select max(salary) from employee);