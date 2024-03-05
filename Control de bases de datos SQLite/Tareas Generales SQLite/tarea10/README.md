* Proporciona una consulta que muestre solo los clientes de Brasil.
```sql
select * FROM customers where Country='Brazil';
```
| CustomerId | FirstName | LastName  |                     Company                      |             Address             |        City         | State | Country | PostalCode |       Phone        |        Fax         |             Email             | SupportRepId |
|------------|-----------|-----------|--------------------------------------------------|---------------------------------|---------------------|-------|---------|------------|--------------------|--------------------|-------------------------------|--------------|
| 1          | Luís      | Gonçalves | Embraer - Empresa Brasileira de Aeronáutica S.A. | Av. Brigadeiro Faria Lima, 2170 | São José dos Campos | SP    | Brazil  | 12227-000  | +55 (12) 3923-5555 | +55 (12) 3923-5566 | luisg@embraer.com.br          | 3            |
| 10         | Eduardo   | Martins   | Woodstock Discos                                 | Rua Dr. Falcão Filho, 155       | São Paulo           | SP    | Brazil  | 01007-010  | +55 (11) 3033-5446 | +55 (11) 3033-4564 | eduardo@woodstock.com.br      | 4            |
| 11         | Alexandre | Rocha     | Banco do Brasil S.A.                             | Av. Paulista, 2022              | São Paulo           | SP    | Brazil  | 01310-200  | +55 (11) 3055-3278 | +55 (11) 3055-8131 | alero@uol.com.br              | 5            |
| 12         | Roberto   | Almeida   | Riotur                                           | Praça Pio X, 119                | Rio de Janeiro      | RJ    | Brazil  | 20040-020  | +55 (21) 2271-7000 | +55 (21) 2271-7070 | roberto.almeida@riotur.gov.br | 3            |
| 13         | Fernanda  | Ramos     |                                                  | Qe 7 Bloco G                    | Brasília            | DF    | Brazil  | 71020-677  | +55 (61) 3363-5547 | +55 (61) 3363-7855 | fernadaramos4@uol.com.br      | 4            |

* Proporciona una consulta que muestre las facturas de clientes que son de Brasil. La tabla resultante debe mostrar el nombre completo del cliente, ID de factura      fecha de la factura y país de facturación.
```sql
select customers.FirstName, customers.LastName, invoices.InvoiceID, invoices.InvoiceDate, invoices.BillingCountry from invoices, customers where customers.Country='Brazil' and customers.CustomerID=invoices.CustomerID;
```
```sql
select customers.FirstName, customers.LastName, invoices.InvoiceID, invoices.InvoiceDate, invoices.BillingCountry from invoices join customers on customers.CustomerID=invoices.CustomerID where customers.Country='Brazil';
```

