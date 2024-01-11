# **Tarea 2: Creación de tabla de base de datos**

## Primero paso:
Para empezar hay que crear la base de datos en el lenguaje SQL con el motor de base de datos SQLite3.

<img src="sqlcreacion.png">

---

## Segundo paso:
A continuación hay que crear las tablas correspondientes dentro de SQLite3 que en este caso serán Propietario y Vehículo.
```sql
CREATE TABLE propietario(
id INTEGER PRIMARY KEY AUTOINCREMENT,
nombre TEXT NOT NULL,
apellido TEXT NOT NULL,
dni TEXT UNIQUE);

CREATE TABLE vehiculo(
id INTEGER PRIMARY KEY AUTOINCREMENT,
marca TEXT NOT NULL,
modelo TEXT NOT NULL,
anyo INTEGER NOT NULL,
id_propietario INTEGER references propietario(id));
```
Con las tablas ya creadas ahora tenemos que insertar todos los datos dentro de las tablas. Empezaré con la tabla propietario.

```sql
INSERT INTO propietario (nombre, apellido, dni) VALUES ('Juan', 'Perez', '12345678A' );
INSERT INTO propietario (nombre, apellido, dni) VALUES ('Maria', 'Lopez', '87654321B' );
INSERT INTO propietario (nombre, apellido, dni) VALUES ('Carlos', 'Ruiz', '11111111C' );
INSERT INTO propietario (nombre, apellido, dni) VALUES ('Laura', 'Gomez', '22222222D' );
INSERT INTO propietario (nombre, apellido, dni) VALUES ('Pedro', 'Martinez', '33333333E' );
INSERT INTO propietario (nombre, apellido, dni) VALUES ('Ana', 'Fernandez', '44444444F' );
INSERT INTO propietario (nombre, apellido, dni) VALUES ('Diego', 'Sanchez', '55555555G' );
INSERT INTO propietario (nombre, apellido, dni) VALUES ('Sofia', 'Torres', '66666666H' );
INSERT INTO propietario (nombre, apellido, dni) VALUES ('Javier', 'Leon', '77777777I' );
INSERT INTO propietario (nombre, apellido, dni) VALUES ('Lucia', 'Castillo', '88888888J' );
INSERT INTO propietario (nombre, apellido, dni) VALUES ('Luis', 'Gonzalez', '99999999K' );
INSERT INTO propietario (nombre, apellido, dni) VALUES ('Marta', 'Diaz', '10101010L' );
INSERT INTO propietario (nombre, apellido, dni) VALUES ('Victor', 'Vargas', '11111112M' );
INSERT INTO propietario (nombre, apellido, dni) VALUES ('Elena', 'Castro', '12121212N' );
INSERT INTO propietario (nombre, apellido, dni) VALUES ('Roberto', 'Blanco', '13131313O' );
INSERT INTO propietario (nombre, apellido, dni) VALUES ('Natalia', 'Paredes', '14141414P' );
INSERT INTO propietario (nombre, apellido, dni) VALUES ('Fernando', 'Herrera', '15151515Q' );
INSERT INTO propietario (nombre, apellido, dni) VALUES ('Clara', 'Soto', '16161616R' );
INSERT INTO propietario (nombre, apellido, dni) VALUES ('Sergio', 'Mendoza', '17171717S' );
INSERT INTO propietario (nombre, apellido, dni) VALUES ('Patricia', 'Navarro', '18181818T' );
```
Este es el resultado de todos los inserts en propietario:

```code
┌────┬──────────┬───────────┬───────────┐
│ id │  nombre  │ apellido  │    dni    │
├────┼──────────┼───────────┼───────────┤
│ 1  │ Juan     │ Perez     │ 12345678A │
│ 2  │ Maria    │ Lopez     │ 87654321B │
│ 3  │ Carlos   │ Ruiz      │ 11111111C │
│ 4  │ Laura    │ Gomez     │ 22222222D │
│ 5  │ Pedro    │ Martinez  │ 33333333E │
│ 6  │ Ana      │ Fernandez │ 44444444F │
│ 7  │ Diego    │ Sanchez   │ 55555555G │
│ 8  │ Sofia    │ Torres    │ 66666666H │
│ 9  │ Javier   │ Leon      │ 77777777I │
│ 10 │ Lucia    │ Castillo  │ 88888888J │
│ 11 │ Luis     │ Gonzalez  │ 99999999K │
│ 12 │ Marta    │ Diaz      │ 10101010L │
│ 13 │ Victor   │ Vargas    │ 11111112M │
│ 14 │ Elena    │ Castro    │ 12121212N │
│ 15 │ Roberto  │ Blanco    │ 13131313O │
│ 16 │ Natalia  │ Paredes   │ 14141414P │
│ 17 │ Fernando │ Herrera   │ 15151515Q │
│ 18 │ Clara    │ Soto      │ 16161616R │
│ 19 │ Sergio   │ Mendoza   │ 17171717S │
│ 20 │ Patricia │ Navarro   │ 18181818T │
└────┴──────────┴───────────┴───────────┘
```

Una vez terminados los inserts de la tabla propietario comenzamos con la tabla vehículo.

```sql
INSERT INTO vehiculo (marca, modelo, anyo, id_propietario) VALUES ('Ford', 'Fiesta', '2019', '1');
INSERT INTO vehiculo (marca, modelo, anyo, id_propietario) VALUES ('Toyota', 'Corolla', '2018', '2');
INSERT INTO vehiculo (marca, modelo, anyo, id_propietario) VALUES ('Nissan', 'Sentra', '2020', '3');
INSERT INTO vehiculo (marca, modelo, anyo, id_propietario) VALUES ('Chevrolet', 'Spark', '2017', '4');
INSERT INTO vehiculo (marca, modelo, anyo, id_propietario) VALUES ('Honda', 'Civic', '2016', '5');
INSERT INTO vehiculo (marca, modelo, anyo, id_propietario) VALUES ('Ford', 'Mustang', '2021', '6');
INSERT INTO vehiculo (marca, modelo, anyo, id_propietario) VALUES ('Toyota', 'Golf', '2020', '7');
INSERT INTO vehiculo (marca, modelo, anyo, id_propietario) VALUES ('Volkswagen', 'RAV4', '2019', '8');
INSERT INTO vehiculo (marca, modelo, anyo, id_propietario) VALUES ('Honda', 'CR-V', '2018', '9');
INSERT INTO vehiculo (marca, modelo, anyo, id_propietario) VALUES ('Nissan', 'Altima', '2017', '10');
INSERT INTO vehiculo (marca, modelo, anyo, id_propietario) VALUES ('Chevrolet', 'Malibu', '2019', '11');
INSERT INTO vehiculo (marca, modelo, anyo, id_propietario) VALUES ('Toyota', 'Camry', '2020', '12');
INSERT INTO vehiculo (marca, modelo, anyo, id_propietario) VALUES ('Honda', 'Accord', '2018', '13');
INSERT INTO vehiculo (marca, modelo, anyo, id_propietario) VALUES ('Ford', 'Explorer', '2021', '14');
INSERT INTO vehiculo (marca, modelo, anyo, id_propietario) VALUES ('Nissan', 'Murano', '2019', '20');
INSERT INTO vehiculo (marca, modelo, anyo, id_propietario) VALUES ('Nissan', 'Rogue', '2017', '15');
INSERT INTO vehiculo (marca, modelo, anyo, id_propietario) VALUES ('Volkswagen', 'Jetta', '2019', '16');
INSERT INTO vehiculo (marca, modelo, anyo, id_propietario) VALUES ('Chevrolet', 'Equinox', '2018', '17');
INSERT INTO vehiculo (marca, modelo, anyo, id_propietario) VALUES ('Toyota', 'Highlander', '2020', '18');
INSERT INTO vehiculo (marca, modelo, anyo, id_propietario) VALUES ('Honda', 'Odyssey', '2016', '19');
```

