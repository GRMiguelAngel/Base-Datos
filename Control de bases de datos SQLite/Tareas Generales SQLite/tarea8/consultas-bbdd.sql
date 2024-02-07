-- Consulta para obtener el nombre y la edad de los clientes que han comprado coches de la marca Toyota.

select clientes.nombre as Cliente, clientes.edad from clientes, coches, ventas where clientes.id_cliente=ventas.id_cliente and coches.id_coche=ventas.id_coche and coches.marca regexp 'Toyota';
/**
┌────────────┬──────┐
│  Cliente   │ edad │
├────────────┼──────┤
│ Juan Pérez │ 30   │
└────────────┴──────┘
**/

-- Consulta para calcular el precio promedio de los coches vendidos.

select avg(coches.precio) as 'Precio promedio' from coches, ventas where coches.id_coche=ventas.id_coche;
/**
┌──────────────────┐
│ Precio promedio  │
├──────────────────┤
│ 28777.7777777778 │
└──────────────────┘
**/

-- Consulta para obtener el modelo y la marca de los coches vendidos a clientes menores de 30 años.

select coches.marca, coches.modelo, clientes.nombre as Cliente, clientes.edad from ventas, coches, clientes where clientes.id_cliente=ventas.id_cliente and coches.id_coche=ventas.id_coche and clientes.edad<30;
/**
┌───────────┬────────────────┬─────────────────┬──────┐
│   marca   │     modelo     │     Cliente     │ edad │
├───────────┼────────────────┼─────────────────┼──────┤
│ Honda     │ Hatchback 2021 │ María Gómez     │ 25   │
│ Chevrolet │ Coupé 2022     │ Ana Martínez    │ 28   │
│ Hyundai   │ Híbrido 2022   │ Miguel González │ 27   │
│ Tesla     │ Eléctrico 2021 │ Elena Torres    │ 29   │
└───────────┴────────────────┴─────────────────┴──────┘
**/

-- Consulta para contar el número de coches vendidos de cada marca.

select coches.marca, count(ventas.id_coche) as 'Número de ventas' from ventas, coches where coches.id_coche=ventas.id_coche group by coches.marca;
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

-- Consulta para obtener el nombre y la dirección de los clientes que han llevado a reparar sus coches en 2024.

select clientes.nombre as Cliente, clientes.direccion as Dirección, reparacion.fecha_reparación from clientes, reparacion where fecha_reparación regexp '^2024-' and clientes.id_cliente=reparacion.id_cliente;
/**
┌─────────────────┬────────────────┬──────────────────┐
│     Cliente     │   Dirección    │ fecha_reparación │
├─────────────────┼────────────────┼──────────────────┤
│ Francisco Ruiz  │ Calle I #222   │ 2024-01-05       │
│ Elena Torres    │ Avenida J #333 │ 2024-02-10       │
│ Juan Pérez      │ Calle A #123   │ 2024-03-15       │
│ María Gómez     │ Avenida B #456 │ 2024-04-20       │
│ Carlos López    │ Calle C #789   │ 2024-05-25       │
│ Ana Martínez    │ Avenida D #101 │ 2024-06-10       │
│ Pedro Rodríguez │ Calle E #234   │ 2024-07-05       │
│ Laura Sánchez   │ Avenida F #567 │ 2024-08-15       │
│ Miguel González │ Calle G #890   │ 2024-09-20       │
│ Isabel Díaz     │ Avenida H #111 │ 2024-10-25       │
│ Francisco Ruiz  │ Calle I #222   │ 2024-11-05       │
│ Elena Torres    │ Avenida J #333 │ 2024-12-10       │
└─────────────────┴────────────────┴──────────────────┘
**/

-- Consulta para calcular el total gastado en reparaciones por cada cliente.


/**

**/

-- Consulta para obtener el nombre y la edad de los clientes que han comprado coches de más de 30000 euros.

select clientes.nombre as Cliente, clientes.edad, coches.precio from clientes, coches, ventas where clientes.id_cliente=ventas.id_cliente and coches.id_coche=ventas.id_coche and coches.precio>30000;
/**
┌─────────────────┬──────┬─────────┐
│     Cliente     │ edad │ precio  │
├─────────────────┼──────┼─────────┤
│ Pedro Rodríguez │ 40   │ 32000.0 │
│ Isabel Díaz     │ 38   │ 35000.0 │
│ Elena Torres    │ 29   │ 40000.0 │
└─────────────────┴──────┴─────────┘
**/

-- Consulta para calcular el precio medio de los coches vendidos en 2023.

select avg(coches.precio) as 'Precio medio' from coches, ventas where coches.id_coche=ventas.id_coche and ventas.fecha_venta regexp '2023-';

/**
┌──────────────────┐
│   Precio medio   │
├──────────────────┤
│ 28777.7777777778 │
└──────────────────┘
**/

-- Consulta para obtener el nombre y la dirección de los clientes que han comprado coches de la marca Ford.

select clientes.nombre as Cliente, clientes.direccion, coches.marca from coches, ventas, clientes where clientes.id_cliente=ventas.id_cliente and coches.id_coche=ventas.id_coche and coches.marca='Ford';
/**
┌──────────────┬──────────────┬───────┐
│   Cliente    │  direccion   │ marca │
├──────────────┼──────────────┼───────┤
│ Carlos López │ Calle C #789 │ Ford  │
└──────────────┴──────────────┴───────┘

**/

-- Consulta para contar el número de coches vendidos por año.


/**

**/

-- Consulta para obtener el nombre y la edad de los clientes que han comprado coches de más de 30000 euros y llevado a reparar sus coches.


/**

**/

-- Consulta para calcular el precio total de los coches vendidos a clientes menores de 30 años.


/**

**/

-- Consulta para obtener el modelo y el año de los coches vendidos en 2023 y llevados a reparar.


/**

**/

-- Consulta para contar el número de coches vendidos por cliente.


/**

**/

-- Consulta para obtener el nombre y el precio de los coches vendidos a clientes mayores de 35 años.


/**

**/

-- Consulta para calcular el precio total de los coches vendidos a clientes que viven en una calle (en la dirección).


/**

**/

-- Consulta para obtener el nombre y la dirección de los clientes que han comprado coches de más de 30000 euros y llevado a reparar sus coches en 2024.


/**

**/

-- Consulta para calcular el precio medio de los coches vendidos en 2023 y llevados a reparar por clientes menores de 30 años.


/**

**/

-- Consulta para obtener el modelo y el año de los coches vendidos por clientes que tienen una dirección que contiene la palabra "Avenida".


/**

**/

-- Consulta para contar el número de reparaciones realizadas en 2024 por cada cliente.


/**

**/

