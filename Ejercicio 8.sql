----TABLA DE CONSULTAS----

DROP TABLE IF EXISTS inscripciones;
DROP TABLE IF EXISTS cursos;
DROP TABLE IF EXISTS profesores;
DROP TABLE IF EXISTS alumnos;
CREATE TABLE profesores (
id_profesor INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
especialidad VARCHAR(100),
antiguedad_anios INT
);
CREATE TABLE cursos (
id_curso INT AUTO_INCREMENT PRIMARY KEY,
nombre_curso VARCHAR(100) NOT NULL,
precio DECIMAL(10,2) NOT NULL,
cupo_maximo INT NOT NULL,
id_profesor INT,
FOREIGN KEY (id_profesor) REFERENCES profesores(id_profesor)
);
CREATE TABLE alumnos (
id_alumno INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE,
fecha_registro DATE NOT NULL
);
CREATE TABLE inscripciones (
id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,
id_alumno INT,
id_curso INT,
fecha_inscripcion DATE NOT NULL,
FOREIGN KEY (id_alumno) REFERENCES alumnos(id_alumno),
FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

INSERT INTO profesores (nombre, apellido, especialidad, antiguedad_anios) VALUES
('Carlos', 'Gómez', 'Programación', 5),
('Mariela', 'Álvarez', 'Bases de Datos', 6),
('Esteban', 'Quito', 'Diseño UI/UX', 3),
('Ana', 'Martínez', 'Marketing Digital', 4),
('Roberto', 'Sánchez', 'Programación', 2),
('Lucía', 'Díaz', 'Bases de Datos', 7),
('Fernando', 'López', 'Data Science', 4),
('Claudia', 'Rodríguez', 'Diseño UI/UX', 1),
('Jorge', 'Pérez', 'Marketing Digital', 2),
('Patricia', 'Sosa', 'Programación', 8),
('Sergio', 'Romero', 'Data Science', 3),
('Gabriela', 'Blanco', 'Bases de Datos', 5),
('Ricardo', 'García', 'Ciberseguridad', 6),
('Natalia', 'Fernández', 'Diseño UI/UX', 2),
('Alejandro', 'Torres', 'Marketing Digital', 3),
('Marta', 'Benítez', 'Programación', 1),
('Daniel', 'Medina', 'Ciberseguridad', 4),
('Laura', 'Castillo', 'Data Science', 2),
('Guillermo', 'Marín', 'Desarrollo Mobile', 1), -- Sin cursos
('Silvia', 'Herrera', 'Inteligencia Artificial', 3); -- Sin cursos

INSERT INTO cursos (nombre_curso, precio, cupo_maximo, id_profesor) VALUES
('Introducción a Python', 100.00, 25, 1),
('Python Avanzado', 150.00, 20, 1),
('SQL Inicial', 120.00, 30, 2),
('Modelado de Datos', 140.00, 25, 2),
('Diseño Web con Figma', 90.00, 15, 3),
('UX Research', 110.00, 20, 3),
('Google Ads y SEO', 130.00, 30, 4),
('E-commerce Eficaz', 125.00, 25, 4),
('Fundamentos de Java', 115.00, 20, 5),
('SQL Avanzado y Tuning', 160.00, 15, 6),
('Power BI para Analytics', 135.00, 25, 7),
('Machine Learning 101', 180.00, 20, 7),
('Design Thinking', 95.00, 15, 8),
('Community Manager', 85.00, 30, 9),
('Estrategia Digital', 145.00, 20, 9),
('Desarrollo Web Frontend', 130.00, 25, 10),
('Arquitectura de Software', 200.00, 15, 10),
('Introducción a R', 110.00, 20, 11),
('Administración de MySQL', 150.00, 20, 12),
('Hacking Ético Inicial', 170.00, 15, 13),
('UI Components Avanzado', 105.00, 18, 14),
('Growth Hacking', 140.00, 22, 15);

INSERT INTO alumnos (nombre, apellido, email, fecha_registro) VALUES
('Juan', 'Pérez', 'juan.perez@email.com', '2026-01-10'),
('María', 'González', 'maria.gonzalez@email.com', '2026-01-12'),
('Lucas', 'Rodríguez', 'lucas.rodriquez@email.com', '2026-01-15'),
('Florencia', 'Fernández', 'flor.f@email.com', '2026-01-18'),
('Diego', 'Martínez', 'diego.m@email.com', '2026-01-20'),
('Camila', 'López', 'cami.lopez@email.com', '2026-01-22'),
('Nicolás', 'Gómez', 'nico.gomez@email.com', '2026-01-25'),
('Agustina', 'Díaz', 'agus.diaz@email.com', '2026-01-28'),
('Facundo', 'Sánchez', 'facu.sanchez@email.com', '2026-02-01'),
('Sofía', 'Álvarez', 'sofia.alvarez@email.com', '2026-02-03'),
('Martín', 'Romero', 'martin.r@email.com', '2026-02-05'),
('Valentina', 'Torres', 'vale.torres@email.com', '2026-02-08'),
('Gonzalo', 'Benítez', 'gonza.b@email.com', '2026-02-10'),
('Catalina', 'Herrera', 'cata.herrera@email.com', '2026-02-12'),
('Mateo', 'Ruiz', 'mateo.ruiz@email.com', '2026-02-15'),
('Julieta', 'Medina', 'juli.medina@email.com', '2026-02-18'),
('Tomás', 'Silva', 'tomi.silva@email.com', '2026-02-20'),
('Victoria', 'Castro', 'vicky.castro@email.com', '2026-02-22'),
('Bruno', 'Suárez', 'bruno.suarez@email.com', '2026-02-25'),
('Micaela', 'Pereira', 'mica.pereira@email.com', '2026-02-28'),
('Joaquín', 'Morales', 'joaco.morales@email.com', '2026-03-01'),
('Elena', 'Ortega', 'elena.ortega@email.com', '2026-03-03'),
('Ignacio', 'Rios', 'nacho.rios@email.com', '2026-03-05'),
('Santiago', 'Mendoza', 'santi.mendoza@email.com', '2026-03-10'), -- Sin cursos
('Paula', 'Acosta', 'paula.acosta@email.com', '2026-03-12'), -- Sin cursos
('Matías', 'Giménez', 'matias.g@email.com', '2026-03-15'); -- Sin cursos

INSERT INTO inscripciones (id_alumno, id_curso, fecha_inscripcion) VALUES
(1, 1, '2026-01-11'), (1, 3, '2026-01-15'), (1, 7, '2026-01-20'), -- Alumno 1 en 3 cursos
(2, 1, '2026-01-13'), (2, 2, '2026-01-20'),
(3, 3, '2026-01-16'), (3, 4, '2026-01-22'), (3, 10, '2026-02-01'),
(4, 5, '2026-01-19'), (4, 6, '2026-01-25'),
(5, 7, '2026-01-21'), (5, 8, '2026-02-02'),
(6, 1, '2026-01-23'), (6, 9, '2026-02-05'),
(7, 3, '2026-01-26'), (7, 10, '2026-02-10'),
(8, 5, '2026-01-29'), (8, 21, '2026-02-15'),
(9, 11, '2026-02-02'), (9, 12, '2026-02-10'),
(10, 3, '2026-02-04'), (10, 19, '2026-02-18'),
(11, 13, '2026-02-06'),
(12, 14, '2026-02-09'), (12, 15, '2026-02-20'),
(13, 16, '2026-02-11'), (13, 17, '2026-02-25'),
(14, 1, '2026-02-13'), (14, 18, '2026-03-01'),
(15, 3, '2026-02-16'), (15, 19, '2026-03-02'),
(16, 20, '2026-02-19'),
(17, 21, '2026-02-21'), (17, 5, '2026-03-03'),
(18, 22, '2026-02-23'),
(19, 2, '2026-02-26'), (19, 10, '2026-03-05'),
(20, 3, '2026-03-01'), (20, 4, '2026-03-08'),
(21, 12, '2026-03-02'),
(22, 17, '2026-03-04'),
(23, 1, '2026-03-06'), (23, 3, '2026-03-10'), (23, 10, '2026-03-12');

--------EJERCICIOS DE CONSULTAS CON INNER.JOIN--------

--FORMULA------------------------------------------------------------
SELECT tabla1.columna, tabla2.columna --FÓRMULA DE LAS TABLAS SIMPLES
FROM tabla1
INNER JOIN tabla2
ON tabla1.columna_en_comun = tabla2.columna_en_comun; 
---------------------------------------------------------------------

--EJERCICIO 1--
SELECT a.nombre, a.apellido, i.fecha_inscripcion
FROM alumnos a ---> SE LE ACLARA QUE 'a' ES EL ALIAS DE 'alumnos'
INNER JOIN inscripciones i---> SE LE ACLARA QUE 'i' ES DE INSCIPCIONES 
ON a.id_alumno = i.id_alumno;---> PONER LA LLAVE PRIMARIA Y LA FORANEA

--EJERCICIO 2--
SELECT a.email, i.id_curso
FROM alumnos a
INNER JOIN inscripciones i
ON a.id_alumno = i.id_alumno;

--EJERCICIO 3--
SELECT a.apellido, i.fecha_inscripcion
FROM alumnos a
INNER JOIN inscripciones i
ON a.id_alumno = i.id_alumno
WHERE i.fecha_inscripcion >='2026-02-1' 
		AND i.fecha_inscripcion <='2026-02-28';
		
--EJERCICIO 4--
SELECT c.nombre_curso, p.nombre, p.apellido
FROM cursos c
INNER JOIN profesores p
ON c.id_profesor = p.id_profesor;

--EJERCICIO 5--
SELECT c.nombre_curso, c.precio
FROM cursos c
INNER JOIN profesores p
ON c.id_profesor = p.id_profesor
WHERE p.antiguedad_anios>4;

--EJERCICIO 6--
SELECT c.nombre_curso, p.apellido
FROM cursos c
INNER JOIN profesores p
ON c.id_profesor = p.id_profesor
WHERE p.especialidad='Bases de Datos';

-FORMULA-----------------------------------------------------------------------------
SELECT a.nombre AS alumno, c.nombre_curso AS curso -- FORMULA DE LAS TABLAS COMPLEJAS
FROM inscripciones AS i
INNER JOIN alumnos AS a ON i.id_alumno = a.id_alumno
INNER JOIN cursos AS c ON i.id_curso = c.id_curso;
-------------------------------------------------------------------------------------
--EJERCICIO 7--
SELECT a.nombre, a.apellido, c.nombre_curso
FROM alumnos a
INNER JOIN inscripciones i ON a.id_alumno = i.id_alumno ----> PARA QUE CONECTE LAS INSCRIPCIONES CON LOS ALUMNOS
INNER JOIN cursos c ON i.id_curso = c.id_curso; ----> PARA QUE CONECTE LOS CURSOS CON LAS INSCRIPCIONES

--EJERCICIO 8--
SELECT a.apellido, c.nombre_curso, c.precio
FROM cursos c
INNER JOIN inscripciones i ON c.id_curso=i.id_curso
INNER JOIN alumnos a ON a.id_alumno=i.id_alumno;-------> CUANDO LLAMAS A LA TABLA EN EL FROM NO SE TIENE QUE REPETIR EN LOS JOIN

--EJERCICIO 9--
SELECT a.nombre AS NombreDeLosAlumnos, c.nombre_curso AS NombreDeLosCursos
FROM cursos c
INNER JOIN inscripciones i ON c.id_curso = i.id_curso
INNER JOIN alumnos a ON a.id_alumno = i.id_alumno
WHERE fecha_inscripcion>='2026-01-01' and fecha_inscripcion<='2026-01-31';

--EJERCICIO 10--
SELECT a.nombre AS NombreDeLosAlumnos, c.nombre_curso AS NombreDeLosCursos
FROM cursos c
INNER JOIN inscripciones i ON c.id_curso = i.id_curso
INNER JOIN alumnos a ON a.id_alumno = i.id_alumno
WHERE precio>130;

--EJERCICIO 11--
SELECT a.nombre AS NombreDeLosAlumnos, c.nombre_curso AS NombreDeLosCursos
FROM cursos c
INNER JOIN inscripciones i ON c.id_curso = i.id_curso
INNER JOIN alumnos a ON a.id_alumno = i.id_alumno
WHERE apellido='Rodr?guez';

--EJERCICIO 12--
SELECT 
	a.nombre AS nombre_alumno, ------> PARA QUE MUESTRE EL NOMBRE DEL ALUMNO
    a.apellido AS apellido_alumno, ------> PARA QUE MUESTRE EL APELLIDO DEL ALUMNO
    c.nombre_curso, --------> PARA QUE MUESTRE EL NOMBRE DEL CURSO
    p.nombre AS nombre_profesor, ---------> PARA QUE MUESTRE EL NOMBRE DEL PROFESOR
    p.apellido AS apellido_profesor -------> PARA QUE MUESTRE EL APELLIDO DEL PROFESOR
FROM 
    alumnos a
INNER JOIN 
    inscripciones i ON a.id_alumno = i.id_alumno
INNER JOIN 
    cursos c ON i.id_curso = c.id_curso            -------------> NOTA: DONDE NO USAS EL FROM TENES QUE USAR LAS OTRAS TABLAS PARA HALLAR LAS LLAVES
INNER JOIN 
    profesores p ON c.id_profesor = p.id_profesor

--EJERCICIO 13--
SELECT 
	a.apellido ,
	c.nombre_curso ,
	p.especialidad
FROM 
	alumnos a
INNER JOIN
	inscripciones i ON a.id_alumno = i.id_alumno
INNER JOIN
	cursos c ON i.id_curso = c.id_curso
INNER JOIN
	profesores p ON c.id_profesor = p.id_profesor;
	
--EJERCICIO 14--
SELECT 
	a.nombre AS NombreDelAlumno ,
	c.nombre_curso AS NombreDelCurso,
	p.apellido AS ApellidoDelProfesor
FROM 
	alumnos a
INNER JOIN
	inscripciones i ON a.id_alumno = i.id_alumno
INNER JOIN
	cursos c ON i.id_curso = c.id_curso
INNER JOIN
	profesores p ON c.id_profesor = p.id_profesor
WHERE
	c.precio>=150;
	
--EJERCICIO 15--
SELECT 
	a.apellido AS apellidoAlumno ,
	p.apellido AS apellidoProfe
FROM 
	alumnos a
INNER JOIN
	inscripciones i ON a.id_alumno = i.id_alumno
INNER JOIN
	cursos c ON i.id_curso = c.id_curso
INNER JOIN
	profesores p ON c.id_profesor = p.id_profesor
WHERE
	p.antiguedad_anios>=5;