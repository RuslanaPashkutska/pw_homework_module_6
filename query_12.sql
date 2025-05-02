select 
	s.fullname,
	g.grade,
	g.grade_date
from grades g
join students s on g.student_id = s.id
join groups gr on s.group_id = gr.id
join subjects sub on g.subject_id = sub.id
where gr.name = 'front' and sub.name = 'Reduced next generation moderator'
	and g.grade_date = (
		select max(g2.grade_date)
		from grades g2
		join students s2 on g2.student_id = s2.id
		join groups gr2 on s2.group_id = gr2.id
		join subjects sub2 on g2.subject_id = sub2.id
		where gr2.name = 'front' and sub2.name = 'Reduced next generation moderator'
	);