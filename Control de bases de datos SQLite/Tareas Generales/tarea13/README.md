# Tarea 13: Universidad

<div align='justify'>

## Consultas de una única tabla

1. Devuelve un listado con el primer apellido, segundo apellido y el nombre de todos los alumnos. El listado deberá estar ordenado alfabéticamente de menor a mayor por el primer apellido, segundo apellido y nombre.
```sql
select apellido1, apellido2, nombre from persona where tipo='alumno' order by apellido1 asc, apellido2 asc, nombre asc;
```
| apellido1 | apellido2 |  nombre  |
|-----------|-----------|----------|
| Domínguez | Guerrero  | Antonio  |
| Gea       | Ruiz      | Sonia    |
| Gutiérrez | López     | Juan     |
| Heller    | Pagac     | Pedro    |
| Herman    | Pacocha   | Daniel   |
| Hernández | Martínez  | Irene    |
| Herzog    | Tremblay  | Ramón    |
| Koss      | Bayer     | José     |
| Lakin     | Yundt     | Inma     |
| Saez      | Vega      | Juan     |
| Strosin   | Turcotte  | Ismael   |
| Sánchez   | Pérez     | Salvador |

2. Averigua el nombre y los dos apellidos de los alumnos que no han dado de alta su número de teléfono en la base de datos.
```sql
select nombre, apellido1, apellido2 from persona where tipo='alumno' and telefono is null;
```
| nombre | apellido1 | apellido2 |
|--------|-----------|-----------|
| Pedro  | Heller    | Pagac     |
| Ismael | Strosin   | Turcotte  |

3. Devuelve el listado de los alumnos que nacieron en 1999.
```sql
select * from persona where tipo='alumno' and fecha_nacimiento regexp '^1999/';
```
| id |    nif    | nombre  | apellido1 | apellido2 | ciudad  |    direccion    | telefono  | fecha_nacimiento | sexo |  tipo  |
|----|-----------|---------|-----------|-----------|---------|-----------------|-----------|------------------|------|--------|
| 7  | 97258166K | Ismael  | Strosin   | Turcotte  | Almería | C/ Neptuno      |           | 1999/05/24       | H    | alumno |
| 22 | 41491230N | Antonio | Domínguez | Guerrero  | Almería | C/ Cabo de Gata | 626652498 | 1999/02/11       | H    | alumno |

4. Devuelve el listado de profesores que no han dado de alta su número de teléfono en la base de datos y además su nif termina en K.
```sql
select nombre, apellido1, apellido2 from persona where tipo='profesor' and telefono is null and nif regexp 'K$';
```
|  nombre   | apellido1 | apellido2 |
|-----------|-----------|-----------|
| Antonio   | Fahey     | Considine |
| Guillermo | Ruecker   | Upton     |

5. Devuelve el listado de las asignaturas que se imparten en el primer cuatrimestre, en el tercer curso del grado que tiene el identificador 7.
```sql
select * from asignatura WHERE cuatrimestre=1 and curso=3 and id_grado=7;
```
| id |                  nombre                   | creditos |    tipo     | curso | cuatrimestre | id_profesor | id_grado |
|----|-------------------------------------------|----------|-------------|-------|--------------|-------------|----------|
| 72 | Bases moleculares del desarrollo vegetal  | 4.5      | obligatoria | 3     | 1            |             | 7        |
| 73 | Fisiología animal                         | 4.5      | obligatoria | 3     | 1            |             | 7        |
| 74 | Metabolismo y biosíntesis de biomoléculas | 6.0      | obligatoria | 3     | 1            |             | 7        |
| 75 | Operaciones de separación                 | 6.0      | obligatoria | 3     | 1            |             | 7        |
| 76 | Patología molecular de plantas            | 4.5      | obligatoria | 3     | 1            |             | 7        |
| 77 | Técnicas instrumentales básicas           | 4.5      | obligatoria | 3     | 1            |             | 7        |

## Consultas multitabla (Join)

