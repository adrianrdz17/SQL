-- Aqui obtenemos el conteo de los dominios de los correos de los usuarios
select
	count(*),
	substring(email,
	position('@' in email) + 1) as domain
from
	users
group by
	domain
having
	count(*) > 1
order by
	domain;
