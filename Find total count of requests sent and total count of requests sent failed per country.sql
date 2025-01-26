select * from count_request;

select country_code, Total_request_sent, Total_percent_of_request_sent_failed, 
cast((Total_request_sent*Total_percent_of_request_sent_failed)/100 as decimal) as Total_request_sent_failed
from
( 
select country_code, sum(count_of_requests_sent) as Total_request_sent,
cast(replace(ifnull(sum(percent_of_request_sent_failed),0), '%','') as decimal(2,1)) as Total_percent_of_request_sent_failed
from count_request
group by country_code
) as Table1;