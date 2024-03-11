-- ----------------------------------------
-- Consultas sobre una tabla
-- 0,2 puntos la correcta. Total = 1,4 puntos
-- ----------------------------------------

-- 1.- Devuelve un listado con todos las compras que se han realizado. Las compras deben estar ordenados
-- por la fecha de realización, mostrando en primer lugar las compras más recientes.
select * from compra order by fecha desc;
/**
┌────┬─────────┬────────────┬───────────────┬──────────────────┐
│ id │  total  │   fecha    │ id_consumidor │ id_suministrador │
├────┼─────────┼────────────┼───────────────┼──────────────────┤
│ 15 │ 370.85  │ 2022-03-11 │ 1             │ 5                │
│ 16 │ 2389.23 │ 2022-03-11 │ 1             │ 5                │
│ 13 │ 545.75  │ 2022-01-25 │ 6             │ 1                │
│ 8  │ 1983.43 │ 2020-10-10 │ 4             │ 6                │
│ 1  │ 150.5   │ 2020-10-05 │ 5             │ 2                │
│ 3  │ 65.26   │ 2020-10-05 │ 2             │ 1                │
│ 5  │ 948.5   │ 2020-09-10 │ 5             │ 2                │
│ 12 │ 3045.6  │ 2020-04-25 │ 2             │ 1                │
│ 14 │ 145.82  │ 2020-02-02 │ 6             │ 1                │
│ 9  │ 2480.4  │ 2019-10-10 │ 8             │ 3                │
│ 2  │ 270.65  │ 2019-09-10 │ 1             │ 5                │
│ 4  │ 110.5   │ 2019-08-17 │ 8             │ 3                │
│ 11 │ 75.29   │ 2019-08-17 │ 3             │ 7                │
│ 6  │ 2400.6  │ 2019-07-27 │ 7             │ 1                │
│ 7  │ 5760.0  │ 2018-09-10 │ 2             │ 1                │
│ 10 │ 250.45  │ 2018-06-27 │ 8             │ 2                │
└────┴─────────┴────────────┴───────────────┴──────────────────┘
**/

-- 2. Devuelve todos los datos de los dos compras de mayor valor.
select * from compra order by total desc limit 2;
/**
┌────┬────────┬────────────┬───────────────┬──────────────────┐
│ id │ total  │   fecha    │ id_consumidor │ id_suministrador │
├────┼────────┼────────────┼───────────────┼──────────────────┤
│ 7  │ 5760.0 │ 2018-09-10 │ 2             │ 1                │
│ 12 │ 3045.6 │ 2020-04-25 │ 2             │ 1                │
└────┴────────┴────────────┴───────────────┴──────────────────┘
**/
-- 3. Devuelve un listado con los identificadores de los consumidores que han realizado algún compra.
-- Tenga en cuenta que no debe mostrar identificadores que estén repetidos.

-- select distinct id_consumidor from compra;

-- 4. Devuelve un listado de todos las compras que se realizaron durante el año 2020,
-- cuya cantidad total sea superior a 500€.
select * from compra where fecha regexp '^2020-' and total>500;
/**
┌────┬─────────┬────────────┬───────────────┬──────────────────┐
│ id │  total  │   fecha    │ id_consumidor │ id_suministrador │
├────┼─────────┼────────────┼───────────────┼──────────────────┤
│ 5  │ 948.5   │ 2020-09-10 │ 5             │ 2                │
│ 8  │ 1983.43 │ 2020-10-10 │ 4             │ 6                │
│ 12 │ 3045.6  │ 2020-04-25 │ 2             │ 1                │
└────┴─────────┴────────────┴───────────────┴──────────────────┘
**/
-- 5. Devuelve un listado con el nombre y los apellidos de los suministradores que tienen una comisión entre 0.11 y 0.15.
select nombre, apellido1, apellido2 from suministrador where categoria BETWEEN 0.11 and 0.15;
/**
┌─────────┬───────────┬───────────┐
│ nombre  │ apellido1 │ apellido2 │
├─────────┼───────────┼───────────┤
│ Daniel  │ Sáez      │ Vega      │
│ Juan    │ Gómez     │ López     │
│ Diego   │ Flores    │ Salas     │
│ Marta   │ Herrera   │ Gil       │
│ Antonio │ Carretero │ Ortega    │
│ Manuel  │ Domínguez │ Hernández │
│ Antonio │ Vega      │ Hernández │
└─────────┴───────────┴───────────┘

**/
-- 6. Devuelve el valor de la comisión de mayor valor que existe en la tabla suministrador.
select max(categoria) as 'Mayor comisión' from suministrador ;
/**
┌────────────────┐
│ Mayor comisión │
├────────────────┤
│ 0.15           │
└────────────────┘

**/
-- 7. Devuelve el identificador, nombre y primer apellido de aquellos consumidores cuyo segundo apellido no es NULL.
-- El listado deberá estar ordenado alfabéticamente por apellidos y nombre.
select id, nombre, apellido1 from consumidor where apellido2 is null;
/**
┌────┬────────┬───────────┐
│ id │ nombre │ apellido1 │
├────┼────────┼───────────┤
│ 4  │ Adrián │ Suárez    │
│ 7  │ Pilar  │ Ruiz      │
└────┴────────┴───────────┘

**/

