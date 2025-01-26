select * from event_session_details;
select * from user_details;
select date, user_id, sum(timespend_sec)/count(*) as 'avg time spent per user per day'
from event_session_details
group by 1,2
order by 1;