select distinct sub.name
from grades g
join subjects sub on g.subject_id = sub.id
join students s on g.student_id = s.id
join teachers t on sub.teacher_id = t.id 
where s.fullname = 'Barbara Dyer' and t.fullname = 'Michele Fuller'; 