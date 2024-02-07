-- Nombre:

-- 1. Realiza la inserción de, al menos, 2 alumnos.

/** Estado anterior
┌────────────┬────────┬───────────┬──────┬──────────┐
│    dni     │ nombre │ apellido  │ nota │ id_clase │
├────────────┼────────┼───────────┼──────┼──────────┤
│ DNI123456A │ Juan   │ Pérez     │ 85   │ 1        │
│ DNI789012B │ María  │ Martínez  │ 92   │ 2        │
│ DNI345678C │ Pedro  │ Gómez     │ 78   │ 1        │
│ DNI901234D │ Ana    │ Martínez  │ 89   │ 3        │
│ DNI567890E │ David  │ Fernández │ 95   │ 2        │
│ DNI123890F │ Laura  │ Pérez     │ 75   │ 1        │
│ DNI456789G │ Carlos │ Pérez     │ 88   │ 3        │
│ DNI234567H │ Sara   │ García    │ 67   │ 2        │
│ DNI890123I │ Javier │ López     │ 76   │ 1        │
│ DNI345678J │ Elena  │ Martínez  │ 94   │ 3        │
└────────────┴────────┴───────────┴──────┴──────────┘


**/
-- Consulta:
INSERT INTO alumno(nombre, apellido, dni, nota, id_clase) VALUES ('Jorge', 'Albertos', 'DNI542075T', 26, 1), ('Javier', 'Acosta', 'DNI679990J', 99, 3);
/** Estado posterior
┌────────────┬────────┬───────────┬──────┬──────────┐
│    dni     │ nombre │ apellido  │ nota │ id_clase │
├────────────┼────────┼───────────┼──────┼──────────┤
│ DNI123456A │ Juan   │ Pérez     │ 85   │ 1        │
│ DNI789012B │ María  │ Martínez  │ 92   │ 2        │
│ DNI345678C │ Pedro  │ Gómez     │ 78   │ 1        │
│ DNI901234D │ Ana    │ Martínez  │ 89   │ 3        │
│ DNI567890E │ David  │ Fernández │ 95   │ 2        │
│ DNI123890F │ Laura  │ Pérez     │ 75   │ 1        │
│ DNI456789G │ Carlos │ Pérez     │ 88   │ 3        │
│ DNI234567H │ Sara   │ García    │ 67   │ 2        │
│ DNI890123I │ Javier │ López     │ 76   │ 1        │
│ DNI345678J │ Elena  │ Martínez  │ 94   │ 3        │
│ DNI542075T │ Jorge  │ Albertos  │ 26   │ 1        │
│ DNI679990J │ Javier │ Acosta    │ 99   │ 3        │
└────────────┴────────┴───────────┴──────┴──────────┘


**/

-- 2. Obtener los apellidos de los alumnos.

/** Estado anterior


**/
-- Consulta:
select apellido FROM  alumno ;

/** Estado posterior
┌───────────┐
│ apellido  │
├───────────┤
│ Pérez     │
│ Martínez  │
│ Gómez     │
│ Martínez  │
│ Fernández │
│ Pérez     │
│ Pérez     │
│ García    │
│ López     │
│ Martínez  │
│ Albertos  │
│ Acosta    │
└───────────┘


**/


-- 3. Obtener los apellidos de los alumnos sin repeticiones.

/** Estado anterior


**/
-- Consulta:
select apellido FROM  alumno group by apellido;

/** Estado posterior
┌───────────┐
│ apellido  │
├───────────┤
│ Acosta    │
│ Albertos  │
│ Fernández │
│ García    │
│ Gómez     │
│ López     │
│ Martínez  │
│ Pérez     │
└───────────┘


**/


-- 4. Obtener todos los datos de los alumnos que se apellidan Martínez.

/** Estado anterior


**/
-- Consulta:
select * from alumno where apellido='Martínez';

/** Estado posterior
┌────────────┬────────┬──────────┬──────┬──────────┐
│    dni     │ nombre │ apellido │ nota │ id_clase │
├────────────┼────────┼──────────┼──────┼──────────┤
│ DNI789012B │ María  │ Martínez │ 92   │ 2        │
│ DNI901234D │ Ana    │ Martínez │ 89   │ 3        │
│ DNI345678J │ Elena  │ Martínez │ 94   │ 3        │
└────────────┴────────┴──────────┴──────┴──────────┘


**/


-- 5. Obtener todos los datos de los alumnos que se apellidan Martínez y los que se apellidan Pérez.

/** Estado anterior


**/
-- Consulta:
select * from alumno where apellido='Martínez' or apellido='Pérez';

