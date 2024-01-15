/*Top 10 classes with the highest occupancy percentage*/

select 
t.ano,
t.semestre,
initcap(d.nom_disc) nom_disc,
t.turma,
t.tot_vagas ,
t.vag_ocup ,
initcap(p.nom_prof) nom_prof ,
round((cast(t.vag_ocup as numeric)/cast(t.tot_vagas as numeric))*100,2) as percent_ocuppation
from turmas t 
inner join disciplinas d on t.cod_disc = t.cod_disc 
inner join professores p on p.cod_prof = t.cod_prof 
order by 8 desc
limit 10