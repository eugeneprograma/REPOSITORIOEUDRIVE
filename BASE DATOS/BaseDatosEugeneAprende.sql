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

-- ingresar valores a tabla:


