select round((count(confirmed_no.phone_number)/count(confirmation_no.phone_number))*100, 2)
from confirmation_no
left join confirmed_no
on confirmed_no.phone_number= confirmation_no.phone_number;