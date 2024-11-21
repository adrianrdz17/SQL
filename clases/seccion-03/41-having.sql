select
	count(*) as total,
	country
from
	users
group by
	country
having
	-- count(*) > 5
	count(*) between 1 and 5
order by
	count(*) desc;