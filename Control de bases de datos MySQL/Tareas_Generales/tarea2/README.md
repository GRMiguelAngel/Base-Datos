<div align="Justify">

# Tarea 2

```sql
CREATE TABLE IF NOT EXISTS clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    direccion VARCHAR(100)
);

INSERT INTO clientes (nombre, direccion) VALUES
    ('Cliente 1', 'Dirección 1'),
    ('Cliente 2', 'Dirección 2'),
    ('Cliente 3', 'Dirección 3'),
    ('Cliente 4', 'Dirección 4'),
    ('Cliente 5', 'Dirección 5'),
    ('Cliente 6', 'Dirección 6'),
    ('Cliente 7', 'Dirección 7'),
    ('Cliente 8', 'Dirección 8'),
    ('Cliente 9', 'Dirección 9'),
    ('Cliente 10', 'Dirección 10'),
    ('Cliente 11', 'Dirección 11'),
    ('Cliente 12', 'Dirección 12'),
    ('Cliente 13', 'Dirección 13'),
    ('Cliente 14', 'Dirección 14'),
    ('Cliente 15', 'Dirección 15'),
    ('Cliente 16', 'Dirección 16'),
    ('Cliente 17', 'Dirección 17'),
    ('Cliente 18', 'Dirección 18'),
    ('Cliente 19', 'Dirección 19'),
    ('Cliente 20', 'Dirección 20');

CREATE TABLE IF NOT EXISTS productos (
    id_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    precio FLOAT
);

INSERT INTO productos (nombre, precio) VALUES
    ('Producto 1', 10.99),
    ('Producto 2', 20.50),
    ('Producto 3', 30.99),
    ('Producto 4', 40.50),
    ('Producto 5', 50.99),
    ('Producto 6', 60.50),
    ('Producto 7', 70.99),
    ('Producto 8', 80.50),
    ('Producto 9', 90.99),
    ('Producto 10', 100.50),
    ('Producto 11', 110.99),
    ('Producto 12', 120.50),
    ('Producto 13', 130.99),
    ('Producto 14', 140.50),
    ('Producto 15', 150.99),
    ('Producto 16', 160.50),
    ('Producto 17', 170.99),
    ('Producto 18', 180.50),
    ('Producto 19', 190.99),
    ('Producto 20', 200.50);

CREATE TABLE IF NOT EXISTS ordenes (
    id_orden INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    id_producto INT,
    cantidad INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

INSERT INTO ordenes (id_cliente, id_producto, cantidad) VALUES
    (1, 1, 2),
    (2, 2, 1),
    (3, 3, 3),
    (4, 4, 2),
    (5, 5, 1),
    (6, 6, 2),
    (7, 7, 3),
    (8, 8, 2),
    (9, 9, 1),
    (10, 10, 2),
    (11, 11, 3),
    (12, 12, 2),
    (13, 13, 1),
    (14, 14, 2),
    (15, 15, 3),
    (16, 16, 2),
    (17, 17, 1),
    (18, 18, 2),
    (19, 19, 3),
    (20, 20, 2);
```

Realiza la migración a __MySql__ y realiza las siguientes consultas:

- Consultas simples:
  - 1. Mostrar todos los clientes.
   
   <br>

    ```sql
    select * from clientes;
    ```
  - 2. Mostrar todos los productos.
   
   <br>
   
    ```sql
    select * from productos;
    ```
  - 3. Mostrar todas las órdenes.
     
   <br>
   
    ```sql
    select * from ordenes;
    ```
  - 4. Mostrar los primeros 5 clientes ordenados por nombre.
     
   <br>
   
    ```sql
    select * from clientes order by nombre limit 5;

    +------------+------------+---------------+
    | id_cliente | nombre     | direccion     |
    +------------+------------+---------------+
    |          1 | Cliente 1  | Dirección 1   |
    |         10 | Cliente 10 | Dirección 10  |
    |         11 | Cliente 11 | Dirección 11  |
    |         12 | Cliente 12 | Dirección 12  |
    |         13 | Cliente 13 | Dirección 13  |
    +------------+------------+---------------+
    ```
    
  - 5. Mostrar los productos con un precio mayor a 50.
     
   <br>
   
    ```sql
    select * from productos where precio>50;

    +-------------+-------------+--------+
    | id_producto | nombre      | precio |
    +-------------+-------------+--------+
    |           5 | Producto 5  |  50.99 |
    |           6 | Producto 6  |   60.5 |
    |           7 | Producto 7  |  70.99 |
    |           8 | Producto 8  |   80.5 |
    |           9 | Producto 9  |  90.99 |
    |          10 | Producto 10 |  100.5 |
    |          11 | Producto 11 | 110.99 |
    |          12 | Producto 12 |  120.5 |
    |          13 | Producto 13 | 130.99 |
    |          14 | Producto 14 |  140.5 |
    |          15 | Producto 15 | 150.99 |
    |          16 | Producto 16 |  160.5 |
    |          17 | Producto 17 | 170.99 |
    |          18 | Producto 18 |  180.5 |
    |          19 | Producto 19 | 190.99 |
    |          20 | Producto 20 |  200.5 |
    +-------------+-------------+--------+
    ```

  - 6. Mostrar todas las órdenes realizadas por el cliente con ID 1.
     
   <br>
   
    ```sql
    select ordenes.* from ordenes inner join clientes on ordenes.id_cliente=clientes.id_cliente where clientes.id_cliente=1;

    +----------+------------+-------------+----------+
    | id_orden | id_cliente | id_producto | cantidad |
    +----------+------------+-------------+----------+
    |        1 |          1 |           1 |        2 |
    +----------+------------+-------------+----------+
    ```
  - 7. Mostrar los clientes cuyos nombres comienzan con la letra "M".
     
   <br>
   
    ```sql
    select * from clientes where nombre regexp "^M";
    ```
    
  - 8. Mostrar las órdenes que contienen más de 2 productos.
     
   <br>
   
    ```sql
    select
    ```
  - 9. Mostrar los productos ordenados por precio de forma descendente.
   
   <br>
   
    ```sql
    select
    ```
- Consultas de ejemplo para practicar joins

  - 1. Seleccionar todos los clientes y sus órdenes, incluso si no tienen órdenes
     
   <br>
   
    ```sql
    select
    ```
  - 2. Seleccionar todas las órdenes junto con los productos correspondientes
     
   <br>
   
    ```sql
    select
    ```
  - 3. Mostrar el nombre de los clientes que han realizado órdenes de productos que cuestan más de 50
     
   <br>
   
    ```sql
    select
    ```
  - 4. Obtener el nombre de los productos que no se han ordenado aún
     
   <br>
   
    ```sql
    select
    ```
  - 5. Mostrar el nombre del cliente, el producto y la cantidad para todas las órdenes
     
   <br>
   
    ```sql
    select
    ```
  - 6. Obtener el nombre de los productos junto con los nombres de los clientes que han realizado órdenes de esos productos
     
   <br>
   
    ```sql
    select
    ```
  - 7. Mostrar todas las órdenes con sus clientes y productos, incluso si no hay órdenes
     
   <br>
   
    ```sql
    select
    ```
  - 8. Obtener el nombre de los clientes junto con el número total de órdenes que han realizado
     
   <br>
   
    ```sql
    select
    ```
  - 9. Mostrar todas las órdenes junto con el nombre del cliente y el nombre del producto
     
   <br>
   
    ```sql
    select
    ```
  - 10. Mostrar todas las órdenes con sus productos y clientes, incluso si no hay información de cliente.
     
   <br>
   
    ```sql
    select
    ```
  - 11. Obtener el nombre de los productos junto con el nombre de los clientes que han realizado órdenes de esos productos, incluyendo los productos que no han sido ordenados
     
   <br>
   
    ```sql
    select
    ```
  - 12. Mostrar todas las órdenes junto con el nombre del cliente y el nombre del producto, incluyendo las órdenes sin productos
     
   <br>
   
    ```sql
    select
    ```
  - 13. Obtener el nombre de los clientes junto con el número total de órdenes que han realizado, incluyendo los clientes que no han realizado órdenes.
     
   <br>
   
    ```sql
    select
    ```
  - 14. Mostrar todas las órdenes con sus clientes y productos, incluyendo las órdenes y productos que no tienen información.
   
   <br>
   
    ```sql
    select
    ```
</div>