-- (Consultas Multitabla Where)
-- -----------------------------------------------
-- 0,3 puntos la correcta. Total =  2,1 puntos
-- -----------------------------------------------

-- 1. Devuelve un listado con el identificador, nombre y los apellidos de todos los consumidores que han realizado algún compra.
-- El listado debe estar ordenado alfabéticamente y se deben eliminar los elementos repetidos.
select distinct con.id, con.nombre, con.apellido1, con.apellido2 from consumidor as con, compra as c where con.id=c.id_consumidor order by con.nombre asc;
/**
┌────┬────────┬───────────┬───────────┐
│ id │ nombre │ apellido1 │ apellido2 │
├────┼────────┼───────────┼───────────┤
│ 1  │ Aarón  │ Rivero    │ Gómez     │
│ 2  │ Adela  │ Salas     │ Díaz      │
│ 3  │ Adolfo │ Rubio     │ Flores    │
│ 4  │ Adrián │ Suárez    │           │
│ 5  │ Marcos │ Loyola    │ Méndez    │
│ 6  │ María  │ Santana   │ Moreno    │
│ 8  │ Pepe   │ Ruiz      │ Santana   │
│ 7  │ Pilar  │ Ruiz      │           │
└────┴────────┴───────────┴───────────┘


**/
-- 2. Devuelve un listado que muestre todos las compras que ha realizado cada consumidor. 
-- El resultado debe mostrar todos los datos de las compras y del consumidor. El listado debe mostrar los datos de los consumidores ordenados alfabéticamente.
select c.*, con.* from compra as c, consumidor as con where con.id=c.id_consumidor order by con.nombre;
/**
┌────┬─────────┬────────────┬───────────────┬──────────────────┬────┬────────┬───────────┬───────────┬─────────┬───────────┐
│ id │  total  │   fecha    │ id_consumidor │ id_suministrador │ id │ nombre │ apellido1 │ apellido2 │ ciudad  │ categoria │
├────┼─────────┼────────────┼───────────────┼──────────────────┼────┼────────┼───────────┼───────────┼─────────┼───────────┤
│ 2  │ 270.65  │ 2019-09-10 │ 1             │ 5                │ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │
│ 15 │ 370.85  │ 2022-03-11 │ 1             │ 5                │ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │
│ 16 │ 2389.23 │ 2022-03-11 │ 1             │ 5                │ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │
│ 3  │ 65.26   │ 2020-10-05 │ 2             │ 1                │ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │
│ 7  │ 5760.0  │ 2018-09-10 │ 2             │ 1                │ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │
│ 12 │ 3045.6  │ 2020-04-25 │ 2             │ 1                │ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │
│ 11 │ 75.29   │ 2019-08-17 │ 3             │ 7                │ 3  │ Adolfo │ Rubio     │ Flores    │ Sevilla │           │
│ 8  │ 1983.43 │ 2020-10-10 │ 4             │ 6                │ 4  │ Adrián │ Suárez    │           │ Jaén    │ 300       │
│ 1  │ 150.5   │ 2020-10-05 │ 5             │ 2                │ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │
│ 5  │ 948.5   │ 2020-09-10 │ 5             │ 2                │ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │
│ 13 │ 545.75  │ 2022-01-25 │ 6             │ 1                │ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │
│ 14 │ 145.82  │ 2020-02-02 │ 6             │ 1                │ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │
│ 4  │ 110.5   │ 2019-08-17 │ 8             │ 3                │ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │
│ 9  │ 2480.4  │ 2019-10-10 │ 8             │ 3                │ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │
│ 10 │ 250.45  │ 2018-06-27 │ 8             │ 2                │ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │
│ 6  │ 2400.6  │ 2019-07-27 │ 7             │ 1                │ 7  │ Pilar  │ Ruiz      │           │ Sevilla │ 300       │
└────┴─────────┴────────────┴───────────────┴──────────────────┴────┴────────┴───────────┴───────────┴─────────┴───────────┘

**/
-- 3. Devuelve un listado que muestre todos las compras en los que ha participado un suministrador.
-- El resultado debe mostrar todos los datos de las compras y de los suministradores.
-- El listado debe mostrar los datos de los suministradores ordenados alfabéticamente.
 select s.*, c.* from suministrador as s, compra as c where s.id=c.id_suministrador order by s.nombre;

