select * from all_students;
select * from attendance_events;
select (count(a.student_id) * 100 / (select count(student_id) from all_students)) as 'Percentage' from all_students s
join attendance_events a on s.student_id = a.student_id
where month(s.date_of_birth) = month(a.date_event) and day(s.date_of_birth) = day(a.date_event) and
a.attendance = 'present'
