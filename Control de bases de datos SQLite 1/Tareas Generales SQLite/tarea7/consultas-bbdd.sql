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

-- Calcular el total gastado por todos los clientes en coches:
  -- Cosas que debo de tener en cuenta:
    -- Me estan pidiendo la suma total de todos los coches vendidos, NO de aquellos que aún no se han vendido.

-- Listar los coches vendidos junto con la fecha de venta y el nombre del cliente, ordenados por fecha de venta de forma descendente:
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. ¿Por qué campo tengo que ordenadar. Es uno o más campos?

-- Encontrar el modelo de coche más caro que ha sido reparado al menos una vez.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. MAX

-- Mostrar los clientes que han comprado al menos un coche (un coche o más) y la cantidad de coches comprados.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. COUNT

-- Encontrar los clientes que han comprado coches de la marca 'Toyota':
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. Like | regexp | =. Tabla normalizada ?.

-- Calcular el promedio de edad de los clientes que han comprado coches de más de 25,000.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. 

-- Mostrar los modelos de coches y sus precios que fueron comprados por clientes mayores de 30 años.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?.

-- Encontrar los coches vendidos en el año 2022 junto con la cantidad total de ventas en ese año.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?.

-- Listar los coches cuyos precios son mayores que el precio promedio de coches vendidos a clientes menores de 30 años.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. AVG

-- Calcular el total de ventas por marca de coche, ordenado de forma descendente por el total de ventas:
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. COUNT| DESC|ASC precio