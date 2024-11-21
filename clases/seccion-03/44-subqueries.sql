-- SELECT * FROM TablaA Where (Sub Query from Tabla B)
-- Esto no es muy eficiente, pues las Sub Query se ejecutara el mismo numero de registros que obtenga el primer select

select
	*
from
	(
	select
		count(*) as domain_count,
		substring(email,
		position('@' in email) + 1) as domain,
		'Fernando' as name,
		37 as age
	from
		users
	group by
		domain
	having
		count(*) > 1
	order by
		domain) as email_domains;
