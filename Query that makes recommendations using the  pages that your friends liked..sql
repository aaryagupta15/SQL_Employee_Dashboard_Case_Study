select first_name, last_name, department, max(bonus_amount) from employee e
join bonus b
on e.employee_id = b.employee_ref_id
group by department
order by max(bonus_amount) desc limit 1;