Así quedaría la tabla vehículo:

```code
┌────┬────────────┬────────────┬──────┬────────────────┐
│ id │   marca    │   modelo   │ anyo │ id_propietario │
├────┼────────────┼────────────┼──────┼────────────────┤
│ 1  │ Ford       │ Fiesta     │ 2019 │ 1              │
│ 2  │ Toyota     │ Corolla    │ 2018 │ 2              │
│ 3  │ Nissan     │ Sentra     │ 2020 │ 3              │
│ 4  │ Chevrolet  │ Spark      │ 2017 │ 4              │
│ 5  │ Honda      │ Civic      │ 2016 │ 5              │
│ 6  │ Ford       │ Mustang    │ 2021 │ 6              │
│ 7  │ Toyota     │ Golf       │ 2020 │ 7              │
│ 8  │ Volkswagen │ RAV4       │ 2019 │ 8              │
│ 9  │ Honda      │ CR-V       │ 2018 │ 9              │
│ 10 │ Nissan     │ Altima     │ 2017 │ 10             │
│ 11 │ Chevrolet  │ Malibu     │ 2019 │ 11             │
│ 12 │ Toyota     │ Camry      │ 2020 │ 12             │
│ 13 │ Honda      │ Accord     │ 2018 │ 13             │
│ 14 │ Ford       │ Explorer   │ 2021 │ 14             │
│ 15 │ Nissan     │ Murano     │ 2019 │ 20             │
│ 16 │ Nissan     │ Rogue      │ 2017 │ 15             │
│ 17 │ Volkswagen │ Jetta      │ 2019 │ 16             │
│ 18 │ Chevrolet  │ Equinox    │ 2018 │ 17             │
│ 19 │ Toyota     │ Highlander │ 2020 │ 18             │
│ 20 │ Honda      │ Odyssey    │ 2016 │ 19             │
└────┴────────────┴────────────┴──────┴────────────────┘
```

---

## Tercer paso: Realizar las siguientes 10 consultas de datos
Seleccionar todos los propietarios:
```sql
Select * from propietario;
┌────┬──────────┬───────────┬───────────┐
│ id │  nombre  │ apellido  │    dni    │
├────┼──────────┼───────────┼───────────┤
│ 1  │ Juan     │ Perez     │ 12345678A │
│ 2  │ Maria    │ Lopez     │ 87654321B │
│ 3  │ Carlos   │ Ruiz      │ 11111111C │
│ 4  │ Laura    │ Gomez     │ 22222222D │
│ 5  │ Pedro    │ Martinez  │ 33333333E │
│ 6  │ Ana      │ Fernandez │ 44444444F │
│ 7  │ Diego    │ Sanchez   │ 55555555G │
│ 8  │ Sofia    │ Torres    │ 66666666H │
│ 9  │ Javier   │ Leon      │ 77777777I │
│ 10 │ Lucia    │ Castillo  │ 88888888J │
│ 11 │ Luis     │ Gonzalez  │ 99999999K │
│ 12 │ Marta    │ Diaz      │ 10101010L │
│ 13 │ Victor   │ Vargas    │ 11111112M │
│ 14 │ Elena    │ Castro    │ 12121212N │
│ 15 │ Roberto  │ Blanco    │ 13131313O │
│ 16 │ Natalia  │ Paredes   │ 14141414P │
│ 17 │ Fernando │ Herrera   │ 15151515Q │
│ 18 │ Clara    │ Soto      │ 16161616R │
│ 19 │ Sergio   │ Mendoza   │ 17171717S │
│ 20 │ Patricia │ Navarro   │ 18181818T │
└────┴──────────┴───────────┴───────────┘
```
Seleccionar todos los vehiculos:

```sql
select * from vehiculo;
┌────┬────────────┬────────────┬──────┬────────────────┐
│ id │   marca    │   modelo   │ anyo │ id_propietario │
├────┼────────────┼────────────┼──────┼────────────────┤
│ 1  │ Ford       │ Fiesta     │ 2019 │ 1              │
│ 2  │ Toyota     │ Corolla    │ 2018 │ 2              │
│ 3  │ Nissan     │ Sentra     │ 2020 │ 3              │
│ 4  │ Chevrolet  │ Spark      │ 2017 │ 4              │
│ 5  │ Honda      │ Civic      │ 2016 │ 5              │
│ 6  │ Ford       │ Mustang    │ 2021 │ 6              │
│ 7  │ Toyota     │ Golf       │ 2020 │ 7              │
│ 8  │ Volkswagen │ RAV4       │ 2019 │ 8              │
│ 9  │ Honda      │ CR-V       │ 2018 │ 9              │
│ 10 │ Nissan     │ Altima     │ 2017 │ 10             │
│ 11 │ Chevrolet  │ Malibu     │ 2019 │ 11             │
│ 12 │ Toyota     │ Camry      │ 2020 │ 12             │
│ 13 │ Honda      │ Accord     │ 2018 │ 13             │
│ 14 │ Ford       │ Explorer   │ 2021 │ 14             │
│ 15 │ Nissan     │ Murano     │ 2019 │ 20             │
│ 16 │ Nissan     │ Rogue      │ 2017 │ 15             │
│ 17 │ Volkswagen │ Jetta      │ 2019 │ 16             │
│ 18 │ Chevrolet  │ Equinox    │ 2018 │ 17             │
│ 19 │ Toyota     │ Highlander │ 2020 │ 18             │
│ 20 │ Honda      │ Odyssey    │ 2016 │ 19             │
└────┴────────────┴────────────┴──────┴────────────────┘
```
Seleccionar solo los nombres y apellidos de los propietarios:

```sql
select nombre,apellido from propietario;
┌──────────┬───────────┐
│  nombre  │ apellido  │
├──────────┼───────────┤
│ Juan     │ Perez     │
│ Maria    │ Lopez     │
│ Carlos   │ Ruiz      │
│ Laura    │ Gomez     │
│ Pedro    │ Martinez  │
│ Ana      │ Fernandez │
│ Diego    │ Sanchez   │
│ Sofia    │ Torres    │
│ Javier   │ Leon      │
│ Lucia    │ Castillo  │
│ Luis     │ Gonzalez  │
│ Marta    │ Diaz      │
│ Victor   │ Vargas    │
│ Elena    │ Castro    │
│ Roberto  │ Blanco    │
│ Natalia  │ Paredes   │
│ Fernando │ Herrera   │
│ Clara    │ Soto      │
│ Sergio   │ Mendoza   │
│ Patricia │ Navarro   │
└──────────┴───────────┘
```
Listar todas las marcas y modelos de los vehículos:
```sql
select marca,modelo FROM  vehiculo;
┌────────────┬────────────┐
│   marca    │   modelo   │
├────────────┼────────────┤
│ Ford       │ Fiesta     │
│ Toyota     │ Corolla    │
│ Nissan     │ Sentra     │
│ Chevrolet  │ Spark      │
│ Honda      │ Civic      │
│ Ford       │ Mustang    │
│ Toyota     │ Golf       │
│ Volkswagen │ RAV4       │
│ Honda      │ CR-V       │
│ Nissan     │ Altima     │
│ Chevrolet  │ Malibu     │
│ Toyota     │ Camry      │
│ Honda      │ Accord     │
│ Ford       │ Explorer   │
│ Nissan     │ Murano     │
│ Nissan     │ Rogue      │
│ Volkswagen │ Jetta      │
│ Chevrolet  │ Equinox    │
│ Toyota     │ Highlander │
│ Honda      │ Odyssey    │
└────────────┴────────────┘
```
Seleccionar solo los propietarios con apellido "Perez":
```sql
select * FROM  propietario WHERE apellido="Perez";
┌────┬────────┬──────────┬───────────┐
│ id │ nombre │ apellido │    dni    │
├────┼────────┼──────────┼───────────┤
│ 1  │ Juan   │ Perez    │ 12345678A │
└────┴────────┴──────────┴───────────┘
```
Listar todos los vehículos con año 2019:
```sql
select * FROM vehiculo WHERE anyo=2019;
┌────┬────────────┬────────┬──────┬────────────────┐
│ id │   marca    │ modelo │ anyo │ id_propietario │
├────┼────────────┼────────┼──────┼────────────────┤
│ 1  │ Ford       │ Fiesta │ 2019 │ 1              │
│ 8  │ Volkswagen │ RAV4   │ 2019 │ 8              │
│ 11 │ Chevrolet  │ Malibu │ 2019 │ 11             │
│ 15 │ Nissan     │ Murano │ 2019 │ 20             │
│ 17 │ Volkswagen │ Jetta  │ 2019 │ 16             │
└────┴────────────┴────────┴──────┴────────────────┘
```
Seleccionar propietarios que tienen vehículos de la marca "Toyota":
```sql
select * from propietario, vehiculo where propietario.id=vehiculo.id_propietario and vehiculo.marca="Toyota";
┌────┬────────┬──────────┬───────────┬────┬────────┬────────────┬──────┬────────────────┐
│ id │ nombre │ apellido │    dni    │ id │ marca  │   modelo   │ anyo │ id_propietario │
├────┼────────┼──────────┼───────────┼────┼────────┼────────────┼──────┼────────────────┤
│ 2  │ Maria  │ Lopez    │ 87654321B │ 2  │ Toyota │ Corolla    │ 2018 │ 2              │
│ 7  │ Diego  │ Sanchez  │ 55555555G │ 7  │ Toyota │ Golf       │ 2020 │ 7              │
│ 12 │ Marta  │ Diaz     │ 10101010L │ 12 │ Toyota │ Camry      │ 2020 │ 12             │
│ 18 │ Clara  │ Soto     │ 16161616R │ 19 │ Toyota │ Highlander │ 2020 │ 18             │
└────┴────────┴──────────┴───────────┴────┴────────┴────────────┴──────┴────────────────┘
```
Listar vehículos con marca "Ford" y modelo "Fiesta":
```sql
select * FROM vehiculo WHERE marca="Ford" and modelo="Fiesta";
┌────┬───────┬────────┬──────┬────────────────┐
│ id │ marca │ modelo │ anyo │ id_propietario │
├────┼───────┼────────┼──────┼────────────────┤
│ 1  │ Ford  │ Fiesta │ 2019 │ 1              │
└────┴───────┴────────┴──────┴────────────────┘
```
Seleccionar propietarios con DNI "12345678A":
```sql
select * FROM propietario WHERE DNI="12345678A";
┌────┬────────┬──────────┬───────────┐
│ id │ nombre │ apellido │    dni    │
├────┼────────┼──────────┼───────────┤
│ 1  │ Juan   │ Perez    │ 12345678A │
└────┴────────┴──────────┴───────────┘
```
Listar vehículos que pertenecen al propietario con ID 5:
```sql
SELECT * FROM vehiculo WHERE id_propietario=5;
┌────┬───────┬────────┬──────┬────────────────┐
│ id │ marca │ modelo │ anyo │ id_propietario │
├────┼───────┼────────┼──────┼────────────────┤
│ 5  │ Honda │ Civic  │ 2016 │ 5              │
└────┴───────┴────────┴──────┴────────────────┘
```
## Cuarto paso: Realiza los siguientes updates
Actualizar el nombre de un propietario con DNI "12345678A":
```sql
UPDATE propietario set nombre="Carlos" WHERE DNI= "12345678A";
SELECT * from propietario;
┌────┬──────────┬───────────┬───────────┐
│ id │  nombre  │ apellido  │    dni    │
├────┼──────────┼───────────┼───────────┤
│ 1  │ Carlos   │ Perez     │ 12345678A │
│ 2  │ Maria    │ Lopez     │ 87654321B │
│ 3  │ Carlos   │ Ruiz      │ 11111111C │
│ 4  │ Laura    │ Gomez     │ 22222222D │
│ 5  │ Pedro    │ Martinez  │ 33333333E │
│ 6  │ Ana      │ Fernandez │ 44444444F │
│ 7  │ Diego    │ Sanchez   │ 55555555G │
│ 8  │ Sofia    │ Torres    │ 66666666H │
│ 9  │ Javier   │ Leon      │ 77777777I │
│ 10 │ Lucia    │ Castillo  │ 88888888J │
│ 11 │ Luis     │ Gonzalez  │ 99999999K │
│ 12 │ Marta    │ Diaz      │ 10101010L │
│ 13 │ Victor   │ Vargas    │ 11111112M │
│ 14 │ Elena    │ Castro    │ 12121212N │
│ 15 │ Roberto  │ Blanco    │ 13131313O │
│ 16 │ Natalia  │ Paredes   │ 14141414P │
│ 17 │ Fernando │ Herrera   │ 15151515Q │
│ 18 │ Clara    │ Soto      │ 16161616R │
│ 19 │ Sergio   │ Mendoza   │ 17171717S │
│ 20 │ Patricia │ Navarro   │ 18181818T │
└────┴──────────┴───────────┴───────────┘
```
Modificar el año de un vehículo con ID 3 a 2022:
```sql
UPDATE vehiculo set anyo=2022 WHERE id=3;
┌────┬────────────┬────────────┬──────┬────────────────┐
│ id │   marca    │   modelo   │ anyo │ id_propietario │
├────┼────────────┼────────────┼──────┼────────────────┤
│ 1  │ Ford       │ Fiesta     │ 2019 │ 1              │
│ 2  │ Toyota     │ Corolla    │ 2018 │ 2              │
│ 3  │ Nissan     │ Sentra     │ 2022 │ 3              │
│ 4  │ Chevrolet  │ Spark      │ 2017 │ 4              │
│ 5  │ Honda      │ Civic      │ 2016 │ 5              │
│ 6  │ Ford       │ Mustang    │ 2021 │ 6              │
│ 7  │ Toyota     │ Golf       │ 2020 │ 7              │
│ 8  │ Volkswagen │ RAV4       │ 2019 │ 8              │
│ 9  │ Honda      │ CR-V       │ 2018 │ 9              │
│ 10 │ Nissan     │ Altima     │ 2017 │ 10             │
│ 11 │ Chevrolet  │ Malibu     │ 2019 │ 11             │
│ 12 │ Toyota     │ Camry      │ 2020 │ 12             │
│ 13 │ Honda      │ Accord     │ 2018 │ 13             │
│ 14 │ Ford       │ Explorer   │ 2021 │ 14             │
│ 15 │ Nissan     │ Murano     │ 2019 │ 20             │
│ 16 │ Nissan     │ Rogue      │ 2017 │ 15             │
│ 17 │ Volkswagen │ Jetta      │ 2019 │ 16             │
│ 18 │ Chevrolet  │ Equinox    │ 2018 │ 17             │
│ 19 │ Toyota     │ Highlander │ 2020 │ 18             │
│ 20 │ Honda      │ Odyssey    │ 2016 │ 19             │
└────┴────────────┴────────────┴──────┴────────────────┘
```
Cambiar el modelo de todos los vehículos Nissan a "Micra":
```sql
UPDATE vehiculo set modelo='Micra' WHERE marca='Nissan';
SELECT * from vehiculo;
┌────┬────────────┬────────────┬──────┬────────────────┐
│ id │   marca    │   modelo   │ anyo │ id_propietario │
├────┼────────────┼────────────┼──────┼────────────────┤
│ 1  │ Ford       │ Fiesta     │ 2019 │ 1              │
│ 2  │ Toyota     │ Corolla    │ 2018 │ 2              │
│ 3  │ Nissan     │ Micra      │ 2022 │ 3              │
│ 4  │ Chevrolet  │ Spark      │ 2017 │ 4              │
│ 5  │ Honda      │ Civic      │ 2016 │ 5              │
│ 6  │ Ford       │ Mustang    │ 2021 │ 6              │
│ 7  │ Toyota     │ Golf       │ 2020 │ 7              │
│ 8  │ Volkswagen │ RAV4       │ 2019 │ 8              │
│ 9  │ Honda      │ CR-V       │ 2018 │ 9              │
│ 10 │ Nissan     │ Micra      │ 2017 │ 10             │
│ 11 │ Chevrolet  │ Malibu     │ 2019 │ 11             │
│ 12 │ Toyota     │ Camry      │ 2020 │ 12             │
│ 13 │ Honda      │ Accord     │ 2018 │ 13             │
│ 14 │ Ford       │ Explorer   │ 2021 │ 14             │
│ 15 │ Nissan     │ Micra      │ 2019 │ 20             │
│ 16 │ Nissan     │ Micra      │ 2017 │ 15             │
│ 17 │ Volkswagen │ Jetta      │ 2019 │ 16             │
│ 18 │ Chevrolet  │ Equinox    │ 2018 │ 17             │
│ 19 │ Toyota     │ Highlander │ 2020 │ 18             │
│ 20 │ Honda      │ Odyssey    │ 2016 │ 19             │
└────┴────────────┴────────────┴──────┴────────────────┘
```
Actualizar el apellido de un propietario con ID 7 a "Gomez":
```sql
Update vehiculo set modelo='Micra' where marca='Nissan';
sqlite> select * from vehiculo;
┌────┬────────────┬────────────┬──────┬────────────────┐
│ id │   marca    │   modelo   │ anyo │ id_propietario │
├────┼────────────┼────────────┼──────┼────────────────┤
│ 1  │ Ford       │ Fiesta     │ 2019 │ 1              │
│ 2  │ Toyota     │ Corolla    │ 2018 │ 2              │
│ 3  │ Nissan     │ Micra      │ 2022 │ 3              │
│ 4  │ Chevrolet  │ Spark      │ 2017 │ 4              │
│ 5  │ Honda      │ Civic      │ 2016 │ 5              │
│ 6  │ Ford       │ Mustang    │ 2021 │ 6              │
│ 7  │ Toyota     │ Golf       │ 2020 │ 7              │
│ 8  │ Volkswagen │ RAV4       │ 2019 │ 8              │
│ 9  │ Honda      │ CR-V       │ 2018 │ 9              │
│ 10 │ Nissan     │ Micra      │ 2017 │ 10             │
│ 11 │ Chevrolet  │ Malibu     │ 2019 │ 11             │
│ 12 │ Toyota     │ Camry      │ 2020 │ 12             │
│ 13 │ Honda      │ Accord     │ 2018 │ 13             │
│ 14 │ Ford       │ Explorer   │ 2021 │ 14             │
│ 15 │ Nissan     │ Micra      │ 2019 │ 20             │
│ 16 │ Nissan     │ Micra      │ 2017 │ 15             │
│ 17 │ Volkswagen │ Jetta      │ 2019 │ 16             │
│ 18 │ Chevrolet  │ Equinox    │ 2018 │ 17             │
│ 19 │ Toyota     │ Highlander │ 2020 │ 18             │
│ 20 │ Honda      │ Odyssey    │ 2016 │ 19             │
└────┴────────────┴────────────┴──────┴────────────────┘
update propietario set apellido='Gomez' where id=7;
select * from propietario;
┌────┬──────────┬───────────┬───────────┐
│ id │  nombre  │ apellido  │    dni    │
├────┼──────────┼───────────┼───────────┤
│ 1  │ Carlos   │ Perez     │ 12345678A │
│ 2  │ Maria    │ Lopez     │ 87654321B │
│ 3  │ Carlos   │ Ruiz      │ 11111111C │
│ 4  │ Laura    │ Gomez     │ 22222222D │
│ 5  │ Pedro    │ Martinez  │ 33333333E │
│ 6  │ Ana      │ Fernandez │ 44444444F │
│ 7  │ Diego    │ Gomez     │ 55555555G │
│ 8  │ Sofia    │ Torres    │ 66666666H │
│ 9  │ Javier   │ Leon      │ 77777777I │
│ 10 │ Lucia    │ Castillo  │ 88888888J │
│ 11 │ Luis     │ Gonzalez  │ 99999999K │
│ 12 │ Marta    │ Diaz      │ 10101010L │
│ 13 │ Victor   │ Vargas    │ 11111112M │
│ 14 │ Elena    │ Castro    │ 12121212N │
│ 15 │ Roberto  │ Blanco    │ 13131313O │
│ 16 │ Natalia  │ Paredes   │ 14141414P │
│ 17 │ Fernando │ Herrera   │ 15151515Q │
│ 18 │ Clara    │ Soto      │ 16161616R │
│ 19 │ Sergio   │ Mendoza   │ 17171717S │
│ 20 │ Patricia │ Navarro   │ 18181818T │
└────┴──────────┴───────────┴───────────┘
```
Modificar la marca de un vehículo con modelo "Fiesta" a "Renault":
```sql
update vehiculo set marca='Renault' where modelo='Fiesta';
sqlite> select * from vehiculo;
┌────┬────────────┬────────────┬──────┬────────────────┐
│ id │   marca    │   modelo   │ anyo │ id_propietario │
├────┼────────────┼────────────┼──────┼────────────────┤
│ 1  │ Renault    │ Fiesta     │ 2019 │ 1              │
│ 2  │ Toyota     │ Corolla    │ 2018 │ 2              │
│ 3  │ Nissan     │ Micra      │ 2022 │ 3              │
│ 4  │ Chevrolet  │ Spark      │ 2017 │ 4              │
│ 5  │ Honda      │ Civic      │ 2016 │ 5              │
│ 6  │ Ford       │ Mustang    │ 2021 │ 6              │
│ 7  │ Toyota     │ Golf       │ 2020 │ 7              │
│ 8  │ Volkswagen │ RAV4       │ 2019 │ 8              │
│ 9  │ Honda      │ CR-V       │ 2018 │ 9              │
│ 10 │ Nissan     │ Micra      │ 2017 │ 10             │
│ 11 │ Chevrolet  │ Malibu     │ 2019 │ 11             │
│ 12 │ Toyota     │ Camry      │ 2020 │ 12             │
│ 13 │ Honda      │ Accord     │ 2018 │ 13             │
│ 14 │ Ford       │ Explorer   │ 2021 │ 14             │
│ 15 │ Nissan     │ Micra      │ 2019 │ 20             │
│ 16 │ Nissan     │ Micra      │ 2017 │ 15             │
│ 17 │ Volkswagen │ Jetta      │ 2019 │ 16             │
│ 18 │ Chevrolet  │ Equinox    │ 2018 │ 17             │
│ 19 │ Toyota     │ Highlander │ 2020 │ 18             │
│ 20 │ Honda      │ Odyssey    │ 2016 │ 19             │
└────┴────────────┴────────────┴──────┴────────────────┘
```