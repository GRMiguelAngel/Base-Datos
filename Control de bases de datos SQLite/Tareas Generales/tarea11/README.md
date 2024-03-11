# Tarea 11: Base de datos de Jardinería

<img width="700" height="525" src='asesoramiento-en-jardineria-1.webp'>

<br>

## **Consultas SQL sobre una tabla**

- Devuelve un listado con el código de oficina y la ciudad donde hay oficinas.

```sql
select codigo_oficina, ciudad FROM oficina;
```
| codigo_oficina |        ciudad        |
|----------------|----------------------|
| BCN-ES         | Barcelona            |
| BOS-USA        | Boston               |
| LON-UK         | Londres              |
| MAD-ES         | Madrid               |
| PAR-FR         | Paris                |
| SFC-USA        | San Francisco        |
| SYD-AU         | Sydney               |
| TAL-ES         | Talavera de la Reina |
| TOK-JP         | Tokyo                |


- Devuelve un listado con la ciudad y el teléfono de las oficinas de España.

```sql
select ciudad, telefono from oficina WHERE pais='España';
```
|        ciudad        |    telefono    |
|----------------------|----------------|
| Barcelona            | +34 93 3561182 |
| Madrid               | +34 91 7514487 |
| Talavera de la Reina | +34 925 867231 |


- Devuelve un listado con el nombre, apellidos y email de los empleados cuyo jefe tiene un código de jefe igual a 7.

```sql
select nombre, apellido1, apellido2, email from empleado WHERE codigo_jefe=7;
```
| nombre  | apellido1 | apellido2 |          email           |
|---------|-----------|-----------|--------------------------|
| Mariano | López     | Murcia    | mlopez@jardineria.es     |
| Lucio   | Campoamor | Martín    | lcampoamor@jardineria.es |
| Hilario | Rodriguez | Huertas   | hrodriguez@jardineria.es |

- Devuelve el nombre del puesto, nombre, apellidos y email del jefe de la empresa.

```sql
select puesto, nombre, apellido1, apellido2, email FROM empleado WHERE codigo_jefe is null;
```
|      puesto      | nombre | apellido1 | apellido2 |        email         |
|------------------|--------|-----------|-----------|----------------------|
| Director General | Marcos | Magaña    | Perez     | marcos@jardineria.es |


- Devuelve un listado con el nombre, apellidos y puesto de aquellos empleados que no sean representantes de ventas.

```sql
select nombre, apellido1, apellido2, puesto from empleado where not puesto='Representante Ventas';
```
|  nombre  | apellido1  | apellido2 |        puesto         |
|----------|------------|-----------|-----------------------|
| Marcos   | Magaña     | Perez     | Director General      |
| Ruben    | López      | Martinez  | Subdirector Marketing |
| Alberto  | Soria      | Carrasco  | Subdirector Ventas    |
| Maria    | Solís      | Jerez     | Secretaria            |
| Carlos   | Soria      | Jimenez   | Director Oficina      |
| Emmanuel | Magaña     | Perez     | Director Oficina      |
| Francois | Fignon     |           | Director Oficina      |
| Michael  | Bolton     |           | Director Oficina      |
| Hilary   | Washington |           | Director Oficina      |
| Nei      | Nishikori  |           | Director Oficina      |
| Amy      | Johnson    |           | Director Oficina      |
| Kevin    | Fallmer    |           | Director Oficina      |

- Devuelve un listado con el nombre de los todos los clientes españoles.

```sql
select nombre_cliente from cliente WHERE pais='Spain';
```
|         nombre_cliente         |
|--------------------------------|
| Lasas S.A.                     |
| Beragua                        |
| Club Golf Puerta del hierro    |
| Naturagua                      |
| DaraDistribuciones             |
| Madrileña de riegos            |
| Lasas S.A.                     |
| Camunas Jardines S.L.          |
| Dardena S.A.                   |
| Jardin de Flores               |
| Flores Marivi                  |
| Flowers, S.A                   |
| Naturajardin                   |
| Golf S.A.                      |
| Americh Golf Management SL     |
| Aloha                          |
| El Prat                        |
| Sotogrande                     |
| Vivero Humanes                 |
| Fuenla City                    |
| Jardines y Mansiones Cactus SL |
| Jardinerías Matías SL          |
| Agrojardin                     |
| Top Campo                      |
| Jardineria Sara                |
| Campohermoso                   |
| Flores S.L.                    |

- Devuelve un listado con los distintos estados por los que puede pasar un pedido.

```sql
select distinct estado from pedido ;
```
|  estado   |
|-----------|
| Entregado |
| Rechazado |
| Pendiente |

- Devuelve un listado con el código de cliente de aquellos clientes que realizaron algún pago en 2008. Tenga en cuenta que deberá eliminar aquellos códigos de cliente que aparezcan repetidos.

```sql
select distinct codigo_cliente FROM pago WHERE fecha_pago regexp '^2008-';
```
| codigo_cliente |
|----------------|
| 1              |
| 13             |
| 14             |
| 26             |

- Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos que no han sido entregados a tiempo.

