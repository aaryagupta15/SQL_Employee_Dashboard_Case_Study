select s.name
from salesperson s
join orders o on s.id = o.salesperson_id
join customer c on o.cust_id = c.id
where c.name = 'Samsonic';