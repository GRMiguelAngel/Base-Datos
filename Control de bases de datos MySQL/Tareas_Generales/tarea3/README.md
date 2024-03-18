<div align="Justify">

# Tarea 3

Realiza las siguientes consultas:

- Mostrar todos los clientes.
```sql
select * from clientes;
+------------+----------------+----------------+
| id_cliente | nombre_cliente | ciudad_cliente |
+------------+----------------+----------------+
|          1 | Juan           | Ciudad A       |
|          2 | María          | Ciudad B       |
|          3 | Pedro          | Ciudad C       |
+------------+----------------+----------------+

```
- Mostrar todas las órdenes.
```sql
select * from ordenes;
+----------+------------+-------------+
| id_orden | id_cliente | fecha_orden |
+----------+------------+-------------+
|        1 |          1 | 2024-03-01  |
|        2 |          2 | 2024-03-02  |
|        3 |          3 | 2024-03-03  |
+----------+------------+-------------+
```
- Mostrar todos los productos.
```sql
select * from productos;
+-------------+-----------------+-----------------+
| id_producto | nombre_producto | precio_producto |
+-------------+-----------------+-----------------+
|           1 | Producto A      |           50.00 |
|           2 | Producto B      |           75.00 |
|           3 | Producto C      |          100.00 |
+-------------+-----------------+-----------------+

```
- Mostrar todos los detalles de las órdenes.
```sql
select * from detalles_ordenes;
+------------+----------+-------------+----------+
| id_detalle | id_orden | id_producto | cantidad |
+------------+----------+-------------+----------+
|          1 |        1 |           1 |        2 |
|          2 |        2 |           2 |        1 |
|          3 |        3 |           3 |        3 |
+------------+----------+-------------+----------+

```
- Mostrar los primeros 5 clientes ordenados por nombre.
```sql
select * from clientes order by nombre_cliente limit 5;
+------------+----------------+----------------+
| id_cliente | nombre_cliente | ciudad_cliente |
+------------+----------------+----------------+
|          1 | Juan           | Ciudad A       |
|          2 | María          | Ciudad B       |
|          3 | Pedro          | Ciudad C       |
+------------+----------------+----------------+

```
- Mostrar los productos con un precio mayor a 50.
```sql
select * from productos where precio_producto>50;
+-------------+-----------------+-----------------+
| id_producto | nombre_producto | precio_producto |
+-------------+-----------------+-----------------+
|           2 | Producto B      |           75.00 |
|           3 | Producto C      |          100.00 |
+-------------+-----------------+-----------------+

```
- Mostrar todas las órdenes realizadas por el cliente con ID 1.
```sql
select * from ordenes where id_cliente=1;
+----------+------------+-------------+
| id_orden | id_cliente | fecha_orden |
+----------+------------+-------------+
|        1 |          1 | 2024-03-01  |
+----------+------------+-------------+

```
- Mostrar los clientes cuyos nombres comienzan con la letra "A".
```sql
select * from clientes where nombre_cliente regexp "^A";
```
> No devuelve nada