1. Devuelve un listado con los datos de todas las alumnas que se han matriculado alguna vez en el Grado en Ingeniería Informática (Plan 2015).
```sql
select distinct persona.* from persona join alumno_se_matricula_asignatura on alumno_se_matricula_asignatura.id_alumno=persona.id join asignatura on asignatura.id=alumno_se_matricula_asignatura.id_asignatura join grado on grado.id=asignatura.id_grado where persona.sexo='M' and persona.tipo='alumno' and grado.nombre='Grado en Ingeniería Informática (Plan 2015)';
```
| id |    nif    | nombre | apellido1 | apellido2 | ciudad  |     direccion      | telefono  | fecha_nacimiento | sexo |  tipo  |
|----|-----------|--------|-----------|-----------|---------|--------------------|-----------|------------------|------|--------|
| 19 | 11578526G | Inma   | Lakin     | Yundt     | Almería | C/ Picos de Europa | 678652431 | 1998/09/01       | M    | alumno |
| 23 | 64753215G | Irene  | Hernández | Martínez  | Almería | C/ Zapillo         | 628452384 | 1996/03/12       | M    | alumno |
| 24 | 85135690V | Sonia  | Gea       | Ruiz      | Almería | C/ Mercurio        | 678812017 | 1995/04/13       | M    | alumno |

1. Devuelve un listado con todas las asignaturas ofertadas en el Grado en Ingeniería Informática (Plan 2015).
```sql
select asignatura.* from asignatura join grado on grado.id=asignatura.id_grado where grado.nombre='Grado en Ingeniería Informática (Plan 2015)';
```
| id |                                 nombre                                 | creditos |    tipo     | curso | cuatrimestre | id_profesor | id_grado |
|----|------------------------------------------------------------------------|----------|-------------|-------|--------------|-------------|----------|
| 1  | Álgegra lineal y matemática discreta                                   | 6.0      | básica      | 1     | 1            | 3           | 4        |
| 2  | Cálculo                                                                | 6.0      | básica      | 1     | 1            | 14          | 4        |
| 3  | Física para informática                                                | 6.0      | básica      | 1     | 1            | 3           | 4        |
| 4  | Introducción a la programación                                         | 6.0      | básica      | 1     | 1            | 14          | 4        |
| 5  | Organización y gestión de empresas                                     | 6.0      | básica      | 1     | 1            | 3           | 4        |
| 6  | Estadística                                                            | 6.0      | básica      | 1     | 2            | 14          | 4        |
| 7  | Estructura y tecnología de computadores                                | 6.0      | básica      | 1     | 2            | 3           | 4        |
| 8  | Fundamentos de electrónica                                             | 6.0      | básica      | 1     | 2            | 14          | 4        |
| 9  | Lógica y algorítmica                                                   | 6.0      | básica      | 1     | 2            | 3           | 4        |
| 10 | Metodología de la programación                                         | 6.0      | básica      | 1     | 2            | 14          | 4        |
| 11 | Arquitectura de Computadores                                           | 6.0      | básica      | 2     | 1            | 3           | 4        |
| 12 | Estructura de Datos y Algoritmos I                                     | 6.0      | obligatoria | 2     | 1            | 3           | 4        |
| 13 | Ingeniería del Software                                                | 6.0      | obligatoria | 2     | 1            | 14          | 4        |
| 14 | Sistemas Inteligentes                                                  | 6.0      | obligatoria | 2     | 1            | 3           | 4        |
| 15 | Sistemas Operativos                                                    | 6.0      | obligatoria | 2     | 1            | 14          | 4        |
| 16 | Bases de Datos                                                         | 6.0      | básica      | 2     | 2            | 14          | 4        |
| 17 | Estructura de Datos y Algoritmos II                                    | 6.0      | obligatoria | 2     | 2            | 14          | 4        |
| 18 | Fundamentos de Redes de Computadores                                   | 6.0      | obligatoria | 2     | 2            | 3           | 4        |
| 19 | Planificación y Gestión de Proyectos Informáticos                      | 6.0      | obligatoria | 2     | 2            | 3           | 4        |
| 20 | Programación de Servicios Software                                     | 6.0      | obligatoria | 2     | 2            | 14          | 4        |
| 21 | Desarrollo de interfaces de usuario                                    | 6.0      | obligatoria | 3     | 1            | 14          | 4        |
| 22 | Ingeniería de Requisitos                                               | 6.0      | optativa    | 3     | 1            |             | 4        |
| 23 | Integración de las Tecnologías de la Información en las Organizaciones | 6.0      | optativa    | 3     | 1            |             | 4        |
| 24 | Modelado y Diseño del Software 1                                       | 6.0      | optativa    | 3     | 1            |             | 4        |
| 25 | Multiprocesadores                                                      | 6.0      | optativa    | 3     | 1            |             | 4        |
| 26 | Seguridad y cumplimiento normativo                                     | 6.0      | optativa    | 3     | 1            |             | 4        |
| 27 | Sistema de Información para las Organizaciones                         | 6.0      | optativa    | 3     | 1            |             | 4        |
| 28 | Tecnologías web                                                        | 6.0      | optativa    | 3     | 1            |             | 4        |
| 29 | Teoría de códigos y criptografía                                       | 6.0      | optativa    | 3     | 1            |             | 4        |
| 30 | Administración de bases de datos                                       | 6.0      | optativa    | 3     | 2            |             | 4        |
| 31 | Herramientas y Métodos de Ingeniería del Software                      | 6.0      | optativa    | 3     | 2            |             | 4        |
| 32 | Informática industrial y robótica                                      | 6.0      | optativa    | 3     | 2            |             | 4        |
| 33 | Ingeniería de Sistemas de Información                                  | 6.0      | optativa    | 3     | 2            |             | 4        |
| 34 | Modelado y Diseño del Software 2                                       | 6.0      | optativa    | 3     | 2            |             | 4        |
| 35 | Negocio Electrónico                                                    | 6.0      | optativa    | 3     | 2            |             | 4        |
| 36 | Periféricos e interfaces                                               | 6.0      | optativa    | 3     | 2            |             | 4        |
| 37 | Sistemas de tiempo real                                                | 6.0      | optativa    | 3     | 2            |             | 4        |
| 38 | Tecnologías de acceso a red                                            | 6.0      | optativa    | 3     | 2            |             | 4        |
| 39 | Tratamiento digital de imágenes                                        | 6.0      | optativa    | 3     | 2            |             | 4        |
| 40 | Administración de redes y sistemas operativos                          | 6.0      | optativa    | 4     | 1            |             | 4        |
| 41 | Almacenes de Datos                                                     | 6.0      | optativa    | 4     | 1            |             | 4        |
| 42 | Fiabilidad y Gestión de Riesgos                                        | 6.0      | optativa    | 4     | 1            |             | 4        |
| 43 | Líneas de Productos Software                                           | 6.0      | optativa    | 4     | 1            |             | 4        |
| 44 | Procesos de Ingeniería del Software 1                                  | 6.0      | optativa    | 4     | 1            |             | 4        |
| 45 | Tecnologías multimedia                                                 | 6.0      | optativa    | 4     | 1            |             | 4        |
| 46 | Análisis y planificación de las TI                                     | 6.0      | optativa    | 4     | 2            |             | 4        |
| 47 | Desarrollo Rápido de Aplicaciones                                      | 6.0      | optativa    | 4     | 2            |             | 4        |
| 48 | Gestión de la Calidad y de la Innovación Tecnológica                   | 6.0      | optativa    | 4     | 2            |             | 4        |
| 49 | Inteligencia del Negocio                                               | 6.0      | optativa    | 4     | 2            |             | 4        |
| 50 | Procesos de Ingeniería del Software 2                                  | 6.0      | optativa    | 4     | 2            |             | 4        |
| 51 | Seguridad Informática                                                  | 6.0      | optativa    | 4     | 2            |             | 4        |

