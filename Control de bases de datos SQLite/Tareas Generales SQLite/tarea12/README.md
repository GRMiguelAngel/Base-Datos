# Tarea 12: Consultas

## Consultas sobre una tabla

1. Devuelve un listado con todos los pedidos que se han realizado. Los pedidos deben estar ordenados por la fecha de realización, mostrando en primer lugar los pedidos más recientes.
```sql
select * from pedido order by fecha desc;
```
| id |  total  |   fecha    | id_cliente | id_comercial |
|----|---------|------------|------------|--------------|
| 15 | 370.85  | 2019-03-11 | 1          | 5            |
| 16 | 2389.23 | 2019-03-11 | 1          | 5            |
| 13 | 545.75  | 2019-01-25 | 6          | 1            |
| 8  | 1983.43 | 2017-10-10 | 4          | 6            |
| 1  | 150.5   | 2017-10-05 | 5          | 2            |
| 3  | 65.26   | 2017-10-05 | 2          | 1            |
| 5  | 948.5   | 2017-09-10 | 5          | 2            |
| 12 | 3045.6  | 2017-04-25 | 2          | 1            |
| 14 | 145.82  | 2017-02-02 | 6          | 1            |
| 9  | 2480.4  | 2016-10-10 | 8          | 3            |
| 2  | 270.65  | 2016-09-10 | 1          | 5            |
| 4  | 110.5   | 2016-08-17 | 8          | 3            |
| 11 | 75.29   | 2016-08-17 | 3          | 7            |
| 6  | 2400.6  | 2016-07-27 | 7          | 1            |
| 7  | 5760.0  | 2015-09-10 | 2          | 1            |
| 10 | 250.45  | 2015-06-27 | 8          | 2            |

2. Devuelve todos los datos de los dos pedidos de mayor valor.
```sql
select total from pedido order by total desc limit 2;
```
| total  |
|--------|
| 5760.0 |
| 3045.6 |

3. Devuelve un listado con los identificadores de los clientes que han realizado algún pedido. Tenga en cuenta que no debe mostrar identificadores que estén repetidos.
```sql
select distinct id_cliente from pedido;
```
| id_cliente |
|------------|
| 5          |
| 1          |
| 2          |
| 8          |
| 7          |
| 4          |
| 3          |
| 6          |

4. Devuelve un listado de todos los pedidos que se realizaron durante el año 2017, cuya cantidad total sea superior a 500€.
```sql
select * from pedido where fecha regexp '2017-' and total>500;
```
| id |  total  |   fecha    | id_cliente | id_comercial |
|----|---------|------------|------------|--------------|
| 5  | 948.5   | 2017-09-10 | 5          | 2            |
| 8  | 1983.43 | 2017-10-10 | 4          | 6            |
| 12 | 3045.6  | 2017-04-25 | 2          | 1            |

5. Devuelve un listado con el nombre y los apellidos de los comerciales que tienen una comisión entre 0.05 y 0.11.
```sql
select * from comercial where categoria between 0.05 and 0.11;
```
| id | nombre  | apellido1 | apellido2 | categoria |
|----|---------|-----------|-----------|-----------|
| 3  | Diego   | Flores    | Salas     | 0.11      |
| 7  | Antonio | Vega      | Hernández | 0.11      |
| 8  | Alfredo | Ruiz      | Flores    | 0.05      |

6. Devuelve el valor de la comisión de mayor valor que existe en la tabla comercial.
```sql
select max(categoria) as 'Máx_valor categoría' from comercial;
```
| Máx_valor categoría |
|---------------------|
| 0.15                |

7. Devuelve el identificador, nombre y primer apellido de aquellos clientes cuyo segundo apellido no es NULL. El listado deberá estar ordenado alfabéticamente por apellidos y nombre.
```sql
select id, nombre, apellido1 from cliente where apellido2 is null order by nombre asc, apellido1 asc;
```
| id | nombre | apellido1 |
|----|--------|-----------|
| 4  | Adrián | Suárez    |
| 7  | Pilar  | Ruiz      |

