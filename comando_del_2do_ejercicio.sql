CREATE DATABASE la_academia_digital;

CREATE TABLE profesores (
id_profesor INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50),
apellido VARCHAR(50),
especialidad VARCHAR(50),
antiguedad_anios INT
);
CREATE TABLE cursos (
id_curso INT AUTO_INCREMENT PRIMARY KEY,
nombre_curso VARCHAR(100),
precio DECIMAL(10,2),
cupo_maximo INT,
id_profesor INT
);
INSERT INTO profesores (nombre, apellido, especialidad,
antiguedad_anios) VALUES
('Carlos', 'López', 'Programación', 6),
('Ana', 'Martínez', 'Diseño UI/UX', 3),
('Laura', 'Gómez', 'Marketing Digital', 5),
('Pedro', 'Rodríguez', 'Data Science', 1);
INSERT INTO cursos (nombre_curso, precio, cupo_maximo, id_profesor)
VALUES
('Introducción a Python', 120.00, 30, 1),
('Desarrollo Web con React', 250.00, 15, 1),
('Diseño de Interfaces en Figma', 90.00, 25, 2),
('Estrategias de Growth Marketing', 180.00, 10, 3),
('SQL desde Cero', 140.00, 40, 4);
--------COMANDOS QUE UTILIZE---------
--------EJERCICIO 1-----------
---"La secretaria de la academia necesita un listado con el nombre y apellido de todos los profesores que trabajan con nosotros."---
SELECT nombre, apellido FROM profesores;
-----EJERCICIO 2--------
--- "Queremos revisar toda la informacion disponible de los cursos que ofrecemos. Trae todas las columnas de la tabla de cursos."---
SELECT * FROM cursos;
-----EJERCICIO 3------
---"Estamos armando una campaña de cursos economicos. Mostra el nombre y el precio de los cursos que cuesten menos de 150 dolares." ---
SELECT * FROM cursos WHERE precio<150;
-----EJERCICIO 4------
---"Para la entrega de un bono por trayectoria, necesitamos saber que profesores tienen una antigüedad de 5 años o más." ---
SELECT * FROM profesores WHERE antiguedad_anios>=5;
-----EJERCICIO 5------
---"Buscamos cursos que sean muy solicitados pero aptos para grupos reducidos. Mostrá los cursos que tengan un precio mayor a 200 dólares Y cuyo cupo máximo sea menor a 20 alumnos." ---
SELECT * FROM cursos WHERE precio>200 AND cupo_maximo<20;
-----EJERCICIO 6------
---"Queremos mostrar en la web la lista de cursos ordenados alfabéticamente por su nombre (de la A a la Z)." ---
SELECT nombre_curso FROM cursos ORDER BY nombre_curso ASC;
-----EJERCICIO 7------
--- "El director quiere premiar a los 2 profesores más antiguos de la academia. Mostrá el nombre, apellido y antigüedad de los 2 profesores con más años de servicio."---
SELECT nombre, apellido, antiguedad_anios FROM profesores WHERE antiguedad_anios>=5;
-----EJERCICIO 8------
---"Queremos ver los cursos ordenados por precio, pero que salgan solo los que cuestan más de 100 dólares. Esta query da error, ¿por qué y cómo se arregla?"---
SELECT nombre_curso, precio FROM cursos ORDER BY precio ASC WHERE precio > 100; -----ESTA MAL ORDENADA LA JERARQUÍA
SELECT nombre_curso, precio FROM cursos WHERE precio>100 ORDER BY precio ASC; -------LA FORMA CORRECTA
-----EJERCICIO 9------
---"Un administrativo quiere ver el nombre y apellido de los profesores. Corregí el error de sintaxis."---
SELECT 'nombre', 'apellido' FROM profesores;----->MAL
SELECT nombre, apellido FROM profesores;----->BIEN
-----EJERCICIO 10-----
---"Queremos un listado de los cursos con su precio y cupo máximo.¿Qué le falta a esta consulta?"---
SELECT nombre_curso precio cupo_maximo FROM cursos;-------INCOMPLETA
SELECT nombre_curso, precio, cupo_maximo FROM cursos;-----COMPLETA
-----EJERCICIO 11-----
---"Queremos buscar a la profesora que se llama Laura. ¿Por qué falla este filtro?"---
SELECT * FROM profesores WHERE nombre = Laura; ------QUERY INCORRECTO
SELECT nombre FROM profesores WHERE nombre = 'Laura'; ------QUERY CORRECTO
-----EJERCICIO 12-----
---"Ejecutamos esta query para ver la antigüedad de los profesores y el sistema nos devuelve error. ¿Qué pasó?"---
SELECT nombre, antiguedad FROM profesores;-----QUERY INCORRECTO
SELECT nombre, antiguedad_anios FROM profesores;-------QUERY CORRECTO
-----EJERCICIO 13-----
---"Queremos limitar el resultado a solo 3 profesores, pero la query tira error. Corregirla."---
SELECT nombre, apellido FROM profesores LIMIT BY 3; -----QUERY INCORRECTO
SELECT nombre, apellido FROM profesores LIMIT 3;-----QUERY CORRECTO
-----EJERCICIO 14-----
---"Queremos traer los cursos que cuesten entre 100 y 200 dólares usando AND. ¿Cuál es el error lógico acá?"---
SELECT nombre_curso FROM cursos WHERE precio > 100 AND < 200; ------QUERY INCORRECTO
SELECT nombre_curso FROM cursos WHERE precio>100 AND precio<200; ------QUERY CORRECTO
-----EJERCICIO 15-----
---" Corregí el error de sintaxis."---
FROM cursos SELECT nombre_curso, precio;-----QUERY INCORRECTO
SELECT nombre_curso, precio FROM cursos;-----QUERY CORRECTO
----EJERCICIO 16------
---"Queremos traer todos los campos de la tabla profesores y, además, repetir la columna especialidad al lado para que resalte. Da error, ¿cómo se arregla?"---
SELECT *, especialidad FROM profesores; ----QUERY INCORRECTO
SELECT *, especialidad AS especialidad FROM profesores; ----QUERY CORRECTO
----EJERCICIO 17-----
--"Imagina que un profesor todavía no tiene especialidad asignada y su campo está vacío (NULL). Queremos encontrarlo con esta query pero no devuelve nada. ¿Cuál es el error?"---
SELECT nombre, apellido FROM profesores WHERE especialidad = NULL;-----QUERY INCORRECTO
SELECT nombre, apellido FROM profesores WHERE especialidad IS NULL;-----QUERY CORRECTO
