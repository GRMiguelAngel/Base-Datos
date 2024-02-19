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

4. Devuelve un listado de todos los pedidos que se realizaron durante el año 2017, cuya cantidad total sea superior a 500€.

5. Devuelve un listado con el nombre y los apellidos de los comerciales que tienen una comisión entre 0.05 y 0.11.

6. Devuelve el valor de la comisión de mayor valor que existe en la tabla comercial.

7. Devuelve el identificador, nombre y primer apellido de aquellos clientes cuyo segundo apellido no es NULL. El listado deberá estar ordenado alfabéticamente por apellidos y nombre.

8. Devuelve un listado de los nombres de los clientes que empiezan por A y terminan por n y también los nombres que empiezan por P. El listado deberá estar ordenado alfabéticamente.

9. Devuelve un listado de los nombres de los clientes que no empiezan por A. El listado deberá estar ordenado alfabéticamente.

10. Devuelve un listado con los nombres de los comerciales que terminan por el o o. Tenga en cuenta que se deberán eliminar los nombres repetidos.

## Consultas multitabla
> [!NOTE]
> utilizando las cláusulas INNER JOIN.

1. Devuelve un listado con el identificador, nombre y los apellidos de todos los clientes que han realizado algún pedido. El listado debe estar ordenado alfabéticamente y se deben eliminar los elementos repetidos.

2. Devuelve un listado que muestre todos los pedidos que ha realizado cada cliente. El resultado debe mostrar todos los datos de los pedidos y del cliente. El listado debe mostrar los datos de los clientes ordenados alfabéticamente.

3. Devuelve un listado que muestre todos los pedidos en los que ha participado un comercial. El resultado debe mostrar todos los datos de los pedidos y de los comerciales. El listado debe mostrar los datos de los comerciales ordenados alfabéticamente.

4. Devuelve un listado que muestre todos los clientes, con todos los pedidos que han realizado y con los datos de los comerciales asociados a cada pedido.

5. Devuelve un listado de todos los clientes que realizaron un pedido durante el año 2017, cuya cantidad esté entre 300 € y 1000 €.

6. Devuelve el nombre y los apellidos de todos los comerciales que ha participado en algún pedido realizado por María Santana Moreno.

7. Devuelve el nombre de todos los clientes que han realizado algún pedido con el comercial Daniel Sáez Vega.

## Consultas resumen (Funciones)

1. Calcula la cantidad total que suman todos los pedidos que aparecen en la tabla pedido.

2. Calcula la cantidad media de todos los pedidos que aparecen en la tabla pedido.

3. Calcula el número total de comerciales distintos que aparecen en la tabla pedido.

4. Calcula el número total de clientes que aparecen en la tabla cliente.

5. Calcula cuál es la mayor cantidad que aparece en la tabla pedido.

6. Calcula cuál es la menor cantidad que aparece en la tabla pedido.

7. Calcula cuál es el valor máximo de categoría para cada una de las ciudades que aparece en la tabla cliente.

8. Calcula cuál es el máximo valor de los pedidos realizados durante el mismo día para cada uno de los clientes. Es decir, el mismo cliente puede haber realizado varios pedidos de diferentes cantidades el mismo día. Se pide que se calcule cuál es el pedido de máximo valor para cada uno de los días en los que un cliente ha realizado un pedido. Muestra el identificador del cliente, nombre, apellidos, la fecha y el valor de la cantidad.

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