/**
┌────┬─────────┬───────────┬───────────┬───────────┬────┬─────────┬────────────┬───────────────┬──────────────────┐
│ id │ nombre  │ apellido1 │ apellido2 │ categoria │ id │  total  │   fecha    │ id_consumidor │ id_suministrador │
├────┼─────────┼───────────┼───────────┼───────────┼────┼─────────┼────────────┼───────────────┼──────────────────┤
│ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │ 2  │ 270.65  │ 2019-09-10 │ 1             │ 5                │
│ 7  │ Antonio │ Vega      │ Hernández │ 0.11      │ 11 │ 75.29   │ 2019-08-17 │ 3             │ 7                │
│ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │ 15 │ 370.85  │ 2022-03-11 │ 1             │ 5                │
│ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │ 16 │ 2389.23 │ 2022-03-11 │ 1             │ 5                │
│ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │ 3  │ 65.26   │ 2020-10-05 │ 2             │ 1                │
│ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │ 6  │ 2400.6  │ 2019-07-27 │ 7             │ 1                │
│ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │ 7  │ 5760.0  │ 2018-09-10 │ 2             │ 1                │
│ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │ 12 │ 3045.6  │ 2020-04-25 │ 2             │ 1                │
│ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │ 13 │ 545.75  │ 2022-01-25 │ 6             │ 1                │
│ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │ 14 │ 145.82  │ 2020-02-02 │ 6             │ 1                │
│ 3  │ Diego   │ Flores    │ Salas     │ 0.11      │ 4  │ 110.5   │ 2019-08-17 │ 8             │ 3                │
│ 3  │ Diego   │ Flores    │ Salas     │ 0.11      │ 9  │ 2480.4  │ 2019-10-10 │ 8             │ 3                │
│ 2  │ Juan    │ Gómez     │ López     │ 0.13      │ 1  │ 150.5   │ 2020-10-05 │ 5             │ 2                │
│ 2  │ Juan    │ Gómez     │ López     │ 0.13      │ 5  │ 948.5   │ 2020-09-10 │ 5             │ 2                │
│ 2  │ Juan    │ Gómez     │ López     │ 0.13      │ 10 │ 250.45  │ 2018-06-27 │ 8             │ 2                │
│ 6  │ Manuel  │ Domínguez │ Hernández │ 0.13      │ 8  │ 1983.43 │ 2020-10-10 │ 4             │ 6                │
└────┴─────────┴───────────┴───────────┴───────────┴────┴─────────┴────────────┴───────────────┴──────────────────┘

**/
-- 4. Devuelve un listado que muestre todos los consumidores, con todos las compras que han realizado 
-- y con los datos de los suministradores asociados a cada compra.
select con.* , c.* , s.* from compra as c, suministrador as s, consumidor as con where con.id=c.id_consumidor and s.id=c.id_suministrador;
/**
┌────┬────────┬───────────┬───────────┬─────────┬───────────┬────┬─────────┬────────────┬───────────────┬──────────────────┬────┬─────────┬───────────┬───────────┬───────────┐
│ id │ nombre │ apellido1 │ apellido2 │ ciudad  │ categoria │ id │  total  │   fecha    │ id_consumidor │ id_suministrador │ id │ nombre  │ apellido1 │ apellido2 │ categoria │
├────┼────────┼───────────┼───────────┼─────────┼───────────┼────┼─────────┼────────────┼───────────────┼──────────────────┼────┼─────────┼───────────┼───────────┼───────────┤
│ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │ 1  │ 150.5   │ 2020-10-05 │ 5             │ 2                │ 2  │ Juan    │ Gómez     │ López     │ 0.13      │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 2  │ 270.65  │ 2019-09-10 │ 1             │ 5                │ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 3  │ 65.26   │ 2020-10-05 │ 2             │ 1                │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 4  │ 110.5   │ 2019-08-17 │ 8             │ 3                │ 3  │ Diego   │ Flores    │ Salas     │ 0.11      │
│ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │ 5  │ 948.5   │ 2020-09-10 │ 5             │ 2                │ 2  │ Juan    │ Gómez     │ López     │ 0.13      │
│ 7  │ Pilar  │ Ruiz      │           │ Sevilla │ 300       │ 6  │ 2400.6  │ 2019-07-27 │ 7             │ 1                │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 7  │ 5760.0  │ 2018-09-10 │ 2             │ 1                │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 4  │ Adrián │ Suárez    │           │ Jaén    │ 300       │ 8  │ 1983.43 │ 2020-10-10 │ 4             │ 6                │ 6  │ Manuel  │ Domínguez │ Hernández │ 0.13      │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 9  │ 2480.4  │ 2019-10-10 │ 8             │ 3                │ 3  │ Diego   │ Flores    │ Salas     │ 0.11      │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 10 │ 250.45  │ 2018-06-27 │ 8             │ 2                │ 2  │ Juan    │ Gómez     │ López     │ 0.13      │
│ 3  │ Adolfo │ Rubio     │ Flores    │ Sevilla │           │ 11 │ 75.29   │ 2019-08-17 │ 3             │ 7                │ 7  │ Antonio │ Vega      │ Hernández │ 0.11      │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 12 │ 3045.6  │ 2020-04-25 │ 2             │ 1                │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │ 13 │ 545.75  │ 2022-01-25 │ 6             │ 1                │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │ 14 │ 145.82  │ 2020-02-02 │ 6             │ 1                │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 15 │ 370.85  │ 2022-03-11 │ 1             │ 5                │ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 16 │ 2389.23 │ 2022-03-11 │ 1             │ 5                │ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │
└────┴────────┴───────────┴───────────┴─────────┴───────────┴────┴─────────┴────────────┴───────────────┴──────────────────┴────┴─────────┴───────────┴───────────┴───────────┘

**/
-- 5. Devuelve un listado de todos los consumidores que realizaron un compra durante el año 2020,
-- cuya cantidad esté entre 300 € y 1000 €.
select con.* from consumidor as con, compra as c where con.id=c.id_consumidor and c.fecha regexp '^2020-' and c.total BETWEEN 300 and 1000;

