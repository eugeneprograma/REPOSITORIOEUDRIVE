create database basedatos;
use basedatos;

CREATE TABLE `animales`(
id_animal int not null auto_increment,
tipo_animal varchar(300) default null,
estado_animo varchar(200) default null,
primary key (`id_animal`)
);
insert into animales (tipo_animal,estado_animo) values ('dinosaurio','feroz');
insert into animales (tipo_animal,estado_animo) values ('perro','feroz');
insert into animales (tipo_animal,estado_animo) values ('gato','triste');
insert into animales (tipo_animal,estado_animo) values ('pollito','feliz');
-- VISUALIZAR LA TABLA
select * from animales;






