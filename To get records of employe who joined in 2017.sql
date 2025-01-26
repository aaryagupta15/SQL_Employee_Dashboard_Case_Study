select * from employee;
select first_name, last_name, joining_date from employee where year(joining_date)=2017 and month(joining_date) = 1;