/**
┌────┬────────┬───────────┬───────────┬─────────┬───────────┐
│ id │ nombre │ apellido1 │ apellido2 │ ciudad  │ categoria │
├────┼────────┼───────────┼───────────┼─────────┼───────────┤
│ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │
└────┴────────┴───────────┴───────────┴─────────┴───────────┘

**/
-- 6. Devuelve el nombre y los apellidos de todos los suministradores que ha participado en algún compra realizado por María Santana Moreno.
select distinct s.nombre, s.apellido1, s.apellido2 from suministrador as s, consumidor as con, compra as c where c.id_suministrador=s.id and con.id=c.id_consumidor and con.nombre='María' and con.apellido1='Santana' and con.apellido2='Moreno';
/**
┌────────┬───────────┬───────────┐
│ nombre │ apellido1 │ apellido2 │
├────────┼───────────┼───────────┤
│ Daniel │ Sáez      │ Vega      │
└────────┴───────────┴───────────┘

**/
-- 7. Devuelve el nombre de todos los consumidores que han realizado algún compra con el suministrador Daniel Sáez Vega.
select distinct con.nombre, con.apellido1, con.apellido2 from suministrador as s, consumidor as con, compra as c where c.id_suministrador=s.id and con.id=c.id_consumidor and s.nombre='Daniel' and s.apellido1='Sáez' and s.apellido2='Vega';
/**
┌────────┬───────────┬───────────┐
│ nombre │ apellido1 │ apellido2 │
├────────┼───────────┼───────────┤
│ Adela  │ Salas     │ Díaz      │
│ Pilar  │ Ruiz      │           │
│ María  │ Santana   │ Moreno    │
└────────┴───────────┴───────────┘
**/

-- (Consultas Multitabla Join)
-- -----------------------------------------------
-- 0,3 puntos la correcta. Total = 2,1 puntos
-- -----------------------------------------------

-- 1. Devuelve un listado con el identificador, nombre y los apellidos de todos los consumidores que han realizado algún compra.
-- El listado debe estar ordenado alfabéticamente y se deben eliminar los elementos repetidos.
select distinct con.id, con.nombre, con.apellido1, con.apellido2 from compra as c join consumidor as con on con.id=c.id_consumidor order by con.nombre asc;
/**
┌────┬────────┬───────────┬───────────┐
│ id │ nombre │ apellido1 │ apellido2 │
├────┼────────┼───────────┼───────────┤
│ 1  │ Aarón  │ Rivero    │ Gómez     │
│ 2  │ Adela  │ Salas     │ Díaz      │
│ 3  │ Adolfo │ Rubio     │ Flores    │
│ 4  │ Adrián │ Suárez    │           │
│ 5  │ Marcos │ Loyola    │ Méndez    │
│ 6  │ María  │ Santana   │ Moreno    │
│ 8  │ Pepe   │ Ruiz      │ Santana   │
│ 7  │ Pilar  │ Ruiz      │           │
└────┴────────┴───────────┴───────────┘

**/

-- 2. Devuelve un listado que muestre todos las compras que ha realizado cada consumidor. 
-- El resultado debe mostrar todos los datos de las compras y del consumidor. El listado debe mostrar los datos de los consumidores ordenados alfabéticamente.
select c.*, con.* from compra as c join consumidor as con on con.id=c.id_consumidor order by con.nombre;
/**
┌────┬─────────┬────────────┬───────────────┬──────────────────┬────┬────────┬───────────┬───────────┬─────────┬───────────┐
│ id │  total  │   fecha    │ id_consumidor │ id_suministrador │ id │ nombre │ apellido1 │ apellido2 │ ciudad  │ categoria │
├────┼─────────┼────────────┼───────────────┼──────────────────┼────┼────────┼───────────┼───────────┼─────────┼───────────┤
│ 2  │ 270.65  │ 2019-09-10 │ 1             │ 5                │ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │
│ 15 │ 370.85  │ 2022-03-11 │ 1             │ 5                │ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │
│ 16 │ 2389.23 │ 2022-03-11 │ 1             │ 5                │ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │
│ 3  │ 65.26   │ 2020-10-05 │ 2             │ 1                │ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │
│ 7  │ 5760.0  │ 2018-09-10 │ 2             │ 1                │ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │
│ 12 │ 3045.6  │ 2020-04-25 │ 2             │ 1                │ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │
│ 11 │ 75.29   │ 2019-08-17 │ 3             │ 7                │ 3  │ Adolfo │ Rubio     │ Flores    │ Sevilla │           │
│ 8  │ 1983.43 │ 2020-10-10 │ 4             │ 6                │ 4  │ Adrián │ Suárez    │           │ Jaén    │ 300       │
│ 1  │ 150.5   │ 2020-10-05 │ 5             │ 2                │ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │
│ 5  │ 948.5   │ 2020-09-10 │ 5             │ 2                │ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │
│ 13 │ 545.75  │ 2022-01-25 │ 6             │ 1                │ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │
│ 14 │ 145.82  │ 2020-02-02 │ 6             │ 1                │ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │
│ 4  │ 110.5   │ 2019-08-17 │ 8             │ 3                │ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │
│ 9  │ 2480.4  │ 2019-10-10 │ 8             │ 3                │ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │
│ 10 │ 250.45  │ 2018-06-27 │ 8             │ 2                │ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │
│ 6  │ 2400.6  │ 2019-07-27 │ 7             │ 1                │ 7  │ Pilar  │ Ruiz      │           │ Sevilla │ 300       │
└────┴─────────┴────────────┴───────────────┴──────────────────┴────┴────────┴───────────┴───────────┴─────────┴───────────┘
**/

