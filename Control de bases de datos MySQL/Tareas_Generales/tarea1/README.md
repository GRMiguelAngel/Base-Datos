<div align="Justify">

# Tarea 1

```sql
CREATE TABLE IF NOT EXISTS usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    edad INT,
    correo VARCHAR(60)
);

INSERT INTO usuarios (nombre, edad, correo) VALUES
('Juan', 25, 'juan@example.com'),
('María', 30, 'maria@example.com'),
('Pedro', 28, 'pedro@example.com');

CREATE TABLE IF NOT EXISTS productos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    precio DECIMAL(10, 2),
    cantidad INT
);

INSERT INTO productos (nombre, precio, cantidad) VALUES
('Camisa', 25.99, 100),
('Pantalón', 35.50, 80),
('Zapatos', 59.99, 50);

CREATE TABLE IF NOT EXISTS pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT,
    producto_id INT,
    cantidad INT,
    fecha_pedido DATE,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (producto_id) REFERENCES productos(id)
);

INSERT INTO pedidos (usuario_id, producto_id, cantidad, fecha_pedido) VALUES
(1, 1, 2, '2024-03-01'),
(2, 2, 1, '2024-03-02'),
(3, 3, 3, '2024-03-03');
```

Realiza la migración a __MySql__ y realiza las siguientes consultas:

- Mostrar todos los usuarios.
```sql
select * from usuarios;
```
- Mostrar todos los productos.
```sql
select * from productos;
```
- Mostrar todos los pedidos.
```sql
select * from pedidos;
```
- Mostrar los usuarios que tienen más de 25 años.
```sql
select * from usuarios where edad>25;
```
- Mostrar los productos con un precio mayor a 50.
```sql
select * from productos where precio>50;
```
- Mostrar los pedidos realizados el día de hoy.
```sql
select * from pedidos where fecha_pedido = now();
```
- Mostrar el total de productos en stock.
```sql
select sum(cantidad) as "Stock total" from productos;
```
- Mostrar el promedio de edades de los usuarios.
```sql
select avg(edad) as "Edad media" from usuarios;
```
- Mostrar los usuarios que tienen la letra 'a' en su nombre
```sql
select * from usuarios where nombre regexp '[Aa]';
```
- Mostrar los productos ordenados por precio de forma descendente.
```sql
select * from productos order by precio desc;
```
- Mostrar los pedidos realizados por el usuario con ID 2.
```sql
select pedidos.* from pedidos join usuarios on usuarios.id=pedidos.usuario_id where usuarios.id=2;
```
- Mostrar los usuarios ordenados por edad de forma ascendente.
```sql
select * from usuarios order by edad asc;
```
- Mostrar los productos con un precio entre 20 y 50.
```sql
select * from productos where precio between 20 and 50;
```
- Mostrar los usuarios que tienen un correo de dominio 'example.com'.
```sql
select * from usuarios where correo regexp '@example.com$';
```
- Mostrar los pedidos con una cantidad mayor a 2
```sql
select * from pedidos where cantidad>2;
```

</div>