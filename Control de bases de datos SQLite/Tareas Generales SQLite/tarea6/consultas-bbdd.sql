-- Obtener todos los clientes.
select * FROM Clientes;
/**
┌────┬─────────────────┬───────────────────────────┐
│ id │     nombre      │           email           │
├────┼─────────────────┼───────────────────────────┤
│ 1  │ Juan Pérez      │ juan@example.com          │
│ 2  │ María Gómez     │ maria@example.com         │
│ 3  │ Carlos López    │ carlos@example.com        │
│ 4  │ Ana Rodríguez   │ ana@example.com           │
│ 5  │ Luisa Martínez  │ luisa@example.com         │
│ 6  │ Pedro Sánchez   │ pedro@example.com         │
│ 7  │ Laura García    │ laura@example.com         │
│ 8  │ Miguel Martín   │ miguel@example.com        │
│ 9  │ Elena González  │ elena@example.com         │
│ 10 │ David Torres    │ david@example.com         │
│ 11 │ Sofía Ruiz      │ sofia@example.com         │
│ 12 │ Javier López    │ javier@example.com        │
│ 13 │ Carmen Vargas   │ carmen@example.com        │
│ 14 │ Daniel Muñoz    │ daniel@example.com        │
│ 15 │ Isabel Serrano  │ isabel@example.com        │
│ 16 │ Alejandro Muñoz │ alejandro@example.com     │
│ 17 │ Raquel Herrera  │ raquel@example.com        │
│ 18 │ Francisco Mora  │ francisco@example.com     │
│ 19 │ Marina Díaz     │ marina@example.com        │
│ 20 │ Antonio Jiménez │ antonio@example.com       │
│ 21 │ Beatriz Romero  │ beatriz@example.com       │
│ 22 │ Carlos Gómez    │ carlos.gomez@example.com  │
│ 23 │ Clara Sánchez   │ clara.sanchez@example.com │
│ 24 │ Andrés Martínez │ andres@example.com        │
│ 25 │ Lucía Díaz      │ lucia@example.com         │
│ 26 │ Mario Serrano   │ mario@example.com         │
│ 27 │ Eva Torres      │ eva.torres@example.com    │
│ 28 │ Roberto Ruiz    │ roberto@example.com       │
│ 29 │ Celia García    │ celia@example.com         │
└────┴─────────────────┴───────────────────────────┘
**/
-- Obtener la cantidad total de productos en todos los pedidos

select sum(Pedidos.cantidad) as 'Cantidad de productos', Productos.nombre as Producto from Pedidos, Productos where Productos.id=Pedidos.id_producto group by Productos.nombre;
/**
┌───────────────────────┬───────────────────────────────────┐
│ Cantidad de productos │             Producto              │
├───────────────────────┼───────────────────────────────────┤
│ 2                     │ Adaptador HDMI                    │
│ 1                     │ Altavoces Inalámbricos            │
│ 2                     │ Auriculares Bluetooth             │
│ 1                     │ Batería Externa                   │
│ 3                     │ Cargador Inalámbrico              │
│ 3                     │ Cámara Digital                    │
│ 1                     │ Disco Duro Externo                │
│ 2                     │ Estuche para Auriculares          │
│ 1                     │ Funda para Laptop                 │
│ 2                     │ Funda para Tablet                 │
│ 3                     │ Hub USB                           │
│ 1                     │ Impresora                         │
│ 1                     │ Kit de Limpieza para Computadoras │
│ 2                     │ Laptop                            │
│ 2                     │ Lámpara LED                       │
│ 2                     │ Mochila para Portátil             │
│ 1                     │ Monitor LED                       │
│ 3                     │ Ratón Óptico                      │
│ 2                     │ Reloj Inteligente                 │
│ 2                     │ Reproductor de Audio              │
│ 3                     │ Router Wi-Fi                      │
│ 1                     │ Smartphone                        │
│ 1                     │ Soporte para Teléfono             │
│ 3                     │ TV LED                            │
│ 1                     │ Tablet                            │
│ 1                     │ Tarjeta de Memoria                │
│ 1                     │ Teclado Inalámbrico               │
│ 2                     │ Webcam HD                         │
└───────────────────────┴───────────────────────────────────┘
**/

-- Obtener el precio promedio de los productos:

