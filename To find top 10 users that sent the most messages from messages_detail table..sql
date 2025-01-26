select * from messages_detail;
select user_id, messages_sent
from messages_detail
order by messages_sent desc
limit 10;