2. Devuelve un listado de los profesores junto con el nombre del departamento al que están vinculados. El listado debe devolver cuatro columnas, primer apellido, segundo apellido, nombre y nombre del departamento. El resultado estará ordenado alfabéticamente de menor a mayor por los apellidos y el nombre.
```sql
select persona.apellido1, persona.apellido2, persona.nombre, departamento.nombre from persona join profesor on profesor.id_profesor=persona.id join departamento on departamento.id=profesor.id_departamento order by persona.apellido1 asc, persona.apellido2 asc, persona.nombre asc;
```
| apellido1  | apellido2  |  nombre   |       nombre       |
|------------|------------|-----------|--------------------|
| Fahey      | Considine  | Antonio   | Economía y Empresa |
| Hamill     | Kozey      | Manolo    | Informática        |
| Kohler     | Schoen     | Alejandro | Matemáticas        |
| Lemke      | Rutherford | Cristina  | Economía y Empresa |
| Monahan    | Murray     | Micaela   | Agronomía          |
| Ramirez    | Gea        | Zoe       | Informática        |
| Ruecker    | Upton      | Guillermo | Educación          |
| Schmidt    | Fisher     | David     | Matemáticas        |
| Schowalter | Muller     | Francesca | Química y Física   |
| Spencer    | Lakin      | Esther    | Educación          |
| Stiedemann | Morissette | Alfredo   | Química y Física   |
| Streich    | Hirthe     | Carmen    | Educación          |