select avg(precio) as 'Precio promedio' from Productos;
/**
┌──────────────────┐
│ Precio promedio  │
├──────────────────┤
│ 188.294285714286 │
└──────────────────┘
**/

-- Obtener los clientes que tienen un email válido (contiene '@'):

select nombre , email from clientes where email regexp '@';
/**
┌─────────────────┬───────────────────────────┐
│     nombre      │           email           │
├─────────────────┼───────────────────────────┤
│ Juan Pérez      │ juan@example.com          │
│ María Gómez     │ maria@example.com         │
│ Carlos López    │ carlos@example.com        │
│ Ana Rodríguez   │ ana@example.com           │
│ Luisa Martínez  │ luisa@example.com         │
│ Pedro Sánchez   │ pedro@example.com         │
│ Laura García    │ laura@example.com         │
│ Miguel Martín   │ miguel@example.com        │
│ Elena González  │ elena@example.com         │
│ David Torres    │ david@example.com         │
│ Sofía Ruiz      │ sofia@example.com         │
│ Javier López    │ javier@example.com        │
│ Carmen Vargas   │ carmen@example.com        │
│ Daniel Muñoz    │ daniel@example.com        │
│ Isabel Serrano  │ isabel@example.com        │
│ Alejandro Muñoz │ alejandro@example.com     │
│ Raquel Herrera  │ raquel@example.com        │
│ Francisco Mora  │ francisco@example.com     │
│ Marina Díaz     │ marina@example.com        │
│ Antonio Jiménez │ antonio@example.com       │
│ Beatriz Romero  │ beatriz@example.com       │
│ Carlos Gómez    │ carlos.gomez@example.com  │
│ Clara Sánchez   │ clara.sanchez@example.com │
│ Andrés Martínez │ andres@example.com        │
│ Lucía Díaz      │ lucia@example.com         │
│ Mario Serrano   │ mario@example.com         │
│ Eva Torres      │ eva.torres@example.com    │
│ Roberto Ruiz    │ roberto@example.com       │
│ Celia García    │ celia@example.com         │
└─────────────────┴───────────────────────────┘
**/

-- Obtener el producto más caro.

select nombre, precio from productos where precio=(select max(precio) from productos);
/**
┌────────┬────────┐
│ nombre │ precio │
├────────┼────────┤
│ Laptop │ 1200.0 │
└────────┴────────┘
**/

-- Obtener los pedidos realizados en febrero de 2024.

select  select * from pedidos where fecha_pedido regexp '2024-02';
/**
┌───────────┬────────────┬─────────────┬──────────┬──────────────┐
│ id_pedido │ id_cliente │ id_producto │ cantidad │ fecha_pedido │
├───────────┼────────────┼─────────────┼──────────┼──────────────┤
│ 1         │ 1          │ 1           │ 2        │ 2024-02-01   │
│ 2         │ 2          │ 2           │ 1        │ 2024-02-02   │
│ 3         │ 3          │ 3           │ 3        │ 2024-02-03   │
│ 4         │ 4          │ 4           │ 1        │ 2024-02-04   │
│ 5         │ 5          │ 5           │ 2        │ 2024-02-05   │
│ 6         │ 6          │ 6           │ 1        │ 2024-02-06   │
│ 7         │ 7          │ 7           │ 3        │ 2024-02-07   │
│ 8         │ 8          │ 8           │ 2        │ 2024-02-08   │
│ 9         │ 9          │ 9           │ 1        │ 2024-02-09   │
│ 10        │ 10         │ 10          │ 2        │ 2024-02-10   │
│ 11        │ 11         │ 11          │ 1        │ 2024-02-11   │
│ 12        │ 12         │ 12          │ 3        │ 2024-02-12   │
│ 13        │ 13         │ 13          │ 1        │ 2024-02-13   │
│ 14        │ 14         │ 14          │ 2        │ 2024-02-14   │
│ 15        │ 15         │ 15          │ 1        │ 2024-02-15   │
│ 16        │ 16         │ 16          │ 3        │ 2024-02-16   │
│ 17        │ 17         │ 17          │ 2        │ 2024-02-17   │
│ 18        │ 18         │ 18          │ 1        │ 2024-02-18   │
│ 19        │ 19         │ 19          │ 2        │ 2024-02-19   │
│ 20        │ 20         │ 20          │ 1        │ 2024-02-20   │
│ 21        │ 21         │ 21          │ 3        │ 2024-02-21   │
│ 22        │ 22         │ 22          │ 1        │ 2024-02-22   │
│ 23        │ 23         │ 23          │ 2        │ 2024-02-23   │
│ 24        │ 24         │ 24          │ 1        │ 2024-02-24   │
│ 25        │ 25         │ 25          │ 3        │ 2024-02-25   │
│ 26        │ 26         │ 26          │ 2        │ 2024-02-26   │
│ 27        │ 27         │ 27          │ 1        │ 2024-02-27   │
│ 28        │ 28         │ 28          │ 2        │ 2024-02-28   │
│ 29        │ 29         │ 29          │ 1        │ 2024-02-29   │
└───────────┴────────────┴─────────────┴──────────┴──────────────┘
**/

