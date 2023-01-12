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

-- query: usuarios con edad mayor a 20 y mail='chanchito@mail'
select * from usuarios where edad > 20 and email='chanchito@mail';
select * from usuarios;

-- las siguientes instrucciones son para depurar la bd pues YO EUGENIO repeti usuarios
delete from usuarios where id_user=4;
delete from usuarios where id_user=5;
select * from usuarios;
delete from usuarios where id_user=3;
select * from usuarios;
-- aqui ya deje la bd sin usuarios repetidos.. ok¡¡

select * from usuarios where edad>20 and email='chanchito@mail';

-- query: diga los usuarios con edad mayor a 22 O que el mail sea layla@mail
select * from usuarios where edad>22 OR email='layla@mail';
-- RESPUESTA: layla NO es menor de 22 PERO si cumple con tener el mail, y como es un condicional con OR layla si cumple

-- query: QUE NO SEA IGUAL. todos los registros que NO SEAN IGUAL al mail layla@mail

-- **REGLA: QUE NO SEA IGUAL SE ESCRIBE !=
select * from usuarios where email !='layla@mail';

-- REGLA: BETWEEN > VALORES ENTRE 
select * from usuarios where edad between 5 and 35;-- consulta OK¡¡
-- **REGLAS DE BUSQUEDA DE UN CONTENIDO ESPECIFICO EN CAMPO
-- **REGLA: LIKE '%aaa%' > BUSCAR UNA CADENA DE TEXTO QUE CONTENGA DESDE INICIO AL FINAL "aaa" Ej. AAAlobo, bAAArco
-- **REGLA: LIKE '%aaa' > BUSCAR TEXTO QUE TERMINE EN "aaa" y antes cualquier (%) letras
-- **REGLA: LIKE 'aaa%' > BUSCAR TEXTO QUE INICIE EN "aaa" y despues cualquier (%) letras


-- query: buscar todos los textos que en el campo "email" tengan texto="mail"
select * from usuarios where email like '%mail%';

-- otro query repaso: buscar todos los nombres que tengan la letra "c"
select * from usuarios where nombre like '%c%';
-- RESPUESTA: ChanChito, niColas, osCar. TODOS ellos contienen la letra "C"
select * from usuarios;

-- query: listar todos los nombres que terminen por "ni"
select * from usuarios where nombre like '%ni';
-- respuesta: NADA, NINGUN registro en nombre termina en "ni"

-- query: listar todos los nombres que empiecen por "ni"
select * from usuarios where nombre like 'ni%';
-- respuesta: NIcolas. Hay 1 registro que empieza con "ni"

-- **REGLA: ORDER BY campo ASC / DESC . > ORDENAR DATOS EN ORDEN ESPECIFICO .. ASCENDENTE O DESCENDENTE

-- query: ordenar por edad de menor a mayor, ascendente
select * from usuarios order by edad asc;
-- respuesta: ordeno toda la tabla por EDAD de menor a mayor

-- query: ordenar por edad de mayor a menor, descendente
select * from usuarios order by edad desc;
-- respuesta: ordeno la tabla por edades de mayor a menor

-- REGLA: MAXIMO O MINIMO VALOR > select MAX/MIN(campo) as nombreDeConsulta FROM tabla
select max(edad) as mayorEdad from usuarios;
-- respuesta: indica la mayor edad y no mas. No salen mas campos de la tabla
select min(edad) as elMasJoven from usuarios;
-- respuesta: indico la menor edad

-- REGLA: CONSULTAR UNAS COLUMNAS QUE QUERAMOS Y NO TODAS (*) > SELECT campo1, campo2, ..campo n FROM tabla
select edad, nombre from usuarios;
-- RESPUESTA: sale una tablita con los campos "edad" y "nombre" consultados

-- REGLA: CAMBIAR NOMBRE DE CAMPO AL CONSULTAR > SELECT campo1, ..,campo n AS "nuevo nombre campo i" FROM tabla
-- query: consulte edad y nombre de tabla usuarios y que aparezca en lugar de campo "nombre" por "Empleado"
select edad, nombre as Empleado from usuarios;
-- respuesta: OK.. salio edad y Empleado

select max(edad), nombre from usuarios group by nombre;

-- Error Code: 1140. In aggregated query without GROUP BY, 
-- expression #2 of SELECT list contains nonaggregated column 
-- 'holamundo.usuarios.nombre'; this is incompatible with sql_mode=only_full_group_by

select * from animales;

select * from usuarios;
-- insert into usuarios (nombre,edad,email) values ('chanchito',40,'chanchito@mail');

insert into usuarios(nombre,edad,email) values ('juan',20,'juan@mail');

insert into usuarios (nombre,edad,email) values ('dianita',38,'diana@gmail');

select * from usuarios;











