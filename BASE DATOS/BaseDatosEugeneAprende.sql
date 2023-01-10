create database bdeugene;
use bdeugene;

-- al crear campos de una tabla se termina con coma ,
-- el primary key NO tiene signo de puntuacion
create table animal(
id_animal int not null auto_increment,
nombre_animal varchar (200) default null,
estado varchar (200) default null,
primary key (id_animal)
);

-- insertar valores a la tabla:
insert into animal (nombre_animal, estado) values ('perro','en proteccion');
insert into animal (nombre_animal, estado) values ('aguila', 'libre');
insert into animal (nombre_animal, estado) values ('conejo', 'libre');
insert into animal (nombre_animal, estado) values ('pollito', 'en proteccion');
insert into animal (nombre_animal, estado) values ('canguro', 'en proteccion');
-- VISUALIZAR TABLA
select * from animal;
-- HACER UNA CONSULTA
select * from animal where id_animal =2;
select * from animal where estado="en proteccion";
-- CONSULTA CON MAS CONDICIONES "Y"
select * from animal where nombre_animal="perro" and estado="en proteccion";

select * from animal where estado="tonto";

-- CAMBIAR UN REGISTRO. Ejercicio: se cambia 'perro' por 'gato'
update animal set nombre_animal="gato" where id_animal=1;
select * from animal;
update animal set estado="en casa" where id_animal=3;
select * from animal;
select * from animal where estado="en casa";
-- BORRAR REGISTRO
delete from animal where estado="en casa";-- ERROR. porque no se indico el ID

delete from animal where id_animal=2;-- OK QUERY DE BORRADO
select * from animal;

-- CREAR OTRA TABLA DE "HABITAD"

create table habitad(
id_habitad int not null auto_increment,
zona varchar(100),
pais varchar(80),
temperatura int,
primary key (id_habitad)
);

-- VALORES DE TABLA HABITAD
insert into habitad (zona,pais,temperatura) values ('templada','peru',300);
insert into habitad (zona,pais, temperatura) values ('fria','groenlandia',-20);
insert into habitad (zona,pais,temperatura) values ('templado','ecuador',34);
insert into habitad (zona,pais) values ('fria','peru');
insert into habitad (zona, pais, temperatura) values ('caliente','africa',90);

select * from habitad;
-- query de un campo
select * from habitad where zona='templada';

-- ver toda tabla
select	* from habitad;
-- query zona:fria id:1
select * from habitad where id_habitad=1;
-- query zona=fria
select * from  habitad where zona='fria';
-- QUERY: zona:fria y temperatura < 0
select * from habitad where zona='fria' and temperatura<1; -- ok bien

-- mostrar tabla 'habitad'
select * from habitad;
-- q: cambiar todos aquellos registros repetidos
update habitad set pais='canada' where id_habitad=3;
update habitad set zona='templado' where id_habitad=4;
-- mostrar nueva tabla de 'habitad'
select * from habitad;
-- BORRAR REGISTRO
DELETE from habitad where id_habitad=5;
select * from habitad;
delete from habitad where id_habitad=7;
delete from habitad where id_habitad=4;
select * from habitad;
insert into habitad (temperatura) VALUES (89);
select * from habitad;
delete	from habitad where id_habitad=8;
delete from habitad where id_habitad=9;
select * from habitad;
delete	from habitad where id_habitad=8;
select * from habitad;
-- update habitad set zona='templado' where id_habitad=4;
update habitad set temperatura=77 where	id_habitad=3;
select * from habitad;
select * from habitad where zona='fria';
-- SELECCIONAR HASTA UN LIMITE DE ID`s
select * from habitad limit 5;
select * from habitad limit 3;
select * from animal;
select * from animal limit 4;
select * from habitad;
select * from habitad where temperatura < 50;
select * from animal;
select * from animal where nombre_animal = 'canguro' or estado="libre";
delete from animal where id_animal=6;
select * from animal;
update animal set nombre_animal="manta raya" where id_animal=1;
select * from animal;
select * from animal limit 4;
select * from habitad limit 4;
-- seleccion cumpliendo condiciones al tiempo (Y)
select * from habitad where zona='fria' and temperatura > -30;
select * from habitad where zona="fria" and temperatura > 0;
-- select OR, cumple alguna condicion
select * from habitad;
select * from habitad where zona="caliente" or temperatura > 50;
select * from animal;
-- Q: QUE NO SEA IGUAL ... > !=
select * from animal where estado!='en proteccion'; -- CONSULTA OK ...
select * from habitad;
select * from habitad where zona != 'caliente';
-- Q: SELECCION ENTRE VALORES .. BETWEEN
select * from habitad;
-- select * habitad where temperatura between 
select * from habitad where temperatura between 1 and 50;

select * from habitad where temperatura between 3 and 100;
-- q: consulta personalizada de varchar
select * from habitad where zona like "%a%";
select * from habitad where zona like '%a';
select * from habitad where pais like '%a';
select * from animal;
select * from animal where nombre_animal like '%e%';
select * from animal where nombre_animal like '%j%';
-- orden ascendente  o descendente
select * from animal order by id_animal desc;
select * from habitad;
select * from habitad order by temperatura asc;
select * from habitad order by pais asc;

select * from habitad;
select * from habitad where zona='%e';
select * from habitad;
select * from habitad where id_habitad=2;
select * from habitad where pais like "r";
select * from habitad where pais like "%r";
select * from habitad where pais like 'a%';
select * from habitad; 

select * from animal;
select * from animal where estado like "%e%";
select * from animal where estado like '%pr%';
select * from animal where nombre_animal like "%a";

select * from habitad;

select * from habitad order by temperatura desc;
select * from habitad order by zona asc;
select * from habitad where zona !='fria';

select * from habitad where zona !='templado'
select * from habitad where temperatura > 0;
-- select * from habitad where temperatura < 50;
select * from habitad where temperatura < 50;
select * from habitad where temperatura > 0;
select * from habitad where temperatura > 0;

select * from habitad where temperatura between -2 and 40;
select * from habitad;
insert into habitad (zona,pais,temperatura) values ('caliente','continental',-3);
select * from habitad;
select * from habitad where temperatura between -10 and 50;





