3. Devuelve un listado con el nombre de las asignaturas, año de inicio y año de fin del curso escolar del alumno con nif 26902806M.
```sql
select asignatura.nombre, curso_escolar.anyo_inicio, curso_escolar.anyo_fin from asignatura join alumno_se_matricula_asignatura on alumno_se_matricula_asignatura.id_asignatura=asignatura.id join curso_escolar on curso_escolar.id=alumno_se_matricula_asignatura.id_curso_escolar join persona on persona.id=alumno_se_matricula_asignatura.id_alumno WHERE persona.nif='26902806M';
```
|                nombre                | anyo_inicio | anyo_fin |
|--------------------------------------|-------------|----------|
| Álgegra lineal y matemática discreta | 2014        | 2015     |
| Cálculo                              | 2014        | 2015     |
| Física para informática              | 2014        | 2015     |

5. Devuelve un listado con el nombre de todos los departamentos que tienen profesores que imparten alguna asignatura en el Grado en Ingeniería Informática (Plan 2015).
```sql
select distinct departamento.nombre from departamento join profesor on profesor.id_departamento=departamento.id join asignatura on profesor.id_profesor=asignatura.id_profesor join grado on asignatura.id_grado=grado.id where grado.nombre='Grado en Ingeniería Informática (Plan 2015)';
```
|   nombre    |
|-------------|
| Informática |

6. Devuelve un listado con todos los alumnos que se han matriculado en alguna asignatura durante el curso escolar 2018/2019.
```sql
select distinct persona.* from persona join alumno_se_matricula_asignatura on alumno_se_matricula_asignatura.id_alumno=persona.id join curso_escolar on curso_escolar.id=alumno_se_matricula_asignatura.id_curso_escolar where curso_escolar.anyo_inicio=2018;
```
| id |    nif    | nombre | apellido1 | apellido2 | ciudad  |     direccion      | telefono  | fecha_nacimiento | sexo |  tipo  |
|----|-----------|--------|-----------|-----------|---------|--------------------|-----------|------------------|------|--------|
| 24 | 85135690V | Sonia  | Gea       | Ruiz      | Almería | C/ Mercurio        | 678812017 | 1995/04/13       | M    | alumno |
| 23 | 64753215G | Irene  | Hernández | Martínez  | Almería | C/ Zapillo         | 628452384 | 1996/03/12       | M    | alumno |
| 19 | 11578526G | Inma   | Lakin     | Yundt     | Almería | C/ Picos de Europa | 678652431 | 1998/09/01       | M    | alumno |

## Consultas multitabla (Where)

1. Devuelve un listado con los nombres de todos los profesores y los departamentos que tienen vinculados. El listado también debe mostrar aquellos profesores que no tienen ningún departamento asociado. El listado debe devolver cuatro columnas, nombre del departamento, primer apellido, segundo apellido y nombre del profesor. El resultado estará ordenado alfabéticamente de menor a mayor por el nombre del departamento, apellidos y el nombre.
```sql
select coalesce(departamento.nombre, '') as Departamento, persona.apellido1, persona.apellido2, persona.nombre from persona, departamento, profesor where persona.id=profesor.id_profesor and departamento.id=profesor.id_departamento order by Departamento asc, persona.apellido1 asc, persona.apellido2 asc, persona.nombre asc;
```
|    Departamento    | apellido1  | apellido2  |  nombre   |
|--------------------|------------|------------|-----------|
| Agronomía          | Monahan    | Murray     | Micaela   |
| Economía y Empresa | Fahey      | Considine  | Antonio   |
| Economía y Empresa | Lemke      | Rutherford | Cristina  |
| Educación          | Ruecker    | Upton      | Guillermo |
| Educación          | Spencer    | Lakin      | Esther    |
| Educación          | Streich    | Hirthe     | Carmen    |
| Informática        | Hamill     | Kozey      | Manolo    |
| Informática        | Ramirez    | Gea        | Zoe       |
| Matemáticas        | Kohler     | Schoen     | Alejandro |
| Matemáticas        | Schmidt    | Fisher     | David     |
| Química y Física   | Schowalter | Muller     | Francesca |
| Química y Física   | Stiedemann | Morissette | Alfredo   |

