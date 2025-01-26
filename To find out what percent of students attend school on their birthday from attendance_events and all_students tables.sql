select * from all_students;
select * from attendance_events;
select (count(attendance_events.student_id) * 100 / (select count(student_id) from attendance_events)) as Percent
from attendance_events 
join all_students 
on all_students.student_id = attendance_events.student_id
where month(attendance_events.date_event) = month(all_students.date_of_birth)
and day(attendance_events.date_event) = day(all_students.date_of_birth);