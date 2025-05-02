select 
	gr.name as group_name,
	ROUND(AVG(g.grade), 2) as avg_grade
from grades g
join students s on g.student_id = s.id
join groups gr on s.group_id = gr.id
join subjects sub on g.subject_id = sub.id
where sub.name = 'Persevering actuating encryption'
group by gr.id;