8. Devuelve un listado de los nombres de los clientes que empiezan por A y terminan por n y también los nombres que empiezan por P. El listado deberá estar ordenado alfabéticamente.
```sql
select nombre from cliente where nombre regexp '^A.*n$' or nombre regexp '^P' order by nombre;
```
| nombre |
|--------|
| Aarón  |
| Adrián |
| Pepe   |
| Pilar  |

9. Devuelve un listado de los nombres de los clientes que no empiezan por A. El listado deberá estar ordenado alfabéticamente.
```sql
select nombre from cliente where not nombre regexp '^A' order by nombre;
```
|  nombre   |
|-----------|
| Daniel    |
| Guillermo |
| Marcos    |
| María     |
| Pepe      |
| Pilar     |
10. Devuelve un listado con los nombres de los comerciales que terminan por el o o. Tenga en cuenta que se deberán eliminar los nombres repetidos.
```sql
select nombre from comercial where nombre regexp 'o$' order by nombre;
```
| nombre  |
|---------|
| Alfredo |
| Antonio |
| Antonio |
| Diego   |

## Consultas multitabla

> [!Nota]
> utilizando las cláusulas INNER JOIN.

1. Devuelve un listado con el identificador, nombre y los apellidos de todos los clientes que han realizado algún pedido. El listado debe estar ordenado alfabéticamente y se deben eliminar los elementos repetidos.
```sql
select distinct cliente.id, cliente.nombre, cliente.apellido1, cliente.apellido2 from cliente join pedido on cliente.id=pedido.id_cliente;
```
| id | nombre | apellido1 | apellido2 |
|----|--------|-----------|-----------|
| 5  | Marcos | Loyola    | Méndez    |
| 1  | Aarón  | Rivero    | Gómez     |
| 2  | Adela  | Salas     | Díaz      |
| 8  | Pepe   | Ruiz      | Santana   |
| 7  | Pilar  | Ruiz      |           |
| 4  | Adrián | Suárez    |           |
| 3  | Adolfo | Rubio     | Flores    |
| 6  | María  | Santana   | Moreno    |

2. Devuelve un listado que muestre todos los pedidos que ha realizado cada cliente. El resultado debe mostrar todos los datos de los pedidos y del cliente. El listado debe mostrar los datos de los clientes ordenados alfabéticamente.
```sql
select * from cliente join pedido on pedido.id_cliente=cliente.id order by cliente.nombre, cliente.apellido1, cliente.apellido2;
```
| id | nombre | apellido1 | apellido2 | ciudad  | categoria | id |  total  |   fecha    | id_cliente | id_comercial |
|----|--------|-----------|-----------|---------|-----------|----|---------|------------|------------|--------------|
| 1  | Aarón  | Rivero    | Gómez     | Almería | 100       | 2  | 270.65  | 2016-09-10 | 1          | 5            |
| 1  | Aarón  | Rivero    | Gómez     | Almería | 100       | 15 | 370.85  | 2019-03-11 | 1          | 5            |
| 1  | Aarón  | Rivero    | Gómez     | Almería | 100       | 16 | 2389.23 | 2019-03-11 | 1          | 5            |
| 2  | Adela  | Salas     | Díaz      | Granada | 200       | 3  | 65.26   | 2017-10-05 | 2          | 1            |
| 2  | Adela  | Salas     | Díaz      | Granada | 200       | 7  | 5760.0  | 2015-09-10 | 2          | 1            |
| 2  | Adela  | Salas     | Díaz      | Granada | 200       | 12 | 3045.6  | 2017-04-25 | 2          | 1            |
| 3  | Adolfo | Rubio     | Flores    | Sevilla |           | 11 | 75.29   | 2016-08-17 | 3          | 7            |
| 4  | Adrián | Suárez    |           | Jaén    | 300       | 8  | 1983.43 | 2017-10-10 | 4          | 6            |
| 5  | Marcos | Loyola    | Méndez    | Almería | 200       | 1  | 150.5   | 2017-10-05 | 5          | 2            |
| 5  | Marcos | Loyola    | Méndez    | Almería | 200       | 5  | 948.5   | 2017-09-10 | 5          | 2            |
| 6  | María  | Santana   | Moreno    | Cádiz   | 100       | 13 | 545.75  | 2019-01-25 | 6          | 1            |
| 6  | María  | Santana   | Moreno    | Cádiz   | 100       | 14 | 145.82  | 2017-02-02 | 6          | 1            |
| 8  | Pepe   | Ruiz      | Santana   | Huelva  | 200       | 4  | 110.5   | 2016-08-17 | 8          | 3            |
| 8  | Pepe   | Ruiz      | Santana   | Huelva  | 200       | 9  | 2480.4  | 2016-10-10 | 8          | 3            |
| 8  | Pepe   | Ruiz      | Santana   | Huelva  | 200       | 10 | 250.45  | 2015-06-27 | 8          | 2            |
| 7  | Pilar  | Ruiz      |           | Sevilla | 300       | 6  | 2400.6  | 2016-07-27 | 7          | 1            |

3. Devuelve un listado que muestre todos los pedidos en los que ha participado un comercial. El resultado debe mostrar todos los datos de los pedidos y de los comerciales. El listado debe mostrar los datos de los comerciales ordenados alfabéticamente.
```sql
select * from comercial join pedido on pedido.id_comercial=comercial.id order by comercial.nombre, comercial.apellido1, comercial.apellido2;
```
| id | nombre  | apellido1 | apellido2 | categoria | id |  total  |   fecha    | id_cliente | id_comercial |
|----|---------|-----------|-----------|-----------|----|---------|------------|------------|--------------|
| 5  | Antonio | Carretero | Ortega    | 0.12      | 2  | 270.65  | 2016-09-10 | 1          | 5            |
| 5  | Antonio | Carretero | Ortega    | 0.12      | 15 | 370.85  | 2019-03-11 | 1          | 5            |
| 5  | Antonio | Carretero | Ortega    | 0.12      | 16 | 2389.23 | 2019-03-11 | 1          | 5            |
| 7  | Antonio | Vega      | Hernández | 0.11      | 11 | 75.29   | 2016-08-17 | 3          | 7            |
| 1  | Daniel  | Sáez      | Vega      | 0.15      | 3  | 65.26   | 2017-10-05 | 2          | 1            |
| 1  | Daniel  | Sáez      | Vega      | 0.15      | 6  | 2400.6  | 2016-07-27 | 7          | 1            |
| 1  | Daniel  | Sáez      | Vega      | 0.15      | 7  | 5760.0  | 2015-09-10 | 2          | 1            |
| 1  | Daniel  | Sáez      | Vega      | 0.15      | 12 | 3045.6  | 2017-04-25 | 2          | 1            |
| 1  | Daniel  | Sáez      | Vega      | 0.15      | 13 | 545.75  | 2019-01-25 | 6          | 1            |
| 1  | Daniel  | Sáez      | Vega      | 0.15      | 14 | 145.82  | 2017-02-02 | 6          | 1            |
| 3  | Diego   | Flores    | Salas     | 0.11      | 4  | 110.5   | 2016-08-17 | 8          | 3            |
| 3  | Diego   | Flores    | Salas     | 0.11      | 9  | 2480.4  | 2016-10-10 | 8          | 3            |
| 2  | Juan    | Gómez     | López     | 0.13      | 1  | 150.5   | 2017-10-05 | 5          | 2            |
| 2  | Juan    | Gómez     | López     | 0.13      | 5  | 948.5   | 2017-09-10 | 5          | 2            |
| 2  | Juan    | Gómez     | López     | 0.13      | 10 | 250.45  | 2015-06-27 | 8          | 2            |
| 6  | Manuel  | Domínguez | Hernández | 0.13      | 8  | 1983.43 | 2017-10-10 | 4          | 6            |

