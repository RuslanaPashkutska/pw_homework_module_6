select round(avg(g.grade), 2) as average_grade
from grades g 
join subjects sub on g.subject_id = sub.id
join teachers t on sub.teacher_id = t.id
where t.fullname = 'Kelly Jackson'
