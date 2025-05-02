select s.fullname
from students s 
join groups g on s.group_id = g.id
where g.name = 'card';