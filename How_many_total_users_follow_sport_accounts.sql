select * from all_users;
select * from sport_accounts;
select * from follow_relation;
select count(distinct c.follower_id) as count_all_sports_followers 
from  sport_accounts a
join all_users b
on a.sport_player_id = b.user_id
join follow_relation c
on b.user_id = c.target_id;