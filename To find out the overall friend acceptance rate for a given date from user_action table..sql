select * from user_action;
select count(a.user_id_who_sent)*100 / (select count(user_id_who_sent) from user_action) as percent
from user_action a
join user_action b
on a.user_id_who_sent = b.user_id_who_sent and a.user_id_to_whom = b.user_id_to_whom
where a.date_action = '2018-05-24' and b.action = "accepted";