/** Estado posterior
┌────────────┬────────┬──────────┬──────┬──────────┐
│    dni     │ nombre │ apellido │ nota │ id_clase │
├────────────┼────────┼──────────┼──────┼──────────┤
│ DNI123456A │ Juan   │ Pérez    │ 85   │ 1        │
│ DNI789012B │ María  │ Martínez │ 92   │ 2        │
│ DNI901234D │ Ana    │ Martínez │ 89   │ 3        │
│ DNI123890F │ Laura  │ Pérez    │ 75   │ 1        │
│ DNI456789G │ Carlos │ Pérez    │ 88   │ 3        │
│ DNI345678J │ Elena  │ Martínez │ 94   │ 3        │
└────────────┴────────┴──────────┴──────┴──────────┘


**/


-- 6. Obtener todos los datos de los alumnos que asisten a la clase 10.

/** Estado anterior


**/
-- Consulta:
select * FROM alumno WHERE id_clase=10;

/** Estado posterior
No devuelve ningún dato

**/


-- 7. Obtener todos los datos de los alumnos que asisten a la clase 8 y para el clase 5.

/** Estado anterior


**/
-- Consulta:
select * FROM alumno WHERE id_clase=8 or id_clase=5;

/** Estado posterior
No devuelve ningún dato

**/


-- 8. Obtener todos los datos de los alumnos cuyo apellido comience por P.

/** Estado anterior


**/
-- Consulta:
select * FROM alumno WHERE apellido like 'P%';

/** Estado posterior
┌────────────┬────────┬──────────┬──────┬──────────┐
│    dni     │ nombre │ apellido │ nota │ id_clase │
├────────────┼────────┼──────────┼──────┼──────────┤
│ DNI123456A │ Juan   │ Pérez    │ 85   │ 1        │
│ DNI123890F │ Laura  │ Pérez    │ 75   │ 1        │
│ DNI456789G │ Carlos │ Pérez    │ 88   │ 3        │
└────────────┴────────┴──────────┴──────┴──────────┘

**/


-- 9. Obtener el número máximo de alumnos por en todas las clases.

/** Estado anterior


**/
-- Consulta:
SELECT max_alumnos FROM clase ;
/** Estado posterior
┌─────────────┐
│ max_alumnos │
├─────────────┤
│ 30          │
│ 25          │
│ 20          │
└─────────────┘


**/


-- 10. Obtener el número de alumnos en cada clase.

/** Estado anterior


**/
-- Consulta:
select count(alumno.dni) as 'Número de alumnos', clase.id from alumno, clase WHERE alumno.id_clase=clase.id group by alumno.id_clase;

/** Estado posterior
┌───────────────────┬────┐
│ Número de alumnos │ id │
├───────────────────┼────┤
│ 5                 │ 1  │
│ 3                 │ 2  │
│ 4                 │ 3  │
└───────────────────┴────┘


**/


-- 11. Obtener un listado completo de alumnos, incluyendo los datos de su clase a la que asisten.

/** Estado anterior


**/
-- Consulta:
select * FROM alumno, clase group by alumno.dni;

/** Estado posterior
┌────────────┬────────┬───────────┬──────┬──────────┬────┬─────────────┐
│    dni     │ nombre │ apellido  │ nota │ id_clase │ id │ max_alumnos │
├────────────┼────────┼───────────┼──────┼──────────┼────┼─────────────┤
│ DNI123456A │ Juan   │ Pérez     │ 85   │ 1        │ 1  │ 30          │
│ DNI123890F │ Laura  │ Pérez     │ 75   │ 1        │ 1  │ 30          │
│ DNI234567H │ Sara   │ García    │ 67   │ 2        │ 1  │ 30          │
│ DNI345678C │ Pedro  │ Gómez     │ 78   │ 1        │ 1  │ 30          │
│ DNI345678J │ Elena  │ Martínez  │ 94   │ 3        │ 1  │ 30          │
│ DNI456789G │ Carlos │ Pérez     │ 88   │ 3        │ 1  │ 30          │
│ DNI542075T │ Jorge  │ Albertos  │ 26   │ 1        │ 1  │ 30          │
│ DNI567890E │ David  │ Fernández │ 95   │ 2        │ 1  │ 30          │
│ DNI679990J │ Javier │ Acosta    │ 99   │ 3        │ 1  │ 30          │
│ DNI789012B │ María  │ Martínez  │ 92   │ 2        │ 1  │ 30          │
│ DNI890123I │ Javier │ López     │ 76   │ 1        │ 1  │ 30          │
│ DNI901234D │ Ana    │ Martínez  │ 89   │ 3        │ 1  │ 30          │
└────────────┴────────┴───────────┴──────┴──────────┴────┴─────────────┘


**/


-- 12. Muestra todos los alumnos ordenando por nombre de forma descendiente y por nota de forma ascendente .

/** Estado anterior


**/
-- Consulta:

/** Estado posterior


**/


-- 13. Obtener los nombres y apellido de los alumnos que asisten a la clase 4 y cuyo máximo de alumnos es mayor 10.

/** Estado anterior


**/
-- Consulta:
select alumno.nombre, alumno.apellido FROM alumno, clase WHERE id_clase=4 and clase.max_alumnos>10;


