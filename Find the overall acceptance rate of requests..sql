select * from friend_request;
select * from request_accepted;

select ifnull(round(
(select count(*) from (select distinct acceptor_id, requestor_id from request_accepted) as A)
/ 
(select count(*) from (select distinct requestor_id, sent_to_id from friend_request ) as B), 2),0
) as basic;
