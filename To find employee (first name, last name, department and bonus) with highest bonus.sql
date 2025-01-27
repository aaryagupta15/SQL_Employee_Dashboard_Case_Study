Select e.first_name, e.last_name, e.department, b.bonus_amount from employee e
join bonus b 
on e.employee_id = b.employee_ref_id
order by b.bonus_amount desc limit 1
