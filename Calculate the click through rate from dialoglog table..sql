select * from dialoglog;
select app_id
        , ifnull(sum(case when type = 'click' then 1 else 0 end)*1.0
        / sum(case when type = 'impression' then 1 else 0 end), 0 )AS 'CTR(click through rate)'
from dialoglog
group by app_id;