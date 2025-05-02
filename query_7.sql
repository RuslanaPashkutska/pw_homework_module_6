select 
	s.fullname,
	g.grade, 
	g.grade_date
from grades g
join students s on g.student_id = s.id 
join groups gr on s.group_id = gr.id
join subjects sub on g.subject_id = sub.id
where gr.name = 'decision' and sub.name = 'Operative 24/7 architecture';