-- **************************************************
/*DESDE AQUI EMPIEZA EL SCRIPT PARA CREAR, USAR, DEFINIR CAMPOS,
DEFINIR VALORES Y QUERYS PARA VISUALIZAR TABLA*/

create database holamundo;
use holamundo;

-- ** REGLA: AL CREAR CAMPOS DE TABLA SE TERMINA CON COMA , . NO CON ;
-- ** REGLA: LA PRIMARY KEY NO TIENE SIGNO DE PUNTUACIÓN

CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
); 
INSERT INTO animales(tipo, estado)  VALUES ('chanchito','feliz');
INSERT INTO animales(tipo, estado)  VALUES ('Dragon','feliz');
INSERT INTO animales(tipo, estado)  VALUES ('felipe','triste');
-- SELECT: VISUALIZA LA TABLA
SELECT * FROM animales; -- VISUALIZAR TODA LA TABLA 
SELECT * FROM animales WHERE id = 1; /*selecione todo "*" de tabla "animales" con id=1*/
SELECT * FROM animales WHERE estado='feliz';
SELECT * FROM animales WHERE estado ='feliz' AND tipo='chanchito';
SELECT * FROM animales WHERE estado ='feliz' AND tipo='felipe';
/*este query NO muestra ningun resultado pues no 
hay registro que cumpla con estado=feliz Y tipo=felipe */
SELECT * FROM animales WHERE estado ='triste';
-- CAMBIAR UN REGISTRO.
-- EJERCICIO:se cambiara el campo "estado" de "felipe" de "triste" > "feliz"
update animales set estado="feliz" where id=3;
select * from animales;

DELETE from animales where estado='feliz';
-- LA ANTERIOR CONSULTA NO SE EJECUTO BIEN, POR QUE?
-- POR QUE ESTE ERROR ES USAR DELETE SIN WHERE E INDICAR UN ID

-- **REGLA: EN UN DELETE y UPDATE SE DEBE INDICAR "WHERE ID= ... "

-- LA CONSULTA BIEN SERIA:
delete from animales where id=3; -- ESTE QUERY SI LO REALIZO CON EXITO ¡¡¡¡
select * from animales; -- AL REALIZAR LA CONSULTA SE QUITO TODO EL TERCER REGISTRO (felipe)

-- query: cambiar el estado "feliz" a "triste" de el "tipo = dragon"
update animales set estado ="triste" where tipo="dragon";
-- resultado: ERROR. un error parecido al anterior pues NO se le indico el ID
update animales set estado ="triste" where id=1 and id=2;
select * from animales;-- RESULTADO: OK¡¡, los id=1 y id=2 cambiaron a estado="feliz"

create table usuarios(
   id_user int not null auto_increment,
   nombre varchar(50) not null,
   edad int not null,
   email varchar (100) not null,
   primary key (id_user)
);
-- RESPUESTA: OK, QUEDO BIEN CREADA LA TABLA CUMPLIENDO REGLAS DE SINTAXIS.. OK¡¡

-- CREAR LOS VALORES DE CAMPOS
insert into usuarios (nombre,edad,email) values ('oscar',25,'oscar@mail');
insert into usuarios (nombre,edad,email) values ('layla',15,'layla@mail');
insert into usuarios (nombre,edad,email) values ('nicolas',36,'nico@mail');
insert into usuarios (nombre,edad,email) values ('chanchito',40,'chanchito@mail');
-- visualizar tabla
select * from usuarios;
-- query: limitar la busqueda al primer registro que encuentre de la tabla
-- LIMIT: limita busqueda
select * from usuarios limit 1;
-- otro ejemplo: limitar a los 3 PRIMEROS REGISTROS
select	* from usuarios limit 3;

-- QUERY: CUALES USUARIOS SON MAYORES A 20 AÑOS?
select * from usuarios where edad > 20;









