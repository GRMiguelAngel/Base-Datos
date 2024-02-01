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
-- Obtener el producto más caro.
-- Obtener los pedidos realizados en febrero de 2024.
-- Obtener la cantidad total de productos en todos los pedidos por producto.
-- Obtener los clientes que han realizado más de un pedido.
-- Obtener los productos que tienen un precio registrado.
-- Obtener la fecha del primer pedido realizado:
-- Obtener los productos cuyos nombres comienzan con 'A' o 'B':
-- Obtener la cantidad total de productos en todos los pedidos por cliente ordenado por cliente.
-- Obtener los clientes que han realizado más de un pedido en febrero de 2024.
-- Obtener los productos con precio entre 100 y 500.
-- Obtener la cantidad total de productos en todos los pedidos por cliente ordenado por cantidad descendente.
-- Obtener los clientes que tienen una 'a' en cualquier posición de su nombre.
-- Obtener el precio máximo de los productos.
-- Obtener los pedidos realizados por el cliente con ID 1 en febrero de 2024.
-- Obtener la cantidad total de productos en todos los pedidos por producto ordenado por total de productos descendente.
-- Obtener los productos que no tienen un precio registrado.
-- Obtener la fecha del último pedido realizado.
-- Obtener los clientes cuyo nombre tiene al menos 5 caracteres.
-- Obtener los productos que tienen la letra 'o' en cualquier posición del nombre.
-- Obtener la cantidad total de productos en todos los pedidos por cliente ordenado por cliente.
-- Obtener los clientes cuyos nombres no contienen la letra 'i':
-- Obtener los pedidos realizados por el cliente con ID 2 en febrero de 2024.
-- Obtener el precio mínimo de los productos.
-- Obtener los clientes que han realizado al menos un pedido en febrero de 2024.
-- Obtener la fecha del último pedido realizado por el cliente con ID 3.
-- Obtener los productos que tienen una 'a' al final del nombre.
-- Obtener los clientes cuyos nombres tienen al menos 4 vocales (mayúsculas|minúsculas).
-- Obtener los productos cuyo precio tenga al menos 4 números sin contrar los decimales.
-- Obtener los clientes cuyos nombres tienen al menos una 'a' seguida de una 'e'.
-- Obtener los productos cuyos nombres terminan con una consonante.
-- Obtener los productos cuyos nombres empiezan con una vocal.