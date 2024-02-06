-- Listar los coches vendidos con sus modelos y precios, junto con los nombres de los clientes que los compraron.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. ¿Qué es lo que no me han pedido?
select coches.marca, coches.modelo, coches.precio, clientes.nombre from clientes, ventas, coches where clientes.id_cliente=ventas.id_cliente and ventas.id_coche=coches.id_coche;
/**
┌────────────┬────────────────┬─────────┬─────────────────┐
│   marca    │     modelo     │ precio  │     nombre      │
├────────────┼────────────────┼─────────┼─────────────────┤
│ Toyota     │ Sedán 2022     │ 25000.0 │ Juan Pérez      │
│ Honda      │ Hatchback 2021 │ 22000.0 │ María Gómez     │
│ Ford       │ SUV 2023       │ 30000.0 │ Carlos López    │
│ Chevrolet  │ Coupé 2022     │ 28000.0 │ Ana Martínez    │
│ Nissan     │ Camioneta 2023 │ 32000.0 │ Pedro Rodríguez │
│ Volkswagen │ Compacto 2021  │ 20000.0 │ Laura Sánchez   │
│ Hyundai    │ Híbrido 2022   │ 27000.0 │ Miguel González │
│ Mazda      │ Deportivo 2023 │ 35000.0 │ Isabel Díaz     │
│ Tesla      │ Eléctrico 2021 │ 40000.0 │ Elena Torres    │
└────────────┴────────────────┴─────────┴─────────────────┘
**/

-- Encontrar los clientes que han comprado coches con precios superiores al promedio de todos los coches vendidos.
  -- Cosas que debo de tener en cuenta:
    -- Precios superiores.
    -- Obtener la media. AVG(precio)

select clientes.nombre as Cliente, coches.marca, coches.modelo, coches.precio from clientes, coches, ventas where clientes.id_cliente=ventas.id_cliente and ventas.id_coche=coches.id_coche and precio > (select avg(precio) from coches);
/**
┌─────────────────┬────────┬────────────────┬─────────┐
│     Cliente     │ marca  │     modelo     │ precio  │
├─────────────────┼────────┼────────────────┼─────────┤
│ Carlos López    │ Ford   │ SUV 2023       │ 30000.0 │
│ Pedro Rodríguez │ Nissan │ Camioneta 2023 │ 32000.0 │
│ Isabel Díaz     │ Mazda  │ Deportivo 2023 │ 35000.0 │
│ Elena Torres    │ Tesla  │ Eléctrico 2021 │ 40000.0 │
└─────────────────┴────────┴────────────────┴─────────┘
**/

-- Mostrar los modelos de coches y sus precios que no han sido vendidos aún:

  -- Cosas que debo de tener en cuenta:
    -- Coches que han sido vendidos.
    -- Quiero los coches que no han sido vendidos. NOT id_coche IN ventas

select id_coche, modelo, precio from coches where coches.id_coche not in(select id_coche from ventas);
/**
┌──────────┬─────────────┬─────────┐
│ id_coche │   modelo    │ precio  │
├──────────┼─────────────┼─────────┤
│ 9        │ Pickup 2022 │ 31000.0 │
└──────────┴─────────────┴─────────┘
**/

-- Calcular el total gastado por todos los clientes en coches:
  -- Cosas que debo de tener en cuenta:
    -- Me estan pidiendo la suma total de todos los coches vendidos, NO de aquellos que aún no se han vendido.

select sum(coches.precio) as 'Total Gastado' from ventas, coches where coches.id_coche=ventas.id_coche;
/**
┌───────────────┐
│ Total Gastado │
├───────────────┤
│ 259000.0      │
└───────────────┘
**/

-- Listar los coches vendidos junto con la fecha de venta y el nombre del cliente, ordenados por fecha de venta de forma descendente:
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. ¿Por qué campo tengo que ordenadar. Es uno o más campos?

select coches.id_coche, coches.marca, coches.modelo, ventas.fecha_venta, clientes.nombre from ventas, clientes, coches where clientes.id_cliente=ventas.id_cliente and coches.id_coche=ventas.id_coche order by ventas.fecha_venta;
/**
┌──────────┬────────────┬────────────────┬─────────────┬─────────────────┐
│ id_coche │   marca    │     modelo     │ fecha_venta │     nombre      │
├──────────┼────────────┼────────────────┼─────────────┼─────────────────┤
│ 1        │ Toyota     │ Sedán 2022     │ 2023-01-15  │ Juan Pérez      │
│ 2        │ Honda      │ Hatchback 2021 │ 2023-02-20  │ María Gómez     │
│ 3        │ Ford       │ SUV 2023       │ 2023-03-25  │ Carlos López    │
│ 4        │ Chevrolet  │ Coupé 2022     │ 2023-04-10  │ Ana Martínez    │
│ 5        │ Nissan     │ Camioneta 2023 │ 2023-05-05  │ Pedro Rodríguez │
│ 6        │ Volkswagen │ Compacto 2021  │ 2023-06-15  │ Laura Sánchez   │
│ 7        │ Hyundai    │ Híbrido 2022   │ 2023-07-20  │ Miguel González │
│ 8        │ Mazda      │ Deportivo 2023 │ 2023-08-25  │ Isabel Díaz     │
│ 10       │ Tesla      │ Eléctrico 2021 │ 2023-10-05  │ Elena Torres    │
└──────────┴────────────┴────────────────┴─────────────┴─────────────────┘
**/