-- Obtener la cantidad total de productos en todos los pedidos por producto.

select sum(pedidos.cantidad) as 'Cantidad Total', productos.nombre as Producto from pedidos, productos where productos.id=pedidos.id_producto group by productos.id;
/**
┌────────────────┬───────────────────────────────────┐
│ Cantidad Total │             Producto              │
├────────────────┼───────────────────────────────────┤
│ 2              │ Laptop                            │
│ 1              │ Smartphone                        │
│ 3              │ TV LED                            │
│ 1              │ Tablet                            │
│ 2              │ Auriculares Bluetooth             │
│ 1              │ Impresora                         │
│ 3              │ Cámara Digital                    │
│ 2              │ Reproductor de Audio              │
│ 1              │ Altavoces Inalámbricos            │
│ 2              │ Reloj Inteligente                 │
│ 1              │ Teclado Inalámbrico               │
│ 3              │ Ratón Óptico                      │
│ 1              │ Monitor LED                       │
│ 2              │ Mochila para Portátil             │
│ 1              │ Disco Duro Externo                │
│ 3              │ Router Wi-Fi                      │
│ 2              │ Lámpara LED                       │
│ 1              │ Batería Externa                   │
│ 2              │ Estuche para Auriculares          │
│ 1              │ Tarjeta de Memoria                │
│ 3              │ Cargador Inalámbrico              │
│ 1              │ Kit de Limpieza para Computadoras │
│ 2              │ Funda para Tablet                 │
│ 1              │ Soporte para Teléfono             │
│ 3              │ Hub USB                           │
│ 2              │ Webcam HD                         │
│ 1              │ Funda para Laptop                 │
│ 2              │ Adaptador HDMI                    │
└────────────────┴───────────────────────────────────┘
**/

-- Obtener los clientes que han realizado más de un pedido.



/**

**/

-- Obtener los productos que tienen un precio registrado.

 select nombre, precio from productos where precio is not null;
/**
┌───────────────────────────────────┬────────┐
│              nombre               │ precio │
├───────────────────────────────────┼────────┤
│ Laptop                            │ 1200.0 │
│ Smartphone                        │ 699.99 │
│ TV LED                            │ 799.5  │
│ Tablet                            │ 299.99 │
│ Auriculares Bluetooth             │ 79.99  │
│ Impresora                         │ 199.99 │
│ Cámara Digital                    │ 499.99 │
│ Reproductor de Audio              │ 149.99 │
│ Altavoces Inalámbricos            │ 129.99 │
│ Reloj Inteligente                 │ 249.99 │
│ Teclado Inalámbrico               │ 59.99  │
│ Ratón Óptico                      │ 29.99  │
│ Monitor LED                       │ 349.99 │
│ Mochila para Portátil             │ 49.99  │
│ Disco Duro Externo                │ 89.99  │
│ Router Wi-Fi                      │ 69.99  │
│ Lámpara LED                       │ 39.99  │
│ Batería Externa                   │ 19.99  │
│ Estuche para Auriculares          │ 14.99  │
│ Tarjeta de Memoria                │ 24.99  │
│ Cargador Inalámbrico              │ 34.99  │
│ Kit de Limpieza para Computadoras │ 9.99   │
│ Funda para Tablet                 │ 19.99  │
│ Soporte para Teléfono             │ 14.99  │
│ Hub USB                           │ 29.99  │
│ Webcam HD                         │ 59.99  │
│ Funda para Laptop                 │ 29.99  │
│ Adaptador HDMI                    │ 12.99  │
└───────────────────────────────────┴────────┘
**/

-- Obtener la fecha del primer pedido realizado:

select id_pedido, fecha_pedido from pedidos where id_pedido=1;
/**
┌───────────┬──────────────┐
│ id_pedido │ fecha_pedido │
├───────────┼──────────────┤
│ 1         │ 2024-02-01   │
└───────────┴──────────────┘
**/

-- Obtener los productos cuyos nombres comienzan con 'A' o 'B':

select nombre from productos where nombre regexp '^[AB]';
/**
┌────────────────────────┐
│         nombre         │
├────────────────────────┤
│ Auriculares Bluetooth  │
│ Altavoces Inalámbricos │
│ Batería Externa        │
│ Adaptador HDMI         │
└────────────────────────┘
**/

-- Obtener la cantidad total de productos en todos los pedidos por cliente ordenado por cliente.

select sum(pedidos.cantidad) as 'Cantidad Total', clientes.nombre as Cliente from pedidos, clientes where clientes.id=pedidos.id_cliente group by clientes.id;
/**
┌────────────────┬─────────────────┐
│ Cantidad Total │     Cliente     │
├────────────────┼─────────────────┤
│ 2              │ Juan Pérez      │
│ 1              │ María Gómez     │
│ 3              │ Carlos López    │
│ 1              │ Ana Rodríguez   │
│ 2              │ Luisa Martínez  │
│ 1              │ Pedro Sánchez   │
│ 3              │ Laura García    │
│ 2              │ Miguel Martín   │
│ 1              │ Elena González  │
│ 2              │ David Torres    │
│ 1              │ Sofía Ruiz      │
│ 3              │ Javier López    │
│ 1              │ Carmen Vargas   │
│ 2              │ Daniel Muñoz    │
│ 1              │ Isabel Serrano  │
│ 3              │ Alejandro Muñoz │
│ 2              │ Raquel Herrera  │
│ 1              │ Francisco Mora  │
│ 2              │ Marina Díaz     │
│ 1              │ Antonio Jiménez │
│ 3              │ Beatriz Romero  │
│ 1              │ Carlos Gómez    │
│ 2              │ Clara Sánchez   │
│ 1              │ Andrés Martínez │
│ 3              │ Lucía Díaz      │
│ 2              │ Mario Serrano   │
│ 1              │ Eva Torres      │
│ 2              │ Roberto Ruiz    │
│ 1              │ Celia García    │
└────────────────┴─────────────────┘
**/

-- Obtener los clientes que han realizado más de un pedido en febrero de 2024.


/**

**/

-- Obtener los productos con precio entre 100 y 500.

select nombre, precio from productos where precio between 100 and 500;
/**
┌────────────────────────┬────────┐
│         nombre         │ precio │
├────────────────────────┼────────┤
│ Tablet                 │ 299.99 │
│ Impresora              │ 199.99 │
│ Cámara Digital         │ 499.99 │
│ Reproductor de Audio   │ 149.99 │
│ Altavoces Inalámbricos │ 129.99 │
│ Reloj Inteligente      │ 249.99 │
│ Monitor LED            │ 349.99 │
└────────────────────────┴────────┘
**/

-- Obtener la cantidad total de productos en todos los pedidos por cliente ordenado por cantidad descendente.

select sum(pedidos.cantidad) as Cantidad, clientes.nombre as Cliente from clientes, pedidos where clientes.id=pedidos.id_cliente group by Cliente order by Cantidad desc;
/**
┌──────────┬─────────────────┐
│ Cantidad │     Cliente     │
├──────────┼─────────────────┤
│ 3        │ Lucía Díaz      │
│ 3        │ Laura García    │
│ 3        │ Javier López    │
│ 3        │ Carlos López    │
│ 3        │ Beatriz Romero  │
│ 3        │ Alejandro Muñoz │
│ 2        │ Roberto Ruiz    │
│ 2        │ Raquel Herrera  │
│ 2        │ Miguel Martín   │
│ 2        │ Mario Serrano   │
│ 2        │ Marina Díaz     │
│ 2        │ Luisa Martínez  │
│ 2        │ Juan Pérez      │
│ 2        │ David Torres    │
│ 2        │ Daniel Muñoz    │
│ 2        │ Clara Sánchez   │
│ 1        │ Sofía Ruiz      │
│ 1        │ Pedro Sánchez   │
│ 1        │ María Gómez     │
│ 1        │ Isabel Serrano  │
│ 1        │ Francisco Mora  │
│ 1        │ Eva Torres      │
│ 1        │ Elena González  │
│ 1        │ Celia García    │
│ 1        │ Carmen Vargas   │
│ 1        │ Carlos Gómez    │
│ 1        │ Antonio Jiménez │
│ 1        │ Andrés Martínez │
│ 1        │ Ana Rodríguez   │
└──────────┴─────────────────┘
**/