- Mostrar las órdenes que contienen más de 2 productos.
```sql
select * from detalles_ordenes where cantidad>2;
+------------+----------+-------------+----------+
| id_detalle | id_orden | id_producto | cantidad |
+------------+----------+-------------+----------+
|          3 |        3 |           3 |        3 |
+------------+----------+-------------+----------+
```
- Mostrar los productos ordenados por precio de forma descendente.
```sql
select * from productos order by precio_producto asc;
+-------------+-----------------+-----------------+
| id_producto | nombre_producto | precio_producto |
+-------------+-----------------+-----------------+
|           1 | Producto A      |           50.00 |
|           2 | Producto B      |           75.00 |
|           3 | Producto C      |          100.00 |
+-------------+-----------------+-----------------+

```
- Seleccionar todos los clientes y sus órdenes, incluso si no tienen órdenes.
```sql
select * from clientes left join ordenes on clientes.id_cliente=ordenes.id_cliente;
+------------+----------------+----------------+----------+------------+-------------+
| id_cliente | nombre_cliente | ciudad_cliente | id_orden | id_cliente | fecha_orden |
+------------+----------------+----------------+----------+------------+-------------+
|          1 | Juan           | Ciudad A       |        1 |          1 | 2024-03-01  |
|          2 | María          | Ciudad B       |        2 |          2 | 2024-03-02  |
|          3 | Pedro          | Ciudad C       |        3 |          3 | 2024-03-03  |
+------------+----------------+----------------+----------+------------+-------------+

```
- Seleccionar todas las órdenes junto con los productos correspondientes.
```sql
select * from ordenes inner join detalles_ordenes on detalles_ordenes.id_orden=ordenes.id_orden inner join productos on productos.id_producto=detalles_ordenes.id_producto;
+----------+------------+-------------+------------+----------+-------------+----------+-------------+-----------------+-----------------+
| id_orden | id_cliente | fecha_orden | id_detalle | id_orden | id_producto | cantidad | id_producto | nombre_producto | precio_producto |
+----------+------------+-------------+------------+----------+-------------+----------+-------------+-----------------+-----------------+
|        1 |          1 | 2024-03-01  |          1 |        1 |           1 |        2 |           1 | Producto A      |           50.00 |
|        2 |          2 | 2024-03-02  |          2 |        2 |           2 |        1 |           2 | Producto B      |           75.00 |
|        3 |          3 | 2024-03-03  |          3 |        3 |           3 |        3 |           3 | Producto C      |          100.00 |
+----------+------------+-------------+------------+----------+-------------+----------+-------------+-----------------+-----------------+
```
- Mostrar el nombre de los clientes que han realizado órdenes de productos que cuestan más de 50.
```sql
select clientes.nombre_cliente from clientes inner join ordenes on ordenes.id_cliente=clientes.id_cliente inner join detalles_ordenes on detalles_ordenes.id_orden=ordenes.id_orden inner join productos on productos.id_producto=detalles_ordenes.id_producto where productos.precio_producto>50;
+----------------+
| nombre_cliente |
+----------------+
| María          |
| Pedro          |
+----------------+
```
- Obtener el nombre de los productos que no se han ordenado aún.
```sql
select productos.* from productos left join detalles_ordenes on productos.id_producto=detalles_ordenes.id_producto where detalles_ordenes.id_producto is null;
Empty set (0,00 sec)

```
- Mostrar el nombre del cliente, el producto y la cantidad para todas las órdenes.
```sql

```
- Obtener el nombre de los productos junto con los nombres de los clientes que han realizado órdenes de esos productos.
```sql

```
- Mostrar todas las órdenes con sus clientes y productos, incluso si no hay órdenes.
```sql

```
- Obtener el nombre de los clientes junto con el número total de órdenes que han realizado.
```sql

```
- Mostrar todas las órdenes junto con el nombre del cliente y el nombre del producto.
```sql

```
- Mostrar todas las órdenes con sus productos y clientes, incluso si no hay información de cliente.
```sql

```
- Obtener el nombre de los productos junto con los nombres de los clientes que han realizado órdenes de esos productos, incluyendo los productos que no han sido ordenados.
```sql

```
- Mostrar todas las órdenes junto con el nombre del cliente y el nombre del producto, incluyendo las órdenes sin productos.
```sql

```
- Obtener el nombre de los clientes junto con el número total de órdenes que han realizado, incluyendo los clientes que no han realizado órdenes.
```sql

```
- Mostrar todas las órdenes con sus clientes y productos, incluyendo las órdenes y productos que no tienen información.
```sql

```
- Realizar un inner join entre clientes y órdenes.
```sql

```
- Realizar un left join entre órdenes y detalles de órdenes.
```sql

```
- Realizar un right join entre productos y detalles de órdenes.
```sql

```
- Realizar un full join entre clientes y órdenes.
```sql

```
- Realizar un full join entre órdenes y detalles de órdenes.
```sql

```
- Realizar un full join entre productos y detalles de órdenes.
```sql

```

</div>