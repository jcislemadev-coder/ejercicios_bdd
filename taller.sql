--CREAR LA TABLA

CREATE TABLE estudiantes(
id_estudiante INT,
nombres VARCHAR(50),
apellidos VARCHAR(50),
edad INT,
curso VARCHAR(50),
fecha_registro VARCHAR(10)
);

SELECT *FROM estudiantes;

--PARTE 2 LLAVE PRIMARIA

ALTER TABLE estudiantes
ADD CONSTRAINT estudiantes_pk PRIMARY KEY (id_estudiante); 

--INSERCION DE DATOS
DELETE FROM estudiantes;

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro)
VALUES('1713809620','Veronica','Galarza',46,'COSTURA','2026-01-31');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro)
VALUES('1712879852','Mariano','Cislema',56,'BASE DE DATOS','2026-04-30');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro)
VALUES('1712589684','Paola','Cislema',28,'BASE DE DATOS','2026-02-14');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro)
VALUES('0504789652','Jose','Toabanda',24,'PROGRAMACION','2026-03-28');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro)
VALUES('0145898569','Laura','Sanchez',65,'DISEÑO','2026-08-30');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro)
VALUES('1778969985','Paulina','Rubio',17,'DISEÑO','2026-07-14');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro)
VALUES('1723456781','Carlos','Mendoza',32,'CONTABILIDAD','2026-01-18');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro)
VALUES('1724567892','Andrea','Torres',21,'PROGRAMACION','2026-03-05');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro)
VALUES('1735678903','Gabriela','Vega',39,'DISEÑO','2026-07-22');

INSERT INTO estudiantes(	id_estudiante, nombres, apellidos, edad, curso, fecha_registro)
VALUES('1746789014','Daniel','Paredes',19,'INGLES','2026-08-11');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro)
VALUES('1757890125','Sofia','Ramirez',27,'CONTABILIDAD','2026-09-03');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro)
VALUES('1768901236','Miguel','Castro',44,'PROGRAMACION','2026-10-15');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro)
VALUES('1789012347','Lucia','Morales',34,'MARKETING','2026-10-20');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro)
VALUES('1790123458','Fernando','Villacis',52,'CONTABILIDAD','2026-11-05');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro)
VALUES('1701234569','Camila','Ortega',23,'INGLES','2026-11-18');


--PARTE 4 CONSULTAS SELECT

--1. MOSTRAR TODOS LOS REGISTROS

SELECT *FROM estudiantes;

--2. MOSTRAR NOMBRES Y CURSOS

SELECT nombres, curso FROM estudiantes;

--3. MOSTRAR ESTUDIASNTES MAYORES DE 18 AÑOS
SELECT *FROM estudiantes
WHERE edad>18;

--4. MOSTRAR ESTUDIANTES ENTRE 18 Y 25
SELECT *FROM estudiantes
WHERE edad BETWEEN 18 AND 25;

--5. MOSTRAR ESTUDIANTES DEL CURSO "BASE DE DATOS"
SELECT *FROM estudiantes
WHERE curso = 'BASE DE DATOS'

--6. MOSTRAR ESTUDIANTES REGISTRADOS DESPUES DE 2026-03-01
SELECT *FROM estudiantes
WHERE fecha_registro>'2026-03-01';

--7. MOSTRAR ESTUDIANTES REGISTRADOS ENTRE 2026-01-01 Y 2026-04-30
SELECT *FROM estudiantes
WHERE fecha_registro BETWEEN '2026-01-01' AND '2026-04-30';


--PARTE 5 - UPDATE
-- CAMBIAR CURSO
UPDATE estudiantes
SET curso = 'PROGRAMACION'
WHERE id_estudiante = '145898569';

--CAMBIAR EDAD
UPDATE estudiantes
SET edad = 60
WHERE nombres ='Daniel';

--CAMBIAR FECHA
UPDATE estudiantes
SET fecha_registro = '2026-01-01'
WHERE fecha_registro < '2026-11-12';

--CAMBIAR VARIOS CAMPOS AL MISMO TIEMPO
UPDATE estudiantes
SET fecha_registro ='2026-02-14',
edad = 25,
curso = 'NINGUNO'
WHERE fecha_registro = '2026-01-01';

UPDATE estudiantes
SET curso = 'INGENIERIA'
WHERE fecha_registro = '2026-02-14';

