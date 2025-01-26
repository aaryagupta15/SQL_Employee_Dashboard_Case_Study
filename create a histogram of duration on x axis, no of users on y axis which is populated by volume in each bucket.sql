select * from event_session_details;
select floor(timespend_sec/500)*500 as bucket,
count(distinct user_id) as count_of_users
from event_session_details
group by 1;