-- 3. Devuelve un listado que muestre todos las compras en los que ha participado un suministrador.
-- El resultado debe mostrar todos los datos de las compras y de los suministradores.
-- El listado debe mostrar los datos de los suministradores ordenados alfabéticamente.
select s.*, c.* from suministrador as s join compra as c on s.id=c.id_suministrador order by s.nombre;
/**
┌────┬─────────┬───────────┬───────────┬───────────┬────┬─────────┬────────────┬───────────────┬──────────────────┐
│ id │ nombre  │ apellido1 │ apellido2 │ categoria │ id │  total  │   fecha    │ id_consumidor │ id_suministrador │
├────┼─────────┼───────────┼───────────┼───────────┼────┼─────────┼────────────┼───────────────┼──────────────────┤
│ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │ 2  │ 270.65  │ 2019-09-10 │ 1             │ 5                │
│ 7  │ Antonio │ Vega      │ Hernández │ 0.11      │ 11 │ 75.29   │ 2019-08-17 │ 3             │ 7                │
│ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │ 15 │ 370.85  │ 2022-03-11 │ 1             │ 5                │
│ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │ 16 │ 2389.23 │ 2022-03-11 │ 1             │ 5                │
│ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │ 3  │ 65.26   │ 2020-10-05 │ 2             │ 1                │
│ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │ 6  │ 2400.6  │ 2019-07-27 │ 7             │ 1                │
│ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │ 7  │ 5760.0  │ 2018-09-10 │ 2             │ 1                │
│ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │ 12 │ 3045.6  │ 2020-04-25 │ 2             │ 1                │
│ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │ 13 │ 545.75  │ 2022-01-25 │ 6             │ 1                │
│ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │ 14 │ 145.82  │ 2020-02-02 │ 6             │ 1                │
│ 3  │ Diego   │ Flores    │ Salas     │ 0.11      │ 4  │ 110.5   │ 2019-08-17 │ 8             │ 3                │
│ 3  │ Diego   │ Flores    │ Salas     │ 0.11      │ 9  │ 2480.4  │ 2019-10-10 │ 8             │ 3                │
│ 2  │ Juan    │ Gómez     │ López     │ 0.13      │ 1  │ 150.5   │ 2020-10-05 │ 5             │ 2                │
│ 2  │ Juan    │ Gómez     │ López     │ 0.13      │ 5  │ 948.5   │ 2020-09-10 │ 5             │ 2                │
│ 2  │ Juan    │ Gómez     │ López     │ 0.13      │ 10 │ 250.45  │ 2018-06-27 │ 8             │ 2                │
│ 6  │ Manuel  │ Domínguez │ Hernández │ 0.13      │ 8  │ 1983.43 │ 2020-10-10 │ 4             │ 6                │
└────┴─────────┴───────────┴───────────┴───────────┴────┴─────────┴────────────┴───────────────┴──────────────────┘

**/

