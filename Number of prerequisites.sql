with cont as 
(select cod_disc cod_disc_prin, count(1) quantity_pre_req from pre_requisitos pr group by 1)

select 
initcap(d.nom_disc) nom_disc,
STRING_AGG(initcap(d2.nom_disc), ', ') as disc_pre_req,
co.quantity_pre_req
from pre_requisitos pr 
inner join disciplinas d on pr.cod_disc = d.cod_disc 
inner join disciplinas d2 on pr.cod_disc_pre = d2.cod_disc 
left join cont co on co.cod_disc_prin = pr.cod_disc 
group by d.nom_disc, co.quantity_pre_req
order by 1