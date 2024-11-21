-- Asi creamos una tabla
create table Users (
	name VARCHAR(10) unique
);

-- Aqui insertamos un registro unico
insert into users (name) 
	values ('Luis');

--Aqui obtenemos todos los registros de la tabla users
select * from users;

-- Asi se actualiza un registro en nuestra tabla
update users set "name" = 'Rodrigo' where "name" = 'Gustavo';

select name from users limit 2;

-- select con clausura where
select * from users where name = 'Pedro';

--Uso de comodines en la clausula like
_ significa un caracter cualquiera
select * from users where name like 'Ju%';


--Aqui elimino todos los registros que digan Juan y un caracter mas
delete from users where name like 'Juan_';

--Asi borramos totalmente una tabla
drop table users;

--Aqui solo eliminamos los datos de la tabla, no la estructura
truncate table users;

-- select con operaciones en nuestras cadenas
-- tambien colocamos un alias
select 
	UPPER(name) as upper_name, 
	LOWER(name) as lower_name, 
	LENGTH(name) as length, 
	(20*2) as constante,
	CONCAT(id,'-' ,name) as id_name
from users;

select 
	name,
	SUBSTRING(name,0,  position(' ' in name)) as first_name,
	TRIM(SUBSTRING(name, position(' ' in name))) as last_name
from users;

-- Aqui realizamos la creacion de 2 columnas adicionales, separando el nombre.
update users
	set 
	first_name = SUBSTRING(name,0,  position(' ' in name)),
	last_name = TRIM(SUBSTRING(name, position(' ' in name)))

select * from users;