```sql
select codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega FROM pedido where fecha_esperada<fecha_entrega;
```
| codigo_pedido | codigo_cliente | fecha_esperada | fecha_entrega |
|---------------|----------------|----------------|---------------|
| 9             | 1              | 2008-12-27     | 2008-12-28    |
| 13            | 7              | 2009-01-14     | 2009-01-15    |
| 16            | 7              | 2009-01-07     | 2009-01-15    |
| 17            | 7              | 2009-01-09     | 2009-01-11    |
| 18            | 9              | 2009-01-06     | 2009-01-07    |
| 22            | 9              | 2009-01-11     | 2009-01-13    |
| 28            | 3              | 2009-02-17     | 2009-02-20    |
| 31            | 13             | 2008-09-30     | 2008-10-04    |
| 32            | 4              | 2007-01-19     | 2007-01-27    |
| 38            | 19             | 2009-03-06     | 2009-03-07    |
| 39            | 19             | 2009-03-07     | 2009-03-09    |
| 40            | 19             | 2009-03-10     | 2009-03-13    |
| 42            | 19             | 2009-03-23     | 2009-03-27    |
| 43            | 23             | 2009-03-26     | 2009-03-28    |
| 44            | 23             | 2009-03-27     | 2009-03-30    |
| 45            | 23             | 2009-03-04     | 2009-03-07    |
| 46            | 23             | 2009-03-04     | 2009-03-05    |
| 49            | 26             | 2008-07-22     | 2008-07-30    |
| 55            | 14             | 2009-01-10     | 2009-01-11    |
| 60            | 1              | 2008-12-27     | 2008-12-28    |
| 68            | 3              | 2009-02-17     | 2009-02-20    |
| 92            | 27             | 2009-04-30     | 2009-05-03    |
| 96            | 35             | 2008-04-12     | 2008-04-13    |
| 103           | 30             | 2009-01-20     | 2009-01-24    |
| 106           | 30             | 2009-05-15     | 2009-05-20    |
| 112           | 36             | 2009-04-06     | 2009-05-07    |
| 113           | 36             | 2008-11-09     | 2009-01-09    |
| 114           | 36             | 2009-01-29     | 2009-01-31    |
| 115           | 36             | 2009-01-26     | 2009-02-27    |
| 123           | 30             | 2009-01-20     | 2009-01-24    |
| 126           | 30             | 2009-05-15     | 2009-05-20    |
| 128           | 38             | 2008-12-10     | 2008-12-29    |

- Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos cuya fecha de entrega ha sido al menos dos días antes de la fecha esperada.

```sql

```

- Devuelve un listado de todos los pedidos que fueron rechazados en 2009.

```sql
SELECT * FROM pedido where estado='Rechazado' and fecha_pedido regexp '^2009-';
```
| codigo_pedido | fecha_pedido | fecha_esperada | fecha_entrega |  estado   |                               comentarios                                | codigo_cliente |
|---------------|--------------|----------------|---------------|-----------|--------------------------------------------------------------------------|----------------|
| 14            | 2009-01-02   | 2009-01-02     |               | Rechazado | mal pago                                                                 | 7              |
| 21            | 2009-01-09   | 2009-01-09     | 2009-01-09    | Rechazado | mal pago                                                                 | 9              |
| 25            | 2009-02-02   | 2009-02-08     |               | Rechazado | El cliente carece de saldo en la cuenta asociada                         | 1              |
| 26            | 2009-02-06   | 2009-02-12     |               | Rechazado | El cliente anula la operacion para adquirir mas producto                 | 3              |
| 40            | 2009-03-09   | 2009-03-10     | 2009-03-13    | Rechazado |                                                                          | 19             |
| 46            | 2009-04-03   | 2009-03-04     | 2009-03-05    | Rechazado |                                                                          | 23             |
| 65            | 2009-02-02   | 2009-02-08     |               | Rechazado | El cliente carece de saldo en la cuenta asociada                         | 1              |
| 66            | 2009-02-06   | 2009-02-12     |               | Rechazado | El cliente anula la operacion para adquirir mas producto                 | 3              |
| 74            | 2009-01-14   | 2009-01-22     |               | Rechazado | El pedido no llego el dia que queria el cliente por fallo del transporte | 15             |
| 81            | 2009-01-18   | 2009-01-24     |               | Rechazado | Los producto estaban en mal estado                                       | 28             |
| 101           | 2009-03-07   | 2009-03-27     |               | Rechazado | El pedido fue rechazado por el cliente                                   | 16             |
| 105           | 2009-02-14   | 2009-02-20     |               | Rechazado | el producto ha sido rechazado por la pesima calidad                      | 30             |
| 120           | 2009-03-07   | 2009-03-27     |               | Rechazado | El pedido fue rechazado por el cliente                                   | 16             |
| 125           | 2009-02-14   | 2009-02-20     |               | Rechazado | el producto ha sido rechazado por la pesima calidad                      | 30             |

- Devuelve un listado de todos los pedidos que han sido entregados en el mes de enero de cualquier año.