| FirstName | LastName  | InvoiceId |     InvoiceDate     | BillingCountry |
|-----------|-----------|-----------|---------------------|----------------|
| Luís      | Gonçalves | 98        | 2010-03-11 00:00:00 | Brazil         |
| Luís      | Gonçalves | 121       | 2010-06-13 00:00:00 | Brazil         |
| Luís      | Gonçalves | 143       | 2010-09-15 00:00:00 | Brazil         |
| Luís      | Gonçalves | 195       | 2011-05-06 00:00:00 | Brazil         |
| Luís      | Gonçalves | 316       | 2012-10-27 00:00:00 | Brazil         |
| Luís      | Gonçalves | 327       | 2012-12-07 00:00:00 | Brazil         |
| Luís      | Gonçalves | 382       | 2013-08-07 00:00:00 | Brazil         |
| Eduardo   | Martins   | 25        | 2009-04-09 00:00:00 | Brazil         |
| Eduardo   | Martins   | 154       | 2010-11-14 00:00:00 | Brazil         |
| Eduardo   | Martins   | 177       | 2011-02-16 00:00:00 | Brazil         |
| Eduardo   | Martins   | 199       | 2011-05-21 00:00:00 | Brazil         |
| Eduardo   | Martins   | 251       | 2012-01-09 00:00:00 | Brazil         |
| Eduardo   | Martins   | 372       | 2013-07-02 00:00:00 | Brazil         |
| Eduardo   | Martins   | 383       | 2013-08-12 00:00:00 | Brazil         |
| Alexandre | Rocha     | 57        | 2009-09-06 00:00:00 | Brazil         |
| Alexandre | Rocha     | 68        | 2009-10-17 00:00:00 | Brazil         |
| Alexandre | Rocha     | 123       | 2010-06-17 00:00:00 | Brazil         |
| Alexandre | Rocha     | 252       | 2012-01-22 00:00:00 | Brazil         |
| Alexandre | Rocha     | 275       | 2012-04-25 00:00:00 | Brazil         |
| Alexandre | Rocha     | 297       | 2012-07-28 00:00:00 | Brazil         |
| Alexandre | Rocha     | 349       | 2013-03-18 00:00:00 | Brazil         |
| Roberto   | Almeida   | 34        | 2009-05-23 00:00:00 | Brazil         |
| Roberto   | Almeida   | 155       | 2010-11-14 00:00:00 | Brazil         |
| Roberto   | Almeida   | 166       | 2010-12-25 00:00:00 | Brazil         |
| Roberto   | Almeida   | 221       | 2011-08-25 00:00:00 | Brazil         |
| Roberto   | Almeida   | 350       | 2013-03-31 00:00:00 | Brazil         |
| Roberto   | Almeida   | 373       | 2013-07-03 00:00:00 | Brazil         |
| Roberto   | Almeida   | 395       | 2013-10-05 00:00:00 | Brazil         |
| Fernanda  | Ramos     | 35        | 2009-06-05 00:00:00 | Brazil         |
| Fernanda  | Ramos     | 58        | 2009-09-07 00:00:00 | Brazil         |
| Fernanda  | Ramos     | 80        | 2009-12-10 00:00:00 | Brazil         |
| Fernanda  | Ramos     | 132       | 2010-07-31 00:00:00 | Brazil         |
| Fernanda  | Ramos     | 253       | 2012-01-22 00:00:00 | Brazil         |
| Fernanda  | Ramos     | 264       | 2012-03-03 00:00:00 | Brazil         |
| Fernanda  | Ramos     | 319       | 2012-11-01 00:00:00 | Brazil         |

* Proporciona una consulta que muestre solo los empleados que son Agentes de Ventas.
```sql
select * from employees where Title='Sales Support Agent';
```
| EmployeeId | LastName | FirstName |        Title        | ReportsTo |      BirthDate      |      HireDate       |     Address      |  City   | State | Country | PostalCode |       Phone       |        Fax        |          Email           |
|------------|----------|-----------|---------------------|-----------|---------------------|---------------------|------------------|---------|-------|---------|------------|-------------------|-------------------|--------------------------|
| 3          | Peacock  | Jane      | Sales Support Agent | 2         | 1973-08-29 00:00:00 | 2002-04-01 00:00:00 | 1111 6 Ave SW    | Calgary | AB    | Canada  | T2P 5M5    | +1 (403) 262-3443 | +1 (403) 262-6712 | jane@chinookcorp.com     |
| 4          | Park     | Margaret  | Sales Support Agent | 2         | 1947-09-19 00:00:00 | 2003-05-03 00:00:00 | 683 10 Street SW | Calgary | AB    | Canada  | T2P 5G3    | +1 (403) 263-4423 | +1 (403) 263-4289 | margaret@chinookcorp.com |
| 5          | Johnson  | Steve     | Sales Support Agent | 2         | 1965-03-03 00:00:00 | 2003-10-17 00:00:00 | 7727B 41 Ave     | Calgary | AB    | Canada  | T3B 1Y7    | 1 (780) 836-9987  | 1 (780) 836-9543  | steve@chinookcorp.com    |