/** Estado posterior
No devuelve ningún resultado

**/


-- 14. Obtener los datos de los clases cuyo número de alumnos es superior a la media de todos los clases.

/** Estado anterior


**/
-- Consulta:

/** Estado posterior


**/


-- 15. Obtener los nombres (únicamente los nombres) de los clases que tiene más de dos alumnos.

/** Estado anterior


**/
-- Consulta:
select id_clase FROM alumno WHERE (select count(id_clase) FROM alumno) > 2 group by id_clase;

/** Estado posterior
┌──────────┐
│ id_clase │
├──────────┤
│ 1        │
│ 2        │
│ 3        │
└──────────┘

**/


-- 16. Añadir un nuevo clase, con un número máximo de alumnos es 20.

/** Estado anterior

┌────┬─────────────┐
│ id │ max_alumnos │
├────┼─────────────┤
│ 1  │ 30          │
│ 2  │ 25          │
│ 3  │ 20          │
└────┴─────────────┘

**/
-- Consulta:
INSERT INTO clase (id, max_alumnos) VALUES (4, 20);

/** Estado posterior
┌────┬─────────────┐
│ id │ max_alumnos │
├────┼─────────────┤
│ 1  │ 30          │
│ 2  │ 25          │
│ 3  │ 20          │
│ 4  │ 20          │
└────┴─────────────┘

**/


-- 17. Añadir dos nuevos alumnos vinculando a la clase creada.

/** Estado anterior
┌───────────────────┐
│ numero de alumnos │
├───────────────────┤
│ 0                 │
└───────────────────┘


**/
-- Consulta:
INSERT INTO alumno (nombre, apellido, dni, nota, id_clase) VALUES ('Antonio', 'García', 'DNI444333T', 76, 4),('Germán', 'Gonzales', 'DNI444231T', 75, 4);

/** Estado posterior
┌───────────────────┐
│ numero de alumnos │
├───────────────────┤
│ 2                 │
└───────────────────┘

**/


-- 18. Calcula el 10% de los alumnos por clase.

/** Estado anterior


**/
-- Consulta:
select (count(dni)*0.1) as 'Número de alumnos' FROM alumno group by id_clase;

/** Estado posterior
┌───────────────────┐
│ Número de alumnos │
├───────────────────┤
│ 0.5               │
│ 0.3               │
│ 0.4               │
│ 0.2               │
└───────────────────┘


**/


-- 19. Elimina a todos los alumnos que asisten a la clase con id 2.

/** Estado anterior

┌─────────┬──────────┐
│ nombre  │ id_clase │
├─────────┼──────────┤
│ Juan    │ 1        │
│ María   │ 2        │
│ Pedro   │ 1        │
│ Ana     │ 3        │
│ David   │ 2        │
│ Laura   │ 1        │
│ Carlos  │ 3        │
│ Sara    │ 2        │
│ Javier  │ 1        │
│ Elena   │ 3        │
│ Jorge   │ 1        │
│ Javier  │ 3        │
│ Antonio │ 4        │
│ Germán  │ 4        │
└─────────┴──────────┘

**/
-- Consulta:
delete FROM alumno WHERE id_clase=2;
/** Estado posterior
┌─────────┬──────────┐
│ nombre  │ id_clase │
├─────────┼──────────┤
│ Juan    │ 1        │
│ Pedro   │ 1        │
│ Ana     │ 3        │
│ Laura   │ 1        │
│ Carlos  │ 3        │
│ Javier  │ 1        │
│ Elena   │ 3        │
│ Jorge   │ 1        │
│ Javier  │ 3        │
│ Antonio │ 4        │
│ Germán  │ 4        │
└─────────┴──────────┘

**/


-- 20. Elimina a todos los alumnos cuyo nota sea inferior al 30%.

/** Estado anterior
┌─────────┬──────┐
│ nombre  │ nota │
├─────────┼──────┤
│ Juan    │ 85   │
│ Pedro   │ 78   │
│ Ana     │ 89   │
│ Laura   │ 75   │
│ Carlos  │ 88   │
│ Javier  │ 76   │
│ Elena   │ 94   │
│ Jorge   │ 26   │
│ Javier  │ 99   │
│ Antonio │ 76   │
│ Germán  │ 75   │
└─────────┴──────┘


**/
-- Consulta:
delete FROM alumno where nota<(100*0.3);

/** Estado posterior
┌─────────┬──────┐
│ nombre  │ nota │
├─────────┼──────┤
│ Juan    │ 85   │
│ Pedro   │ 78   │
│ Ana     │ 89   │
│ Laura   │ 75   │
│ Carlos  │ 88   │
│ Javier  │ 76   │
│ Elena   │ 94   │
│ Javier  │ 99   │
│ Antonio │ 76   │
│ Germán  │ 75   │
└─────────┴──────┘


**/

