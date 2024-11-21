-- Asi se realiza un conteo de registros en nuestra BD
select
	count(*) as total_users,
	min(followers) as min_followers,
	max(followers) as max_followers\
from
	users; 

-- Promedio de followers
select
	round(avg(followers)) as avg_followers,
	sum(followers) / count(*) as avg_manual
from
	users; 