* Proporciona una consulta que muestre una lista única de países de facturación de la tabla de Facturas.
```sql
select distinct BillingCountry from invoices;
```
| BillingCountry |
|----------------|
| Germany        |
| Norway         |
| Belgium        |
| Canada         |
| USA            |
| France         |
| Ireland        |
| United Kingdom |
| Australia      |
| Chile          |
| India          |
| Brazil         |
| Portugal       |
| Netherlands    |
| Spain          |
| Sweden         |
| Czech Republic |
| Finland        |
| Denmark        |
| Italy          |
| Poland         |
| Austria        |
| Hungary        |
| Argentina      |

* Proporciona una consulta que muestre las facturas de clientes que son de Brasil.
```sql
select invoices.* from invoices join customers on customers.CustomerID=invoices.InvoiceID where customers.Country='Brazil';
```
```sql
select invoices.* from invoices, customers where customers.CustomerID=invoices.InvoiceID and customers.Country='Brazil';
```

| InvoiceId | CustomerId |     InvoiceDate     |      BillingAddress       |  BillingCity  | BillingState | BillingCountry | BillingPostalCode | Total |
|-----------|------------|---------------------|---------------------------|---------------|--------------|----------------|-------------------|-------|
| 1         | 2          | 2009-01-01 00:00:00 | Theodor-Heuss-Straße 34   | Stuttgart     |              | Germany        | 70174             | 1.98  |
| 10        | 46         | 2009-02-03 00:00:00 | 3 Chatham Street          | Dublin        | Dublin       | Ireland        |                   | 5.94  |
| 11        | 52         | 2009-02-06 00:00:00 | 202 Hoxton Street         | London        |              | United Kingdom | N1 5LH            | 8.91  |
| 12        | 2          | 2009-02-11 00:00:00 | Theodor-Heuss-Straße 34   | Stuttgart     |              | Germany        | 70174             | 13.86 |
| 13        | 16         | 2009-02-19 00:00:00 | 1600 Amphitheatre Parkway | Mountain View | CA           | USA            | 94043-1351        | 0.99  |


* Proporciona una consulta que muestre las facturas asociadas con cada agente de ventas. La tabla resultante debe incluir el nombre completo del Agente de Ventas.



* Proporciona una consulta que muestre el Total de la Factura, nombre del cliente, país y nombre del Agente de Ventas para todas las facturas y clientes.




* ¿Cuántas facturas hubo en 2009 y 2011? ¿Cuáles son las ventas totales respectivas para cada uno de esos años?

* Mirando la tabla de InvoiceLine, proporciona una consulta que CUENTE el número de ítems de línea para el ID de factura 37.

* Mirando la tabla de InvoiceLine, proporciona una consulta que CUENTE el número de ítems de línea para cada Factura. PISTA: [GROUP BY]

* Proporciona una consulta que incluya el nombre de la pista con cada ítem de línea de factura.

* Proporciona una consulta que incluya el nombre de la pista comprada Y el nombre del artista con cada ítem de línea de factura.

* Proporciona una consulta que muestre el número total de pistas en cada lista de reproducción. El nombre de la lista de reproducción debe estar incluido en la tabla resultante.

* Proporciona una consulta que muestre todas las pistas, pero no muestre IDs. La tabla resultante debe incluir el nombre del álbum, el tipo de medio y el género.

* Proporciona una consulta que muestre todas las facturas.

* Proporciona una consulta que muestre las ventas totales realizadas por cada agente de ventas.

* ¿Qué agente de ventas realizó más ventas en 2009?

* Escribir una consulta que muestre todas las playlists de la base de datos.

* Escribe una consulta que liste todas las canciones de una playlist.

* Escribe una consulta que liste **exclusivamente** el nombre de las canciones de una playlist concreta, con el nombre de su género y el nombre de tipo de medio.