2. Devuelve un listado con los profesores que no están asociados a un departamento.
```sql
select persona.* from persona where tipo='profesor' and id not in (select profesor.id_profesor from profesor);
```
No devuelve nada.

3. Devuelve un listado con los departamentos que no tienen profesores asociados.
```sql

```

4. Devuelve un listado con los profesores que no imparten ninguna asignatura.
```sql

```

5. Devuelve un listado con las asignaturas que no tienen un profesor asignado.
```sql

```

6. Devuelve un listado con todos los departamentos que tienen alguna asignatura que no se haya impartido en ningún curso escolar. El resultado debe mostrar el nombre del departamento y el nombre de la asignatura que no se haya impartido nunca.
```sql

```


## Consultas resúmen (Funciones)

1. Devuelve el número total de alumnas que hay.
```sql
select count(id) as 'Número de alumnas' from persona where sexo='M';
```
| Número de alumnas |
|-------------------|
| 7                 |

2. Calcula cuántos alumnos nacieron en 1999.
```sql
select count(id) as 'Número de alumnos' from persona where fecha_nacimiento regexp '^1999/' and tipo='alumno';
```
| Número de alumnos |
|-------------------|
| 2                 |

3. Calcula cuántos profesores hay en cada departamento. El resultado sólo debe mostrar dos columnas, una con el nombre del departamento y otra con el número de profesores que hay en ese departamento. El resultado sólo debe incluir los departamentos que tienen profesores asociados y deberá estar ordenado de mayor a menor por el número de profesores.
```sql
select count(persona.id) as 'Número de profesores', departamento.nombre as Departamento from persona join profesor on profesor.id_profesor=persona.id join departamento on departamento.id=profesor.id_departamento group by departamento.id;
```
| Número de profesores |    Departamento    |
|----------------------|--------------------|
| 2                    | Informática        |
| 2                    | Matemáticas        |
| 2                    | Economía y Empresa |
| 3                    | Educación          |
| 1                    | Agronomía          |
| 2                    | Química y Física   |

4. Devuelve un listado con todos los departamentos y el número de profesores que hay en cada uno de ellos. Tenga en cuenta que pueden existir departamentos que no tienen profesores asociados. Estos departamentos también tienen que aparecer en el listado.
```sql

```

5. Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno. Tenga en cuenta que pueden existir grados que no tienen asignaturas asociadas. Estos grados también tienen que aparecer en el listado. El resultado deberá estar ordenado de mayor a menor por el número de asignaturas.
```sql

```

6. Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno, de los grados que tengan más de 40 asignaturas asociadas.
```sql

```

7. Devuelve un listado que muestre el nombre de los grados y la suma del número total de créditos que hay para cada tipo de asignatura. El resultado debe tener tres columnas: nombre del grado, tipo de asignatura y la suma de los créditos de todas las asignaturas que hay de ese tipo. Ordene el resultado de mayor a menor por el número total de crédidos.
```sql

```

8. Devuelve un listado que muestre cuántos alumnos se han matriculado de alguna asignatura en cada uno de los cursos escolares. El resultado deberá mostrar dos columnas, una columna con el año de inicio del curso escolar y otra con el número de alumnos matriculados.
```sql

```

9. Devuelve un listado con el número de asignaturas que imparte cada profesor. El listado debe tener en cuenta aquellos profesores que no imparten ninguna asignatura. El resultado mostrará cinco columnas: id, nombre, primer apellido, segundo apellido y número de asignaturas. El resultado estará ordenado de mayor a menor por el número de asignaturas.
```sql

```


## Subconsultas

1. Devuelve todos los datos del alumno más joven.
```sql

```

2. Devuelve un listado con los profesores que no están asociados a un departamento.
```sql

```

3. Devuelve un listado con los departamentos que no tienen profesores asociados.
```sql

```

4. Devuelve un listado con los profesores que tienen un departamento asociado y que no imparten ninguna asignatura.
```sql

```

5. Devuelve un listado con las asignaturas que no tienen un profesor asignado.
```sql

```

6. Devuelve un listado con todos los departamentos que no han impartido asignaturas en ningún curso escolar.
```sql

```


</div>