-- Obtener los clientes que tienen una 'a' en cualquier posición de su nombre.

select nombre from clientes where nombre regexp '[Aa]';
/**
┌─────────────────┐
│     nombre      │
├─────────────────┤
│ Juan Pérez      │
│ María Gómez     │
│ Carlos López    │
│ Ana Rodríguez   │
│ Luisa Martínez  │
│ Laura García    │
│ Miguel Martín   │
│ Elena González  │
│ David Torres    │
│ Sofía Ruiz      │
│ Javier López    │
│ Carmen Vargas   │
│ Daniel Muñoz    │
│ Isabel Serrano  │
│ Alejandro Muñoz │
│ Raquel Herrera  │
│ Francisco Mora  │
│ Marina Díaz     │
│ Antonio Jiménez │
│ Beatriz Romero  │
│ Carlos Gómez    │
│ Clara Sánchez   │
│ Andrés Martínez │
│ Lucía Díaz      │
│ Mario Serrano   │
│ Eva Torres      │
│ Celia García    │
└─────────────────┘
**/

-- Obtener el precio máximo de los productos.

select max(precio) as precio, nombre from productos;
/**
┌────────┬────────┐
│ precio │ nombre │
├────────┼────────┤
│ 1200.0 │ Laptop │
└────────┴────────┘
**/

-- Obtener los pedidos realizados por el cliente con ID 1 en febrero de 2024.

select clientes.*, count(pedidos.id_cliente) as 'Cantidad de pedidos', pedidos.fecha_pedido as Fecha from clientes, pedidos where clientes.id=1 and clientes.id=pedidos.id_cliente and Fecha regexp '^2024-02-';
/**
┌────┬────────────┬──────────────────┬─────────────────────┬────────────┐
│ id │   nombre   │      email       │ Cantidad de pedidos │   Fecha    │
├────┼────────────┼──────────────────┼─────────────────────┼────────────┤
│ 1  │ Juan Pérez │ juan@example.com │ 1                   │ 2024-02-01 │
└────┴────────────┴──────────────────┴─────────────────────┴────────────┘
**/

-- Obtener la cantidad total de productos en todos los pedidos por producto ordenado por total de productos descendente.

select sum(pedidos.cantidad) as Cantidad, productos.nombre from pedidos, productos where productos.id=pedidos.id_producto group by productos.id order by Cantidad desc;
/**
┌──────────┬───────────────────────────────────┐
│ Cantidad │              nombre               │
├──────────┼───────────────────────────────────┤
│ 3        │ Hub USB                           │
│ 3        │ Cargador Inalámbrico              │
│ 3        │ Router Wi-Fi                      │
│ 3        │ Ratón Óptico                      │
│ 3        │ Cámara Digital                    │
│ 3        │ TV LED                            │
│ 2        │ Adaptador HDMI                    │
│ 2        │ Webcam HD                         │
│ 2        │ Funda para Tablet                 │
│ 2        │ Estuche para Auriculares          │
│ 2        │ Lámpara LED                       │
│ 2        │ Mochila para Portátil             │
│ 2        │ Reloj Inteligente                 │
│ 2        │ Reproductor de Audio              │
│ 2        │ Auriculares Bluetooth             │
│ 2        │ Laptop                            │
│ 1        │ Funda para Laptop                 │
│ 1        │ Soporte para Teléfono             │
│ 1        │ Kit de Limpieza para Computadoras │
│ 1        │ Tarjeta de Memoria                │
│ 1        │ Batería Externa                   │
│ 1        │ Disco Duro Externo                │
│ 1        │ Monitor LED                       │
│ 1        │ Teclado Inalámbrico               │
│ 1        │ Altavoces Inalámbricos            │
│ 1        │ Impresora                         │
│ 1        │ Tablet                            │
│ 1        │ Smartphone                        │
└──────────┴───────────────────────────────────┘
**/

-- Obtener los productos que no tienen un precio registrado.

select nombre, precio from productos where precio is null;
/**
No devuelve ningún valor
**/

-- Obtener la fecha del último pedido realizado.

select fecha_pedido as fecha, max(id_pedido) as id_pedido from pedidos;
/**
┌────────────┬───────────┐
│   fecha    │ id_pedido │
├────────────┼───────────┤
│ 2024-03-01 │ 30        │
└────────────┴───────────┘
**/

-- Obtener los clientes cuyo nombre tiene al menos 5 caracteres.

select nombre from clientes where nombre regexp '[a-zA-Z]{5,}';
/**
┌─────────────────┐
│     nombre      │
├─────────────────┤
│ Carlos López    │
│ Luisa Martínez  │
│ Pedro Sánchez   │
│ Laura García    │
│ Miguel Martín   │
│ Elena González  │
│ David Torres    │
│ Javier López    │
│ Carmen Vargas   │
│ Daniel Muñoz    │
│ Isabel Serrano  │
│ Alejandro Muñoz │
│ Raquel Herrera  │
│ Francisco Mora  │
│ Marina Díaz     │
│ Antonio Jiménez │
│ Beatriz Romero  │
│ Carlos Gómez    │
│ Clara Sánchez   │
│ Mario Serrano   │
│ Eva Torres      │
│ Roberto Ruiz    │
│ Celia García    │
└─────────────────┘
**/

-- Obtener los productos que tienen la letra 'o' en cualquier posición del nombre.

select nombre from productos where nombre regexp '[Oo]';
/**
┌───────────────────────────────────┐
│              nombre               │
├───────────────────────────────────┤
│ Laptop                            │
│ Smartphone                        │
│ Auriculares Bluetooth             │
│ Impresora                         │
│ Reproductor de Audio              │
│ Altavoces Inalámbricos            │
│ Reloj Inteligente                 │
│ Teclado Inalámbrico               │
│ Ratón Óptico                      │
│ Monitor LED                       │
│ Mochila para Portátil             │
│ Disco Duro Externo                │
│ Router Wi-Fi                      │
│ Tarjeta de Memoria                │
│ Cargador Inalámbrico              │
│ Kit de Limpieza para Computadoras │
│ Soporte para Teléfono             │
│ Funda para Laptop                 │
│ Adaptador HDMI                    │
└───────────────────────────────────┘
**/

-- Obtener la cantidad total de productos en todos los pedidos por cliente ordenado por cliente.

select pedidos.cantidad, clientes.nombre as Cliente from clientes, pedidos where clientes.id=pedidos.id_cliente order by clientes.nombre;
/**
┌──────────┬─────────────────┐
│ cantidad │     Cliente     │
├──────────┼─────────────────┤
│ 3        │ Alejandro Muñoz │
│ 1        │ Ana Rodríguez   │
│ 1        │ Andrés Martínez │
│ 1        │ Antonio Jiménez │
│ 3        │ Beatriz Romero  │
│ 1        │ Carlos Gómez    │
│ 3        │ Carlos López    │
│ 1        │ Carmen Vargas   │
│ 1        │ Celia García    │
│ 2        │ Clara Sánchez   │
│ 2        │ Daniel Muñoz    │
│ 2        │ David Torres    │
│ 1        │ Elena González  │
│ 1        │ Eva Torres      │
│ 1        │ Francisco Mora  │
│ 1        │ Isabel Serrano  │
│ 3        │ Javier López    │
│ 2        │ Juan Pérez      │
│ 3        │ Laura García    │
│ 3        │ Lucía Díaz      │
│ 2        │ Luisa Martínez  │
│ 2        │ Marina Díaz     │
│ 2        │ Mario Serrano   │
│ 1        │ María Gómez     │
│ 2        │ Miguel Martín   │
│ 1        │ Pedro Sánchez   │
│ 2        │ Raquel Herrera  │
│ 2        │ Roberto Ruiz    │
│ 1        │ Sofía Ruiz      │
└──────────┴─────────────────┘
**/

-- Obtener los clientes cuyos nombres no contienen la letra 'i':