-- Encontrar el modelo de coche más caro que ha sido reparado al menos una vez.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. MAX

-- Mostrar los clientes que han comprado al menos un coche (un coche o más) y la cantidad de coches comprados.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. COUNT

select clientes.nombre as Cliente, count(ventas.id_cliente) as 'Número de compras' from ventas, clientes where clientes.id_cliente=ventas.id_cliente group by clientes.nombre;
/**
┌─────────────────┬───────────────────┐
│     Cliente     │ Número de compras │
├─────────────────┼───────────────────┤
│ Ana Martínez    │ 1                 │
│ Carlos López    │ 1                 │
│ Elena Torres    │ 1                 │
│ Isabel Díaz     │ 1                 │
│ Juan Pérez      │ 1                 │
│ Laura Sánchez   │ 1                 │
│ María Gómez     │ 1                 │
│ Miguel González │ 1                 │
│ Pedro Rodríguez │ 1                 │
└─────────────────┴───────────────────┘
**/

-- Encontrar los clientes que han comprado coches de la marca 'Toyota':
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. Like | regexp | =. Tabla normalizada ?.

select clientes.nombre as Cliente, coches.marca from coches, clientes, ventas where coches.id_coche=ventas.id_coche and clientes.id_cliente=ventas.id_cliente and coches.marca regexp '^Toyota$';
/**
┌────────────┬────────┐
│  Cliente   │ marca  │
├────────────┼────────┤
│ Juan Pérez │ Toyota │
└────────────┴────────┘
**/

-- Calcular el promedio de edad de los clientes que han comprado coches de más de 25,000.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. 

select avg(clientes.edad) as 'Promedio de edad' from coches, ventas, clientes where coches.id_coche=ventas.id_coche and clientes.id_cliente=ventas.id_cliente and coches.precio>25000;
/**
┌──────────────────┐
│ Promedio de edad │
├──────────────────┤
│ 32.8333333333333 │
└──────────────────┘
**/

-- Mostrar los modelos de coches y sus precios que fueron comprados por clientes mayores de 30 años.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?.

select coches.modelo, coches.precio, clientes.nombre as Cliente, clientes.edad from clientes, ventas, coches where coches.id_coche=ventas.id_coche and clientes.id_cliente=ventas.id_cliente and clientes.edad>30;
/**
┌────────────────┬─────────┬─────────────────┬──────┐
│     modelo     │ precio  │     Cliente     │ edad │
├────────────────┼─────────┼─────────────────┼──────┤
│ SUV 2023       │ 30000.0 │ Carlos López    │ 35   │
│ Camioneta 2023 │ 32000.0 │ Pedro Rodríguez │ 40   │
│ Compacto 2021  │ 20000.0 │ Laura Sánchez   │ 32   │
│ Deportivo 2023 │ 35000.0 │ Isabel Díaz     │ 38   │
└────────────────┴─────────┴─────────────────┴──────┘
**/

-- Encontrar los coches vendidos en el año 2022 junto con la cantidad total de ventas en ese año.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?.

select coches.marca, coches.modelo, count(ventas.id_coche) as 'Ventas totales' from ventas, coches where ventas.fecha_venta regexp '2022-';
/**
┌───────┬────────┬────────────────┐
│ marca │ modelo │ Ventas totales │
├───────┼────────┼────────────────┤
│       │        │ 0              │
└───────┴────────┴────────────────┘
**/

-- Listar los coches cuyos precios son mayores que el precio promedio de coches vendidos a clientes menores de 30 años.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. AVG

select coches.marca, coches.modelo, coches.precio from ventas, clientes, coches where coches.id_coche=ventas.id_coche and clientes.id_cliente=ventas.id_cliente and precio>(select avg(coches.precio) from coches, clientes where clientes.edad<30);
/**
┌────────┬────────────────┬─────────┐
│ marca  │     modelo     │ precio  │
├────────┼────────────────┼─────────┤
│ Ford   │ SUV 2023       │ 30000.0 │
│ Nissan │ Camioneta 2023 │ 32000.0 │
│ Mazda  │ Deportivo 2023 │ 35000.0 │
│ Tesla  │ Eléctrico 2021 │ 40000.0 │
└────────┴────────────────┴─────────┘
**/

-- Calcular el total de ventas por marca de coche, ordenado de forma descendente por el total de ventas:
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. COUNT| DESC|ASC precio

    select coches.marca, count(coches.id_coche) as 'Número de ventas' from coches, ventas where coches.id_coche=ventas.id_coche group by coches.marca order by 'Número de ventas';
/**
┌────────────┬──────────────────┐
│   marca    │ Número de ventas │
├────────────┼──────────────────┤
│ Chevrolet  │ 1                │
│ Ford       │ 1                │
│ Honda      │ 1                │
│ Hyundai    │ 1                │
│ Mazda      │ 1                │
│ Nissan     │ 1                │
│ Tesla      │ 1                │
│ Toyota     │ 1                │
│ Volkswagen │ 1                │
└────────────┴──────────────────┘
**/