-- 4. Devuelve un listado que muestre todos los consumidores, con todos las compras que han realizado 
-- y con los datos de los suministradores asociados a cada compra.
select con.* , c.* , s.* from compra as c join consumidor as con on con.id=c.id_consumidor join suministrador as s on s.id=c.id_suministrador;
/**
┌────┬────────┬───────────┬───────────┬─────────┬───────────┬────┬─────────┬────────────┬───────────────┬──────────────────┬────┬─────────┬───────────┬───────────┬───────────┐
│ id │ nombre │ apellido1 │ apellido2 │ ciudad  │ categoria │ id │  total  │   fecha    │ id_consumidor │ id_suministrador │ id │ nombre  │ apellido1 │ apellido2 │ categoria │
├────┼────────┼───────────┼───────────┼─────────┼───────────┼────┼─────────┼────────────┼───────────────┼──────────────────┼────┼─────────┼───────────┼───────────┼───────────┤
│ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │ 1  │ 150.5   │ 2020-10-05 │ 5             │ 2                │ 2  │ Juan    │ Gómez     │ López     │ 0.13      │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 2  │ 270.65  │ 2019-09-10 │ 1             │ 5                │ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 3  │ 65.26   │ 2020-10-05 │ 2             │ 1                │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 4  │ 110.5   │ 2019-08-17 │ 8             │ 3                │ 3  │ Diego   │ Flores    │ Salas     │ 0.11      │
│ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │ 5  │ 948.5   │ 2020-09-10 │ 5             │ 2                │ 2  │ Juan    │ Gómez     │ López     │ 0.13      │
│ 7  │ Pilar  │ Ruiz      │           │ Sevilla │ 300       │ 6  │ 2400.6  │ 2019-07-27 │ 7             │ 1                │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 7  │ 5760.0  │ 2018-09-10 │ 2             │ 1                │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 4  │ Adrián │ Suárez    │           │ Jaén    │ 300       │ 8  │ 1983.43 │ 2020-10-10 │ 4             │ 6                │ 6  │ Manuel  │ Domínguez │ Hernández │ 0.13      │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 9  │ 2480.4  │ 2019-10-10 │ 8             │ 3                │ 3  │ Diego   │ Flores    │ Salas     │ 0.11      │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 10 │ 250.45  │ 2018-06-27 │ 8             │ 2                │ 2  │ Juan    │ Gómez     │ López     │ 0.13      │
│ 3  │ Adolfo │ Rubio     │ Flores    │ Sevilla │           │ 11 │ 75.29   │ 2019-08-17 │ 3             │ 7                │ 7  │ Antonio │ Vega      │ Hernández │ 0.11      │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 12 │ 3045.6  │ 2020-04-25 │ 2             │ 1                │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │ 13 │ 545.75  │ 2022-01-25 │ 6             │ 1                │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │ 14 │ 145.82  │ 2020-02-02 │ 6             │ 1                │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 15 │ 370.85  │ 2022-03-11 │ 1             │ 5                │ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 16 │ 2389.23 │ 2022-03-11 │ 1             │ 5                │ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │
└────┴────────┴───────────┴───────────┴─────────┴───────────┴────┴─────────┴────────────┴───────────────┴──────────────────┴────┴─────────┴───────────┴───────────┴───────────┘

**/
-- 5. Devuelve un listado de todos los consumidores que realizaron un compra durante el año 2020,
-- cuya cantidad esté entre 300 € y 1000 €.
select con.* from consumidor as con join compra as c on con.id=c.id_consumidor where c.fecha regexp '^2020-' and c.total BETWEEN 300 and 1000;
/**
┌────┬────────┬───────────┬───────────┬─────────┬───────────┐
│ id │ nombre │ apellido1 │ apellido2 │ ciudad  │ categoria │
├────┼────────┼───────────┼───────────┼─────────┼───────────┤
│ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │
└────┴────────┴───────────┴───────────┴─────────┴───────────┘
**/
-- 6. Devuelve el nombre y los apellidos de todos los suministradores que ha participado en algún compra realizado por María Santana Moreno.
select distinct s.nombre, s.apellido1, s.apellido2 from suministrador as s join compra as c on c.id_suministrador=s.id join consumidor as con on con.id=c.id_consumidor where con.nombre='María' and con.apellido1='Santana' and con.apellido2='Moreno';
/**
┌────────┬───────────┬───────────┐
│ nombre │ apellido1 │ apellido2 │
├────────┼───────────┼───────────┤
│ Daniel │ Sáez      │ Vega      │
└────────┴───────────┴───────────┘
**/
-- 7. Devuelve el nombre de todos los consumidores que han realizado algún compra con el suministrador Daniel Sáez Vega.
select distinct con.nombre, con.apellido1, con.apellido2 from suministrador as s join compra as c on c.id_suministrador=s.id join consumidor as con on con.id=c.id_consumidor where s.nombre='Daniel' and s.apellido1='Sáez' and s.apellido2='Vega';
/**
┌────────┬───────────┬───────────┐
│ nombre │ apellido1 │ apellido2 │
├────────┼───────────┼───────────┤
│ Adela  │ Salas     │ Díaz      │
│ Pilar  │ Ruiz      │           │
│ María  │ Santana   │ Moreno    │
└────────┴───────────┴───────────┘

**/

-- ---------------------------
-- Consultas resumen (funciones)
-- -----------------------------------------------
-- 0,2 puntos la correcta. (1-6) 1,2 puntos
-- 0,25 puntos la correcta. (7-10) 1 punto.
-- Total = 2,2 puntos
-- -----------------------------------------------

-- 1. Calcula la cantidad media de todos las compras que aparecen en la tabla compra.
select avg(total) as 'Media total' from compra ;
/**
┌─────────────┐
│ Media total │
├─────────────┤
│ 1312.051875 │
└─────────────┘

**/
-- 2. Calcula el número total de suministradores distintos que aparecen en la tabla compra.

-- 3. Calcula el número total de consumidores que aparecen en la tabla consumidor.
select count(id) as 'Número deconsumidores' from consumidor;
/**
┌───────────────────────┐
│ Número deconsumidores │
├───────────────────────┤
│ 10                    │
└───────────────────────┘

**/
-- 4. Calcula cuál es la mayor cantidad que aparece en la tabla compra.
select max(total) as 'Total máximo' from compra;
/**
┌──────────────┐
│ Total máximo │
├──────────────┤
│ 5760.0       │
└──────────────┘

**/

-- 5. Calcula cuál es el valor máximo de categoría para cada una de las ciudades que aparece en la tabla consumidor.
select max(categoria) as 'Categoría máxima', ciudad from consumidor group by ciudad;
/**
┌──────────────────┬─────────┐
│ Categoría máxima │ ciudad  │
├──────────────────┼─────────┤
│ 200              │ Almería │
│ 100              │ Cádiz   │
│ 225              │ Granada │
│ 200              │ Huelva  │
│ 300              │ Jaén    │
│ 300              │ Sevilla │
└──────────────────┴─────────┘
**/

