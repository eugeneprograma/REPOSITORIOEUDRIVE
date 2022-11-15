-- **************************************************
/*DESDE AQUI EMPIEZA EL SCRIPT PARA CREAR, USAR, DEFINIR CAMPOS,
DEFINIR VALORES Y QUERYS PARA VISUALIZAR TABLA*/

create database holamundo;
use holamundo;
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
SELECT * FROM animales; 
SELECT * FROM animales WHERE id = 1; /*selecione todo "*" de tabla "animales" con id=1*/
SELECT * FROM animales WHERE estado='feliz';
SELECT * FROM animales WHERE estado ='feliz' AND tipo='chanchito';
SELECT * FROM animales WHERE estado ='feliz' AND tipo='felipe';
/*este query NO muestra ningun resultado pues no 
hay registro que cumpla con estado=feliz Y tipo=felipe */
SELECT * FROM animales WHERE estado ='triste';
-- CAMBIAR UN REGISTRO.
-- EJERCICIO:se cambiara el campo "estado" de "felipe" de "triste" > "feliz"







