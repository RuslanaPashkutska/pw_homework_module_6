select distinct sub.name
from grades g
join subjects sub on g.subject_id = sub.id
join students s on g.student_id = s.id
where s.fullname = 'Shawn Alexander';