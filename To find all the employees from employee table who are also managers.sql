select e1.first_name, e2.last_name from employee e1 
join employee e2
on e1.employee_id = e2.manager_id;