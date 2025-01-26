select * from user_interaction;
select table1.user_id, sum(number_of_interactions) as Number_of_interactions
from
(
select user_1 as user_id, count(user_1) as number_of_interactions from user_interaction
group by user_1
union all
select user_2 as user_id, count(user_2) as number_of_interactions from user_interaction
group by user_2) table1
group by table1.user_id
having sum(number_of_interactions) >= 4;