-- 6. Calcula cuál es el máximo valor de las compras realizadas durante el mismo día para cada uno de los consumidores.
-- Es decir, el mismo consumidor puede haber realizado varios compras de diferentes cantidades el mismo día.
-- Se pide que se calcule cuál es el compra de máximo valor para cada uno de los días en los que un consumidor ha realizado un compra.
-- Muestra el identificador del consumidor, nombre, apellidos, la fecha y el valor de la cantidad.
select con.id, con.nombre, con.apellido1, con.apellido2, c.fecha, max(c.total) as 'Total máximo' from compra as c join consumidor as con on con.id=c.id_consumidor group by c.fecha;
/**
┌────┬────────┬───────────┬───────────┬────────────┬──────────────┐
│ id │ nombre │ apellido1 │ apellido2 │   fecha    │ Total máximo │
├────┼────────┼───────────┼───────────┼────────────┼──────────────┤
│ 8  │ Pepe   │ Ruiz      │ Santana   │ 2018-06-27 │ 250.45       │
│ 2  │ Adela  │ Salas     │ Díaz      │ 2018-09-10 │ 5760.0       │
│ 7  │ Pilar  │ Ruiz      │           │ 2019-07-27 │ 2400.6       │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ 2019-08-17 │ 110.5        │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ 2019-09-10 │ 270.65       │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ 2019-10-10 │ 2480.4       │
│ 6  │ María  │ Santana   │ Moreno    │ 2020-02-02 │ 145.82       │
│ 2  │ Adela  │ Salas     │ Díaz      │ 2020-04-25 │ 3045.6       │
│ 5  │ Marcos │ Loyola    │ Méndez    │ 2020-09-10 │ 948.5        │
│ 5  │ Marcos │ Loyola    │ Méndez    │ 2020-10-05 │ 150.5        │
│ 4  │ Adrián │ Suárez    │           │ 2020-10-10 │ 1983.43      │
│ 6  │ María  │ Santana   │ Moreno    │ 2022-01-25 │ 545.75       │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ 2022-03-11 │ 2389.23      │
└────┴────────┴───────────┴───────────┴────────────┴──────────────┘

**/
-- 7. Calcula cuál es el máximo valor de las compras realizadas durante el mismo día para cada uno de los consumidores,
-- teniendo en cuenta que sólo queremos mostrar aquellas compras que superen la cantidad de 2000 €.
select con.id, con.nombre, con.apellido1, con.apellido2, c.fecha, max(c.total) as 'Total máximo' from compra as c join consumidor as con on con.id=c.id_consumidor where c.total>2000 group by c.fecha;
/**
┌────┬────────┬───────────┬───────────┬────────────┬──────────────┐
│ id │ nombre │ apellido1 │ apellido2 │   fecha    │ Total máximo │
├────┼────────┼───────────┼───────────┼────────────┼──────────────┤
│ 2  │ Adela  │ Salas     │ Díaz      │ 2018-09-10 │ 5760.0       │
│ 7  │ Pilar  │ Ruiz      │           │ 2019-07-27 │ 2400.6       │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ 2019-10-10 │ 2480.4       │
│ 2  │ Adela  │ Salas     │ Díaz      │ 2020-04-25 │ 3045.6       │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ 2022-03-11 │ 2389.23      │
└────┴────────┴───────────┴───────────┴────────────┴──────────────┘

**/
-- 8. Calcula el máximo valor de las compras realizadas para cada uno de los suministradores durante la fecha 2020-08-17.
-- Muestra el identificador del suministrador, nombre, apellidos y total.
select s.id, s.nombre, s.apellido1, s.apellido2, max(c.total) as 'Total máximo' from compra as c join suministrador as s on s.id=c.id_suministrador where c.fecha='2020-0817';
/**
No retorna ningún valor
**/

-- 9. Devuelve un listado con el identificador de consumidor, nombre y apellidos y el número total de compras que ha realizado cada uno de consumidores.
-- Tenga en cuenta que pueden existir consumidores que no han realizado ninguna compra.
-- Estos consumidores también deben aparecer en el listado indicando que el número de compras realizadas es 0.
select con.id, con.nombre, con.apellido1, con.apellido2, count(c.id_consumidor) as 'Número de compras' from compra as c join consumidor as con on con.id=c.id_consumidor group by c.id_consumidor;
/**
┌────┬────────┬───────────┬───────────┬───────────────────┐
│ id │ nombre │ apellido1 │ apellido2 │ Número de compras │
├────┼────────┼───────────┼───────────┼───────────────────┤
│ 1  │ Aarón  │ Rivero    │ Gómez     │ 3                 │
│ 2  │ Adela  │ Salas     │ Díaz      │ 3                 │
│ 3  │ Adolfo │ Rubio     │ Flores    │ 1                 │
│ 4  │ Adrián │ Suárez    │           │ 1                 │
│ 5  │ Marcos │ Loyola    │ Méndez    │ 2                 │
│ 6  │ María  │ Santana   │ Moreno    │ 2                 │
│ 7  │ Pilar  │ Ruiz      │           │ 1                 │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ 3                 │
└────┴────────┴───────────┴───────────┴───────────────────┘
**/
-- 10. Devuelve un listado con el identificador de consumidor, nombre y apellidos y el número total de compras que ha realizado cada uno de consumidores durante el año 2020.
select con.id, con.nombre, con.apellido1, con.apellido2, count(c.id_consumidor) as 'Número de compras' from compra as c join consumidor as con on con.id=c.id_consumidor where c.fecha regexp '^2020-' group by c.id_consumidor;
/**
┌────┬────────┬───────────┬───────────┬───────────────────┐
│ id │ nombre │ apellido1 │ apellido2 │ Número de compras │
├────┼────────┼───────────┼───────────┼───────────────────┤
│ 2  │ Adela  │ Salas     │ Díaz      │ 2                 │
│ 4  │ Adrián │ Suárez    │           │ 1                 │
│ 5  │ Marcos │ Loyola    │ Méndez    │ 2                 │
│ 6  │ María  │ Santana   │ Moreno    │ 1                 │
└────┴────────┴───────────┴───────────┴───────────────────┘

**/
-- ---------------------
-- Subconsultas
-- -----------------------------------------------
-- 0,2 puntos la correcta (1-5).
-- 0,3 puntos la correcta (6-9).
-- Total = 2,2 puntos
-- -----------------------------------------------

