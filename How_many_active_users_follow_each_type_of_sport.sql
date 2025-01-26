select b.sport_category, count(a.user_id)
from all_users a
join sport_accounts b
on a.user_id = b.sport_player_id
join follow_relation c
on a.user_id = c.follower_id
where a.active_last_month =1
group by b.sport_category;