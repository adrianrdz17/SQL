-- Obtengo los usuarios con 4 o 4999 followers
select
	first_name,
	last_name,
	followers
from
	users
where
	followers = 4 or followers = 4999;
	
-- Realizo el conteo de followers que para ambas condiciones
select
	count(*),
	followers
from
	users
where
	followers = 4999
	or followers = 4
group by
	followers
order by
	followers desc ;	