4. Devuelve un listado que muestre todos los clientes, con todos los pedidos que han realizado y con los datos de los comerciales asociados a cada pedido.
```sql
select * from cliente join pedido on cliente.id=pedido.id_cliente join comercial on comercial.id=pedido.id_comercial;
```
| id | nombre | apellido1 | apellido2 | ciudad  | categoria | id |  total  |   fecha    | id_cliente | id_comercial | id | nombre  | apellido1 | apellido2 | categoria |
|----|--------|-----------|-----------|---------|-----------|----|---------|------------|------------|--------------|----|---------|-----------|-----------|-----------|
| 5  | Marcos | Loyola    | Méndez    | Almería | 200       | 1  | 150.5   | 2017-10-05 | 5          | 2            | 2  | Juan    | Gómez     | López     | 0.13      |
| 1  | Aarón  | Rivero    | Gómez     | Almería | 100       | 2  | 270.65  | 2016-09-10 | 1          | 5            | 5  | Antonio | Carretero | Ortega    | 0.12      |
| 2  | Adela  | Salas     | Díaz      | Granada | 200       | 3  | 65.26   | 2017-10-05 | 2          | 1            | 1  | Daniel  | Sáez      | Vega      | 0.15      |
| 8  | Pepe   | Ruiz      | Santana   | Huelva  | 200       | 4  | 110.5   | 2016-08-17 | 8          | 3            | 3  | Diego   | Flores    | Salas     | 0.11      |
| 5  | Marcos | Loyola    | Méndez    | Almería | 200       | 5  | 948.5   | 2017-09-10 | 5          | 2            | 2  | Juan    | Gómez     | López     | 0.13      |
| 7  | Pilar  | Ruiz      |           | Sevilla | 300       | 6  | 2400.6  | 2016-07-27 | 7          | 1            | 1  | Daniel  | Sáez      | Vega      | 0.15      |
| 2  | Adela  | Salas     | Díaz      | Granada | 200       | 7  | 5760.0  | 2015-09-10 | 2          | 1            | 1  | Daniel  | Sáez      | Vega      | 0.15      |
| 4  | Adrián | Suárez    |           | Jaén    | 300       | 8  | 1983.43 | 2017-10-10 | 4          | 6            | 6  | Manuel  | Domínguez | Hernández | 0.13      |
| 8  | Pepe   | Ruiz      | Santana   | Huelva  | 200       | 9  | 2480.4  | 2016-10-10 | 8          | 3            | 3  | Diego   | Flores    | Salas     | 0.11      |
| 8  | Pepe   | Ruiz      | Santana   | Huelva  | 200       | 10 | 250.45  | 2015-06-27 | 8          | 2            | 2  | Juan    | Gómez     | López     | 0.13      |
| 3  | Adolfo | Rubio     | Flores    | Sevilla |           | 11 | 75.29   | 2016-08-17 | 3          | 7            | 7  | Antonio | Vega      | Hernández | 0.11      |
| 2  | Adela  | Salas     | Díaz      | Granada | 200       | 12 | 3045.6  | 2017-04-25 | 2          | 1            | 1  | Daniel  | Sáez      | Vega      | 0.15      |
| 6  | María  | Santana   | Moreno    | Cádiz   | 100       | 13 | 545.75  | 2019-01-25 | 6          | 1            | 1  | Daniel  | Sáez      | Vega      | 0.15      |
| 6  | María  | Santana   | Moreno    | Cádiz   | 100       | 14 | 145.82  | 2017-02-02 | 6          | 1            | 1  | Daniel  | Sáez      | Vega      | 0.15      |
| 1  | Aarón  | Rivero    | Gómez     | Almería | 100       | 15 | 370.85  | 2019-03-11 | 1          | 5            | 5  | Antonio | Carretero | Ortega    | 0.12      |
| 1  | Aarón  | Rivero    | Gómez     | Almería | 100       | 16 | 2389.23 | 2019-03-11 | 1          | 5            | 5  | Antonio | Carretero | Ortega    | 0.12      |