select nombre from clientes where nombre not regexp '[Ii]';
/**
┌─────────────────┐
│     nombre      │
├─────────────────┤
│ Juan Pérez      │
│ María Gómez     │
│ Carlos López    │
│ Ana Rodríguez   │
│ Pedro Sánchez   │
│ Laura García    │
│ Elena González  │
│ Carmen Vargas   │
│ Alejandro Muñoz │
│ Raquel Herrera  │
│ Carlos Gómez    │
│ Clara Sánchez   │
│ Andrés Martínez │
│ Lucía Díaz      │
│ Eva Torres      │
└─────────────────┘
**/

-- Obtener los pedidos realizados por el cliente con ID 2 en febrero de 2024.

select pedidos.*, clientes.nombre as Cliente from clientes, pedidos where clientes.id=2 and clientes.id=pedidos.id_cliente and pedidos.fecha_pedido regexp '2024-02';
/**
┌───────────┬────────────┬─────────────┬──────────┬──────────────┬─────────────┐
│ id_pedido │ id_cliente │ id_producto │ cantidad │ fecha_pedido │   Cliente   │
├───────────┼────────────┼─────────────┼──────────┼──────────────┼─────────────┤
│ 2         │ 2          │ 2           │ 1        │ 2024-02-02   │ María Gómez │
└───────────┴────────────┴─────────────┴──────────┴──────────────┴─────────────┘
**/

-- Obtener el precio mínimo de los productos.

select min(precio) as precio, nombre from productos;
/**
┌────────┬───────────────────────────────────┐
│ precio │              nombre               │
├────────┼───────────────────────────────────┤
│ 9.99   │ Kit de Limpieza para Computadoras │
└────────┴───────────────────────────────────┘
**/

-- Obtener los clientes que han realizado al menos un pedido en febrero de 2024.


/**

**/

-- Obtener la fecha del último pedido realizado por el cliente con ID 3.

 select pedidos.fecha_pedido, clientes.id, clientes.nombre from clientes, pedidos where clientes.id=pedidos.id_cliente and pedidos.id_cliente=3;
/**
┌──────────────┬────┬──────────────┐
│ fecha_pedido │ id │    nombre    │
├──────────────┼────┼──────────────┤
│ 2024-02-03   │ 3  │ Carlos López │
└──────────────┴────┴──────────────┘
**/

-- Obtener los productos que tienen una 'a' al final del nombre.

select nombre from productos where nombre regexp 'a$';
/**
┌────────────────────┐
│       nombre       │
├────────────────────┤
│ Impresora          │
│ Batería Externa    │
│ Tarjeta de Memoria │
└────────────────────┘
**/

-- Obtener los clientes cuyos nombres tienen al menos 4 vocales (mayúsculas|minúsculas).

select nombre from clientes where nombre regexp '[AEIOUaeiou]{4}';
/**

**/

-- Obtener los productos cuyo precio tenga al menos 4 números sin contrar los decimales.

select precio, nombre from productos where regexp precio '^[/d]{4,}';
/**

**/

-- Obtener los clientes cuyos nombres tienen al menos una 'a' seguida de una 'e'.

select nombre from clientes where nombre regexp 'ae';
/**
No devuelve ningún dato
**/

-- Obtener los productos cuyos nombres terminan con una consonante.

select nombre from productos where nombre not regexp '[aeiouAEIOU]$';
/**
┌───────────────────────────────────┐
│              nombre               │
├───────────────────────────────────┤
│ Laptop                            │
│ TV LED                            │
│ Tablet                            │
│ Auriculares Bluetooth             │
│ Cámara Digital                    │
│ Altavoces Inalámbricos            │
│ Monitor LED                       │
│ Mochila para Portátil             │
│ Lámpara LED                       │
│ Estuche para Auriculares          │
│ Kit de Limpieza para Computadoras │
│ Funda para Tablet                 │
│ Hub USB                           │
│ Webcam HD                         │
│ Funda para Laptop                 │
└───────────────────────────────────┘
**/

-- Obtener los productos cuyos nombres empiezan con una vocal.

select nombre from productos where nombre regexp '^[aeiouAEIOU]';
/**
┌──────────────────────────┐
│          nombre          │
├──────────────────────────┤
│ Auriculares Bluetooth    │
│ Impresora                │
│ Altavoces Inalámbricos   │
│ Estuche para Auriculares │
│ Adaptador HDMI           │
└──────────────────────────┘
**/