--PARTE 6 DELETE
--ELIMINAR POR ID
DELETE FROM estudiantes
WHERE id_estudiante = '145898569';

--ELIMINAR POR ID
DELETE FROM estudiantes
WHERE id_estudiante = '1724567892';

--ELIMINAR POR CUROS
DELETE FROM estudiantes
WHERE curso = 'INGLES';

--ELIMINAR POR EDAD
DELETE FROM estudiantes
WHERE edad >15;

--PARTE 7 MODIFICACION DE LA TABLA
ALTER TABLE estudiantes
ADD COLUMN correo VARCHAR(100);

--PARTE 8 ACTUALIZACION DE SCRIPTS
INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro, correo)
VALUES('1713809620','Veronica','Galarza',46,'COSTURA','2026-01-31','veronica@gmail.com');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro, correo)
VALUES('1712879852','Mariano','Cislema',56,'BASE DE DATOS','2026-04-30','mariano@gmail.com');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro, correo)
VALUES('1712589684','Paola','Cislema',28,'BASE DE DATOS','2026-02-14','paola@gmail.com');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro, correo)
VALUES('0504789652','Jose','Toabanda',24,'PROGRAMACION','2026-03-28','jose@gmail.com');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro, correo)
VALUES('0145898569','Laura','Sanchez',65,'DISEÑO','2026-08-30','laura@gmail.com');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro, correo)
VALUES('1778969985','Paulina','Rubio',17,'DISEÑO','2026-07-14','Paulina@gmail.com');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro, correo)
VALUES('1723456781','Carlos','Mendoza',32,'CONTABILIDAD','2026-01-18','carlos@gmail.com');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro, correo)
VALUES('1724567892','Andrea','Torres',21,'PROGRAMACION','2026-03-05','andrea@gmail.com');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro, correo)
VALUES('1735678903','Gabriela','Vega',39,'DISEÑO','2026-07-22','gabriela@gmail.com');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro, correo)
VALUES('1746789014','Daniel','Paredes',19,'INGLES','2026-08-11','daniel@gmail.com');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro, correo)
VALUES('1757890125','Sofia','Ramirez',27,'CONTABILIDAD','2026-09-03','sofia@gmail.com');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro, correo)
VALUES('1768901236','Miguel','Castro',44,'PROGRAMACION','2026-10-15','miguel@gmail.com');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro, correo)
VALUES('1789012347','Lucia','Morales',34,'MARKETING','2026-10-20','lucia@gmail.com');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro, correo)
VALUES('1790123458','Fernando','Villacis',52,'CONTABILIDAD','2026-11-05','fernando@gmail.com');

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, edad, curso, fecha_registro, correo)
VALUES('1701234569','Camila','Ortega',23,'INGLES','2026-11-18','camila@gmail.com');

--CAMBIOS EN UPDATE
-- CAMBIAR CURSO
UPDATE estudiantes
SET curso = 'PROGRAMACION'
WHERE id_estudiante = '145898569';

--CAMBIAR EDAD
UPDATE estudiantes
SET edad = 60
WHERE nombres ='Daniel';

--CAMBIOS DE SELECT
-- MOSTRAR NOMBRES Y CORREOS

SELECT nombres, correo FROM estudiantes;

-- MOSTRAR ESTUDIASNTES MAYORES DE 18 AÑOS
SELECT nombres, correo FROM estudiantes
WHERE edad<18;

--PARTE 9 FECHA
--1. Mostrar estudiantes registrados después de 2026-02-01.
SELECT *FROM estudiantes
WHERE fecha_registro>'2026-02-01';
--2. Mostrar estudiantes registrados antes de 2026-05-01.
SELECT *FROM estudiantes
WHERE fecha_registro<'2026-05-01';
--3. Mostrar estudiantes registrados entre dos fechas.
SELECT *FROM estudiantes
WHERE fecha_registro BETWEEN '2026-02-01' AND '2026-05-01';
--4. Mostrar estudiantes registrados exactamente en 2026-03-15.
SELECT *FROM estudiantes
WHERE fecha_registro = '2026-03-15';
--5. Mostrar estudiantes del curso “Programacion” registrados después de 2026-01-01.
SELECT *FROM estudiantes
WHERE fecha_registro > '2026-01-01' and curso = 'PROGRAMACION';