5. Devuelve un listado de todos los clientes que realizaron un pedido durante el año 2017, cuya cantidad esté entre 300 € y 1000 €.
```sql
select cliente.* from cliente join pedido on cliente.id=pedido.id_cliente and pedido.fecha regexp '^2017-' and pedido.total between 300 and 1000;
```
| id | nombre | apellido1 | apellido2 | ciudad  | categoria |
|----|--------|-----------|-----------|---------|-----------|
| 5  | Marcos | Loyola    | Méndez    | Almería | 200       |

6. Devuelve el nombre y los apellidos de todos los comerciales que ha participado en algún pedido realizado por María Santana Moreno.
```sql
select distinct comercial.nombre, comercial.apellido1, comercial.apellido2 from comercial join pedido on pedido.id_comercial=comercial.id join cliente on cliente.id=pedido.id_cliente and cliente.nombre='María' and cliente.apellido1='Santana' and cliente.apellido2='Moreno';
```
| nombre | apellido1 | apellido2 |
|--------|-----------|-----------|
| Daniel | Sáez      | Vega      |

7. Devuelve el nombre de todos los clientes que han realizado algún pedido con el comercial Daniel Sáez Vega.
```sql
select distinct cliente.nombre from cliente join pedido on pedido.id_cliente=cliente.id join comercial on comercial.id=pedido.id_comercial and comercial.nombre='Daniel' and comercial.apellido1='Sáez' and comercial.apellido2='Vega';
```
| nombre |
|--------|
| Adela  |
| Pilar  |
| María  |

## Consultas resumen (Funciones)

1. Calcula la cantidad total que suman todos los pedidos que aparecen en la tabla pedido.
```sql
select sum(total) as 'Suma total' from pedido;
```
| Suma total |
|------------|
| 20992.83   |

2. Calcula la cantidad media de todos los pedidos que aparecen en la tabla pedido.
```sql
select avg(total) as 'Media total' from pedido;
```
| Media total |
|-------------|
| 1312.051875 |

3. Calcula el número total de comerciales distintos que aparecen en la tabla pedido.
```sql
select count(DISTINCT id_comercial) as 'Número de comerciales' from pedido;
```
| Número de comerciales |
|-----------------------|
| 6                     |

4. Calcula el número total de clientes que aparecen en la tabla cliente.
```sql
select count(id) as 'Número de clientes' from cliente;
```
| Número de clientes |
|--------------------|
| 10                 |

5. Calcula cuál es la mayor cantidad que aparece en la tabla pedido.
```sql
select max(total) as 'Total máximo' from pedido;
```
| Total máximo |
|--------------|
| 5760.0       |

6. Calcula cuál es la menor cantidad que aparece en la tabla pedido.
```sql
select min(total) as 'Total Mínimo' from pedido;
```
| Total Mínimo |
|--------------|
| 65.26        |

7. Calcula cuál es el valor máximo de categoría para cada una de las ciudades que aparece en la tabla cliente.
```sql
select max(categoria) as 'Categoría máxima', ciudad from cliente group by ciudad;
```
| Categoría máxima | ciudad  |
|------------------|---------|
| 200              | Almería |
| 100              | Cádiz   |
| 225              | Granada |
| 200              | Huelva  |
| 300              | Jaén    |
| 300              | Sevilla |

