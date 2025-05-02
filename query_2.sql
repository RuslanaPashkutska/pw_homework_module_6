select
	s.fullname,
	round(avg(g.grade), 2) as avg_grade
from students s
join grades g on s.id = g.student_id
join subjects sub on g.student_id = sub.id
where sub.name =  'Operative 24/7 architecture'
group by s.id
order by avg_grade desc 
limit 1;