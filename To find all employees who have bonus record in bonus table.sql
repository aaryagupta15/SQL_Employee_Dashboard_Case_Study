select * from employee;
select * from bonus;
select * from employee where employee_id in (select employee_ref_id from bonus where employee.employee_id = bonus.employee_ref_id);