8. Calcula cuál es el máximo valor de los pedidos realizados durante el mismo día para cada uno de los clientes. Es decir, el mismo cliente puede haber realizado varios pedidos de diferentes cantidades el mismo día. Se pide que se calcule cuál es el pedido de máximo valor para cada uno de los días en los que un cliente ha realizado un pedido. Muestra el identificador del cliente, nombre, apellidos, la fecha y el valor de la cantidad.
```sql
select cliente.id, cliente.nombre, cliente.apellido1, cliente.apellido2, pedido.fecha, max(pedido.total) as 'Máximo pagado' from pedido join cliente on cliente.id=pedido.id_cliente group by fecha;
```
| id | nombre | apellido1 | apellido2 |   fecha    | Máximo pagado |
|----|--------|-----------|-----------|------------|---------------|
| 8  | Pepe   | Ruiz      | Santana   | 2015-06-27 | 250.45        |
| 2  | Adela  | Salas     | Díaz      | 2015-09-10 | 5760.0        |
| 7  | Pilar  | Ruiz      |           | 2016-07-27 | 2400.6        |
| 8  | Pepe   | Ruiz      | Santana   | 2016-08-17 | 110.5         |
| 1  | Aarón  | Rivero    | Gómez     | 2016-09-10 | 270.65        |
| 8  | Pepe   | Ruiz      | Santana   | 2016-10-10 | 2480.4        |
| 6  | María  | Santana   | Moreno    | 2017-02-02 | 145.82        |
| 2  | Adela  | Salas     | Díaz      | 2017-04-25 | 3045.6        |
| 5  | Marcos | Loyola    | Méndez    | 2017-09-10 | 948.5         |
| 5  | Marcos | Loyola    | Méndez    | 2017-10-05 | 150.5         |
| 4  | Adrián | Suárez    |           | 2017-10-10 | 1983.43       |
| 6  | María  | Santana   | Moreno    | 2019-01-25 | 545.75        |
| 1  | Aarón  | Rivero    | Gómez     | 2019-03-11 | 2389.23       |

9. Calcula cuál es el máximo valor de los pedidos realizados durante el mismo día para cada uno de los clientes, teniendo en cuenta que sólo queremos mostrar aquellos pedidos que superen la cantidad de 2000 €.


10. Calcula el máximo valor de los pedidos realizados para cada uno de los comerciales durante la fecha 2016-08-17. Muestra el identificador del comercial, nombre, apellidos y total.

11. Devuelve un listado con el identificador de cliente, nombre y apellidos y el número total de pedidos que ha realizado cada uno de clientes. Tenga en cuenta que pueden existir clientes que no han realizado ningún pedido. Estos clientes también deben aparecer en el listado indicando que el número de pedidos realizados es 0.

12. Devuelve un listado con el identificador de cliente, nombre y apellidos y el número total de pedidos que ha realizado cada uno de clientes durante el año 2017.

13. Devuelve un listado que muestre el identificador de cliente, nombre, primer apellido y el valor de la máxima cantidad del pedido realizado por cada uno de los clientes. El resultado debe mostrar aquellos clientes que no han realizado ningún pedido indicando que la máxima cantidad de sus pedidos realizados es 0.

14. Devuelve cuál ha sido el pedido de máximo valor que se ha realizado cada año.

15. Devuelve el número total de pedidos que se han realizado cada año.

## Subconsultas

### Con operadores básicos de comparación

1. Devuelve un listado con todos los pedidos que ha realizado Adela Salas Díaz. (Sin utilizar INNER
JOIN).

2. Devuelve el número de pedidos en los que ha participado el comercial Daniel Sáez Vega. (Sin utilizar INNER JOIN)

3. Devuelve los datos del cliente que realizó el pedido más caro en el año 2019. (Sin utilizar INNER JOIN)

4. Devuelve la fecha y la cantidad del pedido de menor valor realizado por el cliente Pepe Ruiz Santana.

5. Devuelve un listado con los datos de los clientes y los pedidos, de todos los clientes que han realizado un pedido durante el año 2017 con un valor mayor o igual al valor medio de los pedidos realizados durante ese mismo año.

### Subconsultas con IN y NOT IN

6. Devuelve un listado de los clientes que no han realizado ningún pedido. (Utilizando IN o NOT IN).

7. Devuelve un listado de los comerciales que no han realizado ningún pedido. (Utilizando IN o NOT IN).

### Subconsultas con EXISTS y NOT EXISTS

8. Devuelve un listado de los clientes que no han realizado ningún pedido. (Utilizando EXISTS o NOT
EXISTS).

9. Devuelve un listado de los comerciales que no han realizado ningún pedido. (Utilizando EXISTS o NOT EXISTS).