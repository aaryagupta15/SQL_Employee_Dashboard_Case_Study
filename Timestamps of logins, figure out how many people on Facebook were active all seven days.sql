select * from login_info;
select a.login_time, count(distinct a.user_id) from 
login_info a
Left join login_info b
on a.user_id = b.user_id
where a.login_time = b.login_time - interval 1 day
group by 1;