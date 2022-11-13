create database holamundo;
use holamundo;
create table animales(
id int,
tipo varchar(255),
estado varchar (255),
PRIMARY KEY(id)
);

-- INSERT INTO animales(tipo, estado)  VALUES ('chanchito','feliz');

/*ALTER TABLE: cambiar o alterar algo en la tabla. en este caso se dira que
campo "id" sera autoincrementarl*/
ALTER TABLE animales MODIFY COLUMN id int auto_increment; 

show CREATE TABLE animales; /**/
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

SELECT * FROM animales WHERE estado ='feliz' AND tipo='felipe';/*este query NO
muestra ningun resultado pues no hay registro que cumpla con estado=feliz Y tipo=felipe */


