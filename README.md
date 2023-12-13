# Creación de DB

## Creación de tabla
```sql
sqlite> create table Ejemplo
   ...> (id INTEGER not null
   ...> texto TEXT not null
   ...> entero integer not null
   ...> decimal real not null
   ...> fecha date not null
   ...> booleano boolean not null);
```
sqlite> insert into Ejemplo (texto,entero,decimal,fecha,booleano) values ('Ejemplo1',25,10.5,2022-05-15,0);
