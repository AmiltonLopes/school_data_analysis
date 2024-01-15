with base as 
(select
	p.cod_prof,
	initcap(p.nom_prof) nom_prof,
	c.nom_curso,
	initcap(p2.nom_prof) as prof_coordenator
from
	professores p
inner join cursos c on
	p.cod_curso = c.cod_curso
inner join professores p2 on p2.cod_prof = c.cod_coord 
)

select
	prof_coordenator,
	nom_curso,
	count(1) as quantity,
	round((count(1) / sum(count(1)) OVER ())*100,2) as percent_of_total
from
	base
group by 1, 2