--- Con operadores básicos de comparación

-- 1. Devuelve un listado con todos las compras que ha realizado Adela Salas Díaz. (Sin utilizar INNER JOIN).
select * from compra where id_consumidor=(select id from consumidor where nombre='Adela' and apellido1='Salas' and apellido2='Díaz');
/**
┌────┬────────┬────────────┬───────────────┬──────────────────┐
│ id │ total  │   fecha    │ id_consumidor │ id_suministrador │
├────┼────────┼────────────┼───────────────┼──────────────────┤
│ 3  │ 65.26  │ 2020-10-05 │ 2             │ 1                │
│ 7  │ 5760.0 │ 2018-09-10 │ 2             │ 1                │
│ 12 │ 3045.6 │ 2020-04-25 │ 2             │ 1                │
└────┴────────┴────────────┴───────────────┴──────────────────┘

**/
-- 2. Devuelve la fecha y la cantidad del compra de menor valor realizado por el cliente Pepe Ruiz Santana.
select fecha, min(total) as 'Total mínimo' from compra where id_consumidor=(select id from consumidor where nombre='Pepe' and apellido1='Ruiz' and apellido2='Santana');
/**
┌────────────┬──────────────┐
│   fecha    │ Total mínimo │
├────────────┼──────────────┤
│ 2019-08-17 │ 110.5        │
└────────────┴──────────────┘

**/
-- 3. Devuelve el número de compras en los que ha participado el suministrador Daniel Sáez Vega. (Sin utilizar INNER JOIN)
select count(id_suministrador) as 'Número de compras' from compra where id_suministrador=(select id from suministrador WHERE nombre='Daniel' and apellido1='Sáez' and apellido2='Vega');
/**
┌───────────────────┐
│ Número de compras │
├───────────────────┤
│ 6                 │
└───────────────────┘

**/
-- 4. Devuelve los datos del consumidor que realizó el compra más caro en el año 2021. (Sin utilizar INNER JOIN)

-- 5. Devuelve un listado con los datos de los consumidores y las compras, de todos los consumidores que han realizado un compra durante el año 2020 con un valor mayor o igual al valor medio de las compras realizadas durante ese mismo año.
select * from consumidor as con join compra as c on c.id_consumidor=con.id where c.fecha regexp '^2020-' and c.total>(select avg(total) from compra where fecha regexp '^2020-');
/**
┌────┬────────┬───────────┬───────────┬─────────┬───────────┬────┬─────────┬────────────┬───────────────┬──────────────────┐
│ id │ nombre │ apellido1 │ apellido2 │ ciudad  │ categoria │ id │  total  │   fecha    │ id_consumidor │ id_suministrador │
├────┼────────┼───────────┼───────────┼─────────┼───────────┼────┼─────────┼────────────┼───────────────┼──────────────────┤
│ 4  │ Adrián │ Suárez    │           │ Jaén    │ 300       │ 8  │ 1983.43 │ 2020-10-10 │ 4             │ 6                │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 12 │ 3045.6  │ 2020-04-25 │ 2             │ 1                │
└────┴────────┴───────────┴───────────┴─────────┴───────────┴────┴─────────┴────────────┴───────────────┴──────────────────┘

**/
-- 6. Devuelve un listado de los consumidores que no han realizado ningún compra. (Utilizando IN o NOT IN).
select * from consumidor where id not in (select id_consumidor FROM compra);
/**
┌────┬───────────┬───────────┬───────────┬─────────┬───────────┐
│ id │  nombre   │ apellido1 │ apellido2 │ ciudad  │ categoria │
├────┼───────────┼───────────┼───────────┼─────────┼───────────┤
│ 9  │ Guillermo │ López     │ Gómez     │ Granada │ 225       │
│ 10 │ Daniel    │ Santana   │ Loyola    │ Sevilla │ 125       │
└────┴───────────┴───────────┴───────────┴─────────┴───────────┘

**/
-- 7. Devuelve un listado de los suministradores que no han realizado ningún compra. (Utilizando IN o NOT IN).
select * from suministrador where id not in (select id_suministrador FROM compra);
/**
┌────┬─────────┬───────────┬───────────┬───────────┐
│ id │ nombre  │ apellido1 │ apellido2 │ categoria │
├────┼─────────┼───────────┼───────────┼───────────┤
│ 4  │ Marta   │ Herrera   │ Gil       │ 0.14      │
│ 8  │ Alfredo │ Ruiz      │ Flores    │ 0.05      │
└────┴─────────┴───────────┴───────────┴───────────┘
**/
-- 8. Devuelve un listado de los consumidores que no han realizado ningún compra. (Utilizando EXISTS o NOT EXISTS).
-- select * from consumidor where not exist (select distinct id_consumidor from compra);
/**

**/
-- 9. Devuelve un listado de los suministradores que no han realizado ningún compra. (Utilizando EXISTS o NOT EXISTS).