```sql
SELECT * FROM pedido where fecha_pedido regexp '-01-';
```
| codigo_pedido | fecha_pedido | fecha_esperada | fecha_entrega |  estado   |                               comentarios                                | codigo_cliente |
|---------------|--------------|----------------|---------------|-----------|--------------------------------------------------------------------------|----------------|
| 1             | 2006-01-17   | 2006-01-19     | 2006-01-19    | Entregado | Pagado a plazos                                                          | 5              |
| 4             | 2009-01-20   | 2009-01-26     |               | Pendiente |                                                                          | 5              |
| 10            | 2009-01-15   | 2009-01-20     |               | Pendiente | El cliente llama para confirmar la fecha - Esperando al proveedor        | 3              |
| 11            | 2009-01-20   | 2009-01-27     |               | Pendiente | El cliente requiere que el pedido se le entregue de 16:00h a 22:00h      | 1              |
| 12            | 2009-01-22   | 2009-01-27     |               | Pendiente | El cliente requiere que el pedido se le entregue de 9:00h a 13:00h       | 1              |
| 13            | 2009-01-12   | 2009-01-14     | 2009-01-15    | Entregado |                                                                          | 7              |
| 14            | 2009-01-02   | 2009-01-02     |               | Rechazado | mal pago                                                                 | 7              |
| 15            | 2009-01-09   | 2009-01-12     | 2009-01-11    | Entregado |                                                                          | 7              |
| 16            | 2009-01-06   | 2009-01-07     | 2009-01-15    | Entregado |                                                                          | 7              |
| 17            | 2009-01-08   | 2009-01-09     | 2009-01-11    | Entregado | mal estado                                                               | 7              |
| 18            | 2009-01-05   | 2009-01-06     | 2009-01-07    | Entregado |                                                                          | 9              |
| 19            | 2009-01-18   | 2009-02-12     |               | Pendiente | entregar en murcia                                                       | 9              |
| 20            | 2009-01-20   | 2009-02-15     |               | Pendiente |                                                                          | 9              |
| 21            | 2009-01-09   | 2009-01-09     | 2009-01-09    | Rechazado | mal pago                                                                 | 9              |
| 22            | 2009-01-11   | 2009-01-11     | 2009-01-13    | Entregado |                                                                          | 9              |
| 32            | 2007-01-07   | 2007-01-19     | 2007-01-27    | Entregado | Entrega tardia, el cliente puso reclamacion                              | 4              |
| 54            | 2009-01-11   | 2009-02-11     |               | Pendiente |                                                                          | 14             |
| 57            | 2009-01-05   | 2009-02-05     |               | Pendiente |                                                                          | 13             |
| 58            | 2009-01-24   | 2009-01-31     | 2009-01-30    | Entregado | Todo correcto                                                            | 3              |
| 61            | 2009-01-15   | 2009-01-20     |               | Pendiente | El cliente llama para confirmar la fecha - Esperando al proveedor        | 3              |
| 62            | 2009-01-20   | 2009-01-27     |               | Pendiente | El cliente requiere que el pedido se le entregue de 16:00h a 22:00h      | 1              |
| 63            | 2009-01-22   | 2009-01-27     |               | Pendiente | El cliente requiere que el pedido se le entregue de 9:00h a 13:00h       | 1              |
| 64            | 2009-01-24   | 2009-01-31     | 2009-01-30    | Entregado | Todo correcto                                                            | 1              |
| 74            | 2009-01-14   | 2009-01-22     |               | Rechazado | El pedido no llego el dia que queria el cliente por fallo del transporte | 15             |
| 75            | 2009-01-11   | 2009-01-13     | 2009-01-13    | Entregado | El pedido llego perfectamente                                            | 15             |
| 77            | 2009-01-03   | 2009-01-08     |               | Pendiente | El pedido no pudo ser entregado por problemas meteorologicos             | 15             |
| 79            | 2009-01-12   | 2009-01-13     | 2009-01-13    | Entregado |                                                                          | 28             |
| 80            | 2009-01-25   | 2009-01-26     |               | Pendiente | No terminó el pago                                                       | 28             |
| 81            | 2009-01-18   | 2009-01-24     |               | Rechazado | Los producto estaban en mal estado                                       | 28             |
| 82            | 2009-01-20   | 2009-01-29     | 2009-01-29    | Entregado | El pedido llego un poco mas tarde de la hora fijada                      | 28             |
| 83            | 2009-01-24   | 2009-01-28     |               | Entregado |                                                                          | 28             |
| 95            | 2008-01-04   | 2008-01-19     | 2008-01-19    | Entregado |                                                                          | 35             |
| 98            | 2009-01-08   | 2009-02-13     |               | Pendiente |                                                                          | 35             |
| 100           | 2009-01-10   | 2009-01-15     | 2009-01-15    | Entregado | El pedido llego perfectamente                                            | 16             |
| 103           | 2009-01-15   | 2009-01-20     | 2009-01-24    | Pendiente |                                                                          | 30             |
| 114           | 2009-01-15   | 2009-01-29     | 2009-01-31    | Entregado | El envio llego dos dias más tarde debido al mal tiempo                   | 36             |
| 119           | 2009-01-10   | 2009-01-15     | 2009-01-15    | Entregado | El pedido llego perfectamente                                            | 16             |
| 123           | 2009-01-15   | 2009-01-20     | 2009-01-24    | Pendiente |                                                                          | 30             |

- Devuelve un listado con todos los pagos que se realizaron en el año 2008 mediante Paypal. Ordene el resultado de mayor a menor.

```sql
select * from pago where forma_pago='PayPal' and fecha_pago regexp '^2008-' order by total desc;
```
| codigo_cliente | forma_pago | id_transaccion | fecha_pago | total |
|----------------|------------|----------------|------------|-------|
| 26             | PayPal     | ak-std-000020  | 2008-03-18 | 18846 |
| 14             | PayPal     | ak-std-000015  | 2008-07-15 | 4160  |
| 13             | PayPal     | ak-std-000014  | 2008-08-04 | 2246  |
| 1              | PayPal     | ak-std-000001  | 2008-11-10 | 2000  |
| 1              | PayPal     | ak-std-000002  | 2008-12-10 | 2000  |

- Devuelve un listado con todas las formas de pago que aparecen en la tabla pago. Tenga en cuenta que no deben aparecer formas de pago repetidas.

```sql
select distinct forma_pago from pago;
```
|  forma_pago   |
|---------------|
| PayPal        |
| Transferencia |
| Cheque        |

- Devuelve un listado con todos los productos que pertenecen a la gama Ornamentales y que tienen más de 100 unidades en stock. El listado deberá estar ordenado por su precio de venta, mostrando en primer lugar los de mayor precio.

```sql
select * from producto where cantidad_en_stock=100 and gama='Ornamentales' order by precio_venta desc;
```
| codigo_producto |                           nombre                            |     gama     | dimensiones |    proveedor     |                                                                                                                                                                                                                                                                                                                                                                 descripcion                                                                                                                                                                                                                                                                                                                                                                  | cantidad_en_stock | precio_venta | precio_proveedor |
|-----------------|-------------------------------------------------------------|--------------|-------------|------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------|--------------|------------------|
| OR-215          | Brahea Armata                                               | Ornamentales | 120 - 140   | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 112          | 89               |
| OR-222          | Butia Capitata                                              | Ornamentales | 130 - 150   | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 87           | 69               |
| OR-217          | Brahea Edulis                                               | Ornamentales | 140 - 160   | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 64           | 51               |
| OR-227          | Chamaerops Humilis                                          | Ornamentales | 130 - 150   | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 64           | 51               |
| OR-221          | Butia Capitata                                              | Ornamentales | 85 - 105    | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 59           | 47               |
| OR-236          | Jubaea Chilensis                                            | Ornamentales |             | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 49           | 39               |
| OR-134          | Nerium Oleander Arbusto GRANDE                              | Ornamentales | 160-200     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 38           | 30               |
| OR-226          | Chamaerops Humilis                                          | Ornamentales | 115 - 130   | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 38           | 30               |
| OR-230          | Cordyline Australis -DRACAENA                               | Ornamentales | 190 - 210   | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 38           | 30               |
| OR-220          | Butia Capitata                                              | Ornamentales | 90 - 120    | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 36           | 28               |
| OR-232          | Cycas Revoluta                                              | Ornamentales | 80 - 90     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 34           | 27               |
| OR-228          | Chamaerops Humilis \"Cerifera\"                             | Ornamentales | 70 - 80     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 32           | 25               |
| OR-219          | Butia Capitata                                              | Ornamentales | 90 - 110    | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 29           | 23               |
| OR-218          | Butia Capitata                                              | Ornamentales | 70 - 90     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 25           | 20               |
| OR-229          | Chrysalidocarpus Lutescens -ARECA                           | Ornamentales | 130 - 150   | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 22           | 17               |
| OR-216          | Brahea Edulis                                               | Ornamentales | 80 - 100    | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 19           | 15               |
| OR-136          | Nerium oleander ARBOL Calibre 8/10                          | Ornamentales | 225-250     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 18           | 14               |
| OR-149          | Bougamvillea Sanderiana Espaldera                           | Ornamentales | 140-150     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 17           | 13               |
| OR-231          | Cycas Revoluta                                              | Ornamentales | 55 - 65     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 15           | 12               |
| OR-99           | Mimosa DEALBATA Gaulois Astier                              | Ornamentales | 200-225     | Viveros EL OASIS | Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente... | 100               | 14           | 11               |
| OR-100          | Mimosa Injerto CLASICA Dealbata                             | Ornamentales | 100-110     | Viveros EL OASIS | Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente... | 100               | 12           | 9                |
| OR-144          | Wisteria Sinensis INJERTADAS DECÃ“                          | Ornamentales | 140-150     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 12           | 9                |
| OR-103          | Mimosa Semilla Bayleyana                                    | Ornamentales | 200-225     | Viveros EL OASIS | Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente... | 100               | 10           | 8                |
| OR-104          | Mimosa Semilla Cyanophylla                                  | Ornamentales | 200-225     | Viveros EL OASIS | Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente... | 100               | 10           | 8                |
| OR-106          | Mimosa Semilla Longifolia                                   | Ornamentales | 200-225     | Viveros EL OASIS | Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente... | 100               | 10           | 8                |
| OR-156          | Acer platanoides                                            | Ornamentales | 200-225     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 10           | 8                |
| OR-157          | Acer Pseudoplatanus                                         | Ornamentales | 200-225     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 10           | 8                |
| OR-160          | Brachychiton Rupestris                                      | Ornamentales | 170-200     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 10           | 8                |
| OR-162          | Cassia Corimbosa                                            | Ornamentales | 200-225     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 10           | 8                |
| OR-225          | Chamaerops Humilis                                          | Ornamentales | 70 - 90     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 10           | 8                |
| OR-143          | Wisteria Sinensis  azul, rosa, blanca                       | Ornamentales |             | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 9            | 7                |
| OR-147          | Bougamvillea Sanderiana Tutor                               | Ornamentales | 180-200     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 7            | 5                |
| OR-148          | Bougamvillea Sanderiana Espaldera                           | Ornamentales | 45-50       | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 7            | 5                |
| OR-224          | Chamaerops Humilis                                          | Ornamentales | 50 - 60     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 7            | 5                |
| OR-101          | Expositor Mimosa Semilla Mix                                | Ornamentales | 170-200     | Viveros EL OASIS | Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente... | 100               | 6            | 4                |
| OR-102          | Mimosa Semilla Bayleyana                                    | Ornamentales | 170-200     | Viveros EL OASIS | Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente... | 100               | 6            | 4                |
| OR-105          | Mimosa Semilla Espectabilis                                 | Ornamentales | 160-170     | Viveros EL OASIS | Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente... | 100               | 6            | 4                |
| OR-107          | Mimosa Semilla Floribunda 4 estaciones                      | Ornamentales | 120-140     | Viveros EL OASIS | Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente... | 100               | 6            | 4                |
| OR-151          | Bougamvillea Sanderiana, 3 tut. piramide                    | Ornamentales |             | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 6            | 4                |
| OR-152          | Expositor Árboles clima continental                         | Ornamentales | 170-200     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 6            | 4                |
| OR-153          | Expositor Árboles clima mediterráneo                        | Ornamentales | 170-200     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 6            | 4                |
| OR-154          | Expositor Árboles borde del mar                             | Ornamentales | 170-200     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 6            | 4                |
| OR-155          | Acer Negundo                                                | Ornamentales | 200-225     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 6            | 4                |
| OR-158          | Brachychiton Acerifolius                                    | Ornamentales | 200-225     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 6            | 4                |
| OR-159          | Brachychiton Discolor                                       | Ornamentales | 200-225     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 6            | 4                |
| OR-161          | Cassia Corimbosa                                            | Ornamentales | 200-225     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 6            | 4                |
| OR-108          | Abelia Floribunda                                           | Ornamentales | 35-45       | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 5            | 4                |
| OR-109          | Callistemom (Mix)                                           | Ornamentales | 35-45       | Viveros EL OASIS | Limpitatubos. arbolito de 6-7 m de altura. Ramas flexibles y colgantes (de ahí lo de \"llorón\")..                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | 100               | 5            | 4                |
| OR-111          | Corylus Avellana \"Contorta\"                               | Ornamentales | 35-45       | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 5            | 4                |
| OR-135          | Nerium oleander COPA  Calibre 6/8                           | Ornamentales | 50-60       | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 5            | 4                |
| OR-137          | ROSAL TREPADOR                                              | Ornamentales |             | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 4            | 3                |
| OR-138          | Camelia Blanco, Chrysler Rojo, Soraya Naranja,              | Ornamentales |             | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 4            | 3                |
| OR-139          | Landora Amarillo, Rose Gaujard bicolor blanco-rojo          | Ornamentales |             | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 4            | 3                |
| OR-140          | Kordes Perfect bicolor rojo-amarillo, Roundelay rojo fuerte | Ornamentales |             | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 4            | 3                |
| OR-141          | Pitimini rojo                                               | Ornamentales |             | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 4            | 3                |
| OR-146          | Bougamvillea Sanderiana Tutor                               | Ornamentales | 125-150     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 4            | 3                |
| OR-223          | Chamaerops Humilis                                          | Ornamentales | 40 - 45     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 4            | 3                |
| OR-110          | Callistemom (Mix)                                           | Ornamentales | 40-60       | Viveros EL OASIS | Limpitatubos. arbolito de 6-7 m de altura. Ramas flexibles y colgantes (de ahí lo de \"llorón\")..                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | 100               | 2            | 1                |
| OR-142          | Solanum Jazminoide                                          | Ornamentales | 150-160     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 2            | 1                |
| OR-145          | Bougamvillea Sanderiana Tutor                               | Ornamentales | 80-100      | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 2            | 1                |
| OR-150          | Bougamvillea roja, naranja                                  | Ornamentales | 110-130     | Viveros EL OASIS |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | 100               | 2            | 1                |

- Devuelve un listado con todos los clientes que sean de la ciudad de Madrid y cuyo representante de ventas tenga el código de empleado 11 o 30.

```sql
select * from cliente where ciudad='Madrid' and codigo_empleado_rep_ventas in (11,30);
```
| codigo_cliente |       nombre_cliente        | nombre_contacto | apellido_contacto | telefono  |    fax    | linea_direccion1  | linea_direccion2 | ciudad | region | pais  | codigo_postal | codigo_empleado_rep_ventas | limite_credito |
|----------------|-----------------------------|-----------------|-------------------|-----------|-----------|-------------------|------------------|--------|--------|-------|---------------|----------------------------|----------------|
| 7              | Beragua                     | Jose            | Bermejo           | 654987321 | 916549872 | C/pintor segundo  | Getafe           | Madrid | Madrid | Spain | 28942         | 11                         | 20000          |
| 8              | Club Golf Puerta del hierro | Paco            | Lopez             | 62456810  | 919535678 | C/sinesio delgado | Madrid           | Madrid | Madrid | Spain | 28930         | 11                         | 40000          |
| 9              | Naturagua                   | Guillermo       | Rengifo           | 689234750 | 916428956 | C/majadahonda     | Boadilla         | Madrid | Madrid | Spain | 28947         | 11                         | 32000          |
| 10             | DaraDistribuciones          | David           | Serrano           | 675598001 | 916421756 | C/azores          | Fuenlabrada      | Madrid | Madrid | Spain | 28946         | 11                         | 50000          |
| 11             | Madrileña de riegos         | Jose            | Tacaño            | 655983045 | 916689215 | C/Lagañas         | Fuenlabrada      | Madrid | Madrid | Spain | 28943         | 11                         | 20000          |
| 15             | Jardin de Flores            | Javier          | Villar            | 654865643 | 914538776 | C/ Oña 34         |                  | Madrid | Madrid | Spain | 28950         | 30                         | 40000          |
| 18             | Naturajardin                | Victoria        | Cruz              | 612343529 | 916548735 | Plaza Magallón 15 |                  | Madrid | Madrid | Spain | 28011         | 30                         | 5050           |

## **Consultas multitabla (Where para unir tablas)**

- Obtén un listado con el nombre de cada cliente y el nombre y apellido de su representante de ventas.
```sql
select cliente.nombre_cliente, empleado.nombre, empleado.apellido1, empleado.apellido2 from empleado, cliente where cliente.codigo_empleado_rep_ventas=empleado.codigo_empleado;
```
|         nombre_cliente         |     nombre      | apellido1  | apellido2 |
|--------------------------------|-----------------|------------|-----------|
| GoldFish Garden                | Walter Santiago | Sanchez    | Lopez     |
| Gardening Associates           | Walter Santiago | Sanchez    | Lopez     |
| Gerudo Valley                  | Lorena          | Paxton     |           |
| Tendo Garden                   | Lorena          | Paxton     |           |
| Lasas S.A.                     | Mariano         | López      | Murcia    |
| Beragua                        | Emmanuel        | Magaña     | Perez     |
| Club Golf Puerta del hierro    | Emmanuel        | Magaña     | Perez     |
| Naturagua                      | Emmanuel        | Magaña     | Perez     |
| DaraDistribuciones             | Emmanuel        | Magaña     | Perez     |
| Madrileña de riegos            | Emmanuel        | Magaña     | Perez     |
| Lasas S.A.                     | Mariano         | López      | Murcia    |
| Camunas Jardines S.L.          | Mariano         | López      | Murcia    |
| Dardena S.A.                   | Mariano         | López      | Murcia    |
| Jardin de Flores               | Julian          | Bellinelli |           |
| Flores Marivi                  | Felipe          | Rosas      | Marquez   |
| Flowers, S.A                   | Felipe          | Rosas      | Marquez   |
| Naturajardin                   | Julian          | Bellinelli |           |
| Golf S.A.                      | José Manuel     | Martinez   | De la Osa |
| Americh Golf Management SL     | José Manuel     | Martinez   | De la Osa |
| Aloha                          | José Manuel     | Martinez   | De la Osa |
| El Prat                        | José Manuel     | Martinez   | De la Osa |
| Sotogrande                     | José Manuel     | Martinez   | De la Osa |
| Vivero Humanes                 | Julian          | Bellinelli |           |
| Fuenla City                    | Felipe          | Rosas      | Marquez   |
| Jardines y Mansiones Cactus SL | Lucio           | Campoamor  | Martín    |
| Jardinerías Matías SL          | Lucio           | Campoamor  | Martín    |
| Agrojardin                     | Julian          | Bellinelli |           |
| Top Campo                      | Felipe          | Rosas      | Marquez   |
| Jardineria Sara                | Felipe          | Rosas      | Marquez   |
| Campohermoso                   | Julian          | Bellinelli |           |
| france telecom                 | Lionel          | Narvaez    |           |
| Musée du Louvre                | Lionel          | Narvaez    |           |
| Tutifruti S.A                  | Mariko          | Kishi      |           |
| Flores S.L.                    | Michael         | Bolton     |           |
| The Magic Garden               | Michael         | Bolton     |           |
| El Jardin Viviente S.L         | Mariko          | Kishi      |           |

- Muestra el nombre de los clientes que hayan realizado pagos junto con el nombre de sus representantes de ventas.
```sql
select distinct cliente.nombre_cliente, empleado.nombre from cliente, empleado, pago where cliente.codigo_cliente=pago.codigo_cliente and empleado.codigo_empleado=cliente.codigo_empleado_rep_ventas;
```
|         nombre_cliente         |     nombre      |
|--------------------------------|-----------------|
| GoldFish Garden                | Walter Santiago |
| Gardening Associates           | Walter Santiago |
| Gerudo Valley                  | Lorena          |
| Tendo Garden                   | Lorena          |
| Beragua                        | Emmanuel        |
| Naturagua                      | Emmanuel        |
| Camunas Jardines S.L.          | Mariano         |
| Dardena S.A.                   | Mariano         |
| Jardin de Flores               | Julian          |
| Flores Marivi                  | Felipe          |
| Golf S.A.                      | José Manuel     |
| Sotogrande                     | José Manuel     |
| Jardines y Mansiones Cactus SL | Lucio           |
| Jardinerías Matías SL          | Lucio           |
| Agrojardin                     | Julian          |
| Jardineria Sara                | Felipe          |
| Tutifruti S.A                  | Mariko          |
| El Jardin Viviente S.L         | Mariko          |
- Muestra el nombre de los clientes que no hayan realizado pagos junto con el nombre de sus representantes de ventas.
```sql
```
## select cliente.nombre_cliente, empleado.nombre from cliente join pago on not cliente.codigo_cliente=pago.codigo_cliente join empleado on empleado.codigo_empleado=cliente.codigo_empleado_rep_ventas;


- Devuelve el nombre de los clientes que han hecho pagos y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.
```sql

```

- Devuelve el nombre de los clientes que no hayan hecho pagos y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.
```sql

```

- Lista la dirección de las oficinas que tengan clientes en Fuenlabrada.
```sql
select oficina.linea_direccion1 from oficina, empleado, cliente where oficina.codigo_oficina=empleado.codigo_oficina and cliente.codigo_empleado_rep_ventas=empleado.codigo_empleado and cliente.region='Fuenlabrada';
```
| linea_direccion1  |
|-------------------|
| 100 Market Street |

- Devuelve el nombre de los clientes y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.
```sql
select cliente.nombre_cliente, empleado.nombre as 'Nombre representante', oficina.ciudad from cliente, empleado, oficina where empleado.codigo_oficina=oficina.codigo_oficina and cliente.codigo_empleado_rep_ventas=empleado.codigo_empleado;
```
|         nombre_cliente         | Nombre representante |        ciudad        |
|--------------------------------|----------------------|----------------------|
| GoldFish Garden                | Walter Santiago      | San Francisco        |
| Gardening Associates           | Walter Santiago      | San Francisco        |
| Gerudo Valley                  | Lorena               | Boston               |
| Tendo Garden                   | Lorena               | Boston               |
| Lasas S.A.                     | Mariano              | Madrid               |
| Beragua                        | Emmanuel             | Barcelona            |
| Club Golf Puerta del hierro    | Emmanuel             | Barcelona            |
| Naturagua                      | Emmanuel             | Barcelona            |
| DaraDistribuciones             | Emmanuel             | Barcelona            |
| Madrileña de riegos            | Emmanuel             | Barcelona            |
| Lasas S.A.                     | Mariano              | Madrid               |
| Camunas Jardines S.L.          | Mariano              | Madrid               |
| Dardena S.A.                   | Mariano              | Madrid               |
| Jardin de Flores               | Julian               | Sydney               |
| Flores Marivi                  | Felipe               | Talavera de la Reina |
| Flowers, S.A                   | Felipe               | Talavera de la Reina |
| Naturajardin                   | Julian               | Sydney               |
| Golf S.A.                      | José Manuel          | Barcelona            |
| Americh Golf Management SL     | José Manuel          | Barcelona            |
| Aloha                          | José Manuel          | Barcelona            |
| El Prat                        | José Manuel          | Barcelona            |
| Sotogrande                     | José Manuel          | Barcelona            |
| Vivero Humanes                 | Julian               | Sydney               |
| Fuenla City                    | Felipe               | Talavera de la Reina |
| Jardines y Mansiones Cactus SL | Lucio                | Madrid               |
| Jardinerías Matías SL          | Lucio                | Madrid               |
| Agrojardin                     | Julian               | Sydney               |
| Top Campo                      | Felipe               | Talavera de la Reina |
| Jardineria Sara                | Felipe               | Talavera de la Reina |
| Campohermoso                   | Julian               | Sydney               |
| france telecom                 | Lionel               | Paris                |
| Musée du Louvre                | Lionel               | Paris                |
| Tutifruti S.A                  | Mariko               | Sydney               |
| Flores S.L.                    | Michael              | San Francisco        |
| The Magic Garden               | Michael              | San Francisco        |
| El Jardin Viviente S.L         | Mariko               | Sydney               |

- Devuelve un listado con el nombre de los empleados junto con el nombre de sus jefes.
```sql

```

- Devuelve un listado que muestre el nombre de cada empleados, el nombre de su jefe y el nombre del jefe de sus jefe.
```sql

```

- Devuelve el nombre de los clientes a los que no se les ha entregado a tiempo un pedido.
```sql

```

- Devuelve un listado de las diferentes gamas de producto que ha comprado cada cliente.
```sql

```


## **Consultas multitabla (inner join)**

- Devuelve un listado que muestre solamente los clientes que no han realizado ningún pago.
- Devuelve un listado que muestre solamente los clientes que no han realizado ningún pedido.
- Devuelve un listado que muestre los clientes que no han realizado ningún pago y los que no han realizado ningún pedido.
- Devuelve un listado que muestre solamente los empleados que no tienen una oficina asociada.
- Devuelve un listado que muestre solamente los empleados que no tienen un cliente asociado.
- Devuelve un listado que muestre solamente los empleados que no tienen un cliente asociado junto con los datos de la oficina donde trabajan.
- Devuelve un listado que muestre los empleados que no tienen una oficina asociada y los que no tienen un cliente asociado.
- Devuelve un listado de los productos que nunca han aparecido en un pedido.
- Devuelve un listado de los productos que nunca han aparecido en un pedido. El resultado debe mostrar el nombre, la descripción y la imagen del producto.
- Devuelve las oficinas donde no trabajan ninguno de los empleados que hayan sido los representantes de ventas de algún cliente que haya realizado la compra de algún producto de la gama Frutales.
- Devuelve un listado con los clientes que han realizado algún pedido pero no han realizado ningún pago.
- Devuelve un listado con los datos de los empleados que no tienen clientes asociados y el nombre de su jefe asociado.

## **Consultas resumen (count,avg,...)**

- ¿Cuántos empleados hay en la compañía?
- ¿Cuántos clientes tiene cada país?
- ¿Cuál fue el pago medio en 2009?
- ¿Cuántos pedidos hay en cada estado? Ordena el resultado de forma descendente por el número de pedidos.
- Calcula el precio de venta del producto más caro y más barato en una misma consulta.
- Calcula el número de clientes que tiene la empresa.
- ¿Cuántos clientes existen con domicilio en la ciudad de Madrid?
- ¿Calcula cuántos clientes tiene cada una de las ciudades que empiezan por M?
- Devuelve el nombre de los representantes de ventas y el número de clientes al que atiende cada uno.
- Calcula el número de clientes que no tiene asignado representante de ventas.
- Calcula la fecha del primer y último pago realizado por cada uno de los clientes. El listado deberá mostrar el nombre y los apellidos de cada cliente.
- Calcula el número de productos diferentes que hay en cada uno de los pedidos.
- Calcula la suma de la cantidad total de todos los productos que aparecen en cada uno de los pedidos.
- Devuelve un listado de los 20 productos más vendidos y el número total de unidades que se han vendido de cada uno. El listado deberá estar ordenado por el número total de unidades vendidas.
- La facturación que ha tenido la empresa en toda la historia, indicando la base imponible, el IGIC y el total facturado. La base imponible se calcula sumando el coste del producto por el número de unidades vendidas de la tabla detalle_pedido. El IGIC es el 7 % de la base imponible, y el total la suma de los dos campos anteriores.
- La misma información que en la pregunta anterior, pero agrupada por código de producto.
- La misma información que en la pregunta anterior, pero agrupada por código de producto filtrada por los códigos que empiecen por OR.
- Lista las ventas totales de los productos que hayan facturado más de __3000 euros__. Se mostrará el nombre, unidades vendidas, total facturado y total facturado con impuestos (7% IGIC).
- Muestre la suma total de todos los pagos que se realizaron para cada uno de los años que aparecen en la tabla pagos.

## **Subconsultas en SQL**

- Devuelve el nombre del cliente con mayor límite de crédito.
- Devuelve el nombre del producto que tenga el precio de venta más caro.
- Devuelve el nombre del producto del que se han vendido más unidades. (Tenga en cuenta que tendrá que calcular cuál es el número total de unidades que se han vendido de cada producto a partir de los datos de la tabla detalle_pedido)
- Los clientes cuyo límite de crédito sea mayor que los pagos que haya realizado. (Sin utilizar INNER JOIN).
- Devuelve el producto que más unidades tiene en stock.
- Devuelve el producto que menos unidades tiene en stock.
- Devuelve el nombre, los apellidos y el email de los empleados que están a cargo de Alberto Soria.
- Devuelve el nombre del cliente con mayor límite de crédito.
- Devuelve el nombre del producto que tenga el precio de venta más caro.
- Devuelve el producto que menos unidades tiene en stock.
- Devuelve el nombre, apellido1 y cargo de los empleados que no representen a ningún cliente.
- Devuelve un listado que muestre solamente los clientes que no han realizado ningún pago.
- Devuelve un listado que muestre solamente los clientes que sí han realizado algún pago.
- Devuelve un listado de los productos que nunca han aparecido en un pedido.
- Devuelve el nombre, apellidos, puesto y teléfono de la oficina de aquellos empleados que no sean representante de ventas de ningún cliente.
- Devuelve las oficinas donde no trabajan ninguno de los empleados que hayan sido los representantes de ventas de algún cliente que haya realizado la compra de algún producto de la gama Frutales.
- Devuelve un listado con los clientes que han realizado algún pedido pero no han realizado ningún pago.
- Devuelve un listado que muestre solamente los clientes que no han realizado ningún pago.
- Devuelve un listado que muestre solamente los clientes que sí han realizado algún pago.
- Devuelve un listado de los productos que nunca han aparecido en un pedido.
- Devuelve un listado de los productos que han aparecido en un pedido alguna vez.

## **Consultas variadas en SQL**

- Devuelve el listado de clientes indicando el nombre del cliente y cuántos pedidos ha realizado. Tenga en cuenta que pueden existir clientes que no han realizado ningún pedido.
- Devuelve un listado con los nombres de los clientes y el total pagado por cada uno de ellos. Tenga en cuenta que pueden existir clientes que no han realizado ningún pago.
- Devuelve el nombre de los clientes que hayan hecho pedidos en 2008 ordenados alfabéticamente de menor a mayor.
- Devuelve el nombre del cliente, el nombre y primer apellido de su representante de ventas y el número de teléfono de la oficina del representante de ventas, de aquellos clientes que no hayan realizado ningún pago.
- Devuelve el listado de clientes donde aparezca el nombre del cliente, el nombre y primer apellido de su representante de ventas y la ciudad donde está su oficina.
- Devuelve el nombre, apellidos, puesto y teléfono de la oficina de aquellos empleados que no sean representante de ventas de ningún cliente.
- Devuelve un listado indicando todas las ciudades donde hay oficinas y el número de empleados que tiene.