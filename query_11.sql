select 
	s.fullname as student_name,
	t.fullname as teacher_name,
	round(avg(g.grade), 2) as average_grade
from grades g
join students s on g.student_id = s.id
join subjects sub on g.subject_id = sub.id
join teachers t on sub.teacher_id = t.id
where s.fullname = 'Anthony Williams' and t.fullname = 'Richard Richardson'
group by s.fullname, t.fullname