select count(account_id) 'First time fraud accounts' from (
select distinct a.account_id, count(a.account_status) 
from ad_accounts a
join ad_accounts b
on a.account_id = b.account_id
where b.date = curdate() and a.account_status = 'fraud'
group by account_id
having count(a.account_status) = 1) ad_accnt;