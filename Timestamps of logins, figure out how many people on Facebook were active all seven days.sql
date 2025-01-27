Select COUNT(user_id) AS 'total users' 
from (
    Select user_id 
    from login_info 
    group by user_id 
    having COUNT(DISTINCT DAYNAME(login_time)) = 7
) as active_users;
