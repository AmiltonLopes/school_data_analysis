with average as 
(select round(avg((current_date - dat_nasc)/365),0) as average_age from alunos a )

select
	nom_alu as name,
	round((current_date - dat_nasc)/ 365, 0) as age,
	average.average_age,
	case 
		when round((current_date - dat_nasc)/ 365, 0) = average.average_age then 'Its Average' 
		when round((current_date - dat_nasc)/ 365, 0) < average.average_age then 'Below Average' 
		else 'Above Average'
	end as classification_age	
from
	alunos a 
inner join average on 0=0


/*Result in: https://prnt.sc/MruYWdqWSK3E*/