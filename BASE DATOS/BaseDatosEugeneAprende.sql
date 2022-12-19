create database bdeugene;
use bdeugene;

-- al crear campos de una tabla se termina con coma ,
-- el primary key NO tiene signo de puntuacion
create table animales(
id_animal int not null auto_increment,
nombre_animal varchar (200) default null,
estado varchar (200) default null,
primary key (id_animal)
);

-- insertar valores a la tabla:
insert into animales (nombre_animal, estado) values ('perro','en proteccion');
insert into animales (nombre_animal, estado) values ('aguila', 'libre');
insert into animales (nombre_animal, estado) values ('conejo', 'libre');
insert into animales (nombre_animal, estado) values ('pollito', 'en proteccion');
insert into animales (nombre_animal, estado) values ('canguro', 'en proteccion');
-- VISUALIZAR TABLA
select * from animales;
-- HACER UNA CONSULTA
select * from animales where id_animal =2;
select * from animales where estado="en proteccion";
-- CONSULTA CON MAS CONDICIONES "Y"
select * from animales where nombre_animal="perro" and estado="en proteccion";

select * from animales where estado="tonto";

-- CAMBIAR UN REGISTRO. Ejercicio: se cambia 'perro' por 'gato'
update animales set nombre_animal="gato" where id_animal=1;
select * from animales;
update animales set estado="en casa" where id_animal=3;
select * from animales;
select * from animales where estado="en casa";
-- BORRAR REGISTRO
delete from animales where estado="en casa";-- ERROR. porque no se indico el ID

delete from animales where id_animal=2;-- OK QUERY DE BORRADO
select * from animales;











