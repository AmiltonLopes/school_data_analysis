select c.nom_curso, count(distinct a.mat_alu) qtd_student from alunos a 
inner join cursos c on a.cod_curso = c.cod_curso 
group by 1 order by 2 desc

/*Result in: https://prnt.sc/DsfqNxmVx0lS*/