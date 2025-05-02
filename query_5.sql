select sub.name
from subjects sub
join teachers t on sub.teacher_id = t.id
where t.fullname = 'Michele Fuller';