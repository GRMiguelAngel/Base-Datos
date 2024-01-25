**Muestra el nombre de todos los empleados en mayúsculas.**
```sql
select upper(nombre) from empleados;
┌───────────────┐
│ upper(nombre) │
├───────────────┤
│ JUAN          │
│ MARíA         │
│ CARLOS        │
│ ANA           │
│ PEDRO         │
│ LAURA         │
│ JAVIER        │
│ CARMEN        │
│ MIGUEL        │
│ ELENA         │
│ DIEGO         │
│ SOFíA         │
│ ANDRéS        │
│ ISABEL        │
│ RAúL          │
│ PATRICIA      │
│ ALEJANDRO     │
│ NATALIA       │
│ ROBERTO       │
│ BEATRIZ       │
└───────────────┘
```
**Calcula el valor absoluto del salario de todos los empleados.**
```sql
select abs(salario) from empleados;
┌──────────────┐
│ abs(salario) │
├──────────────┤
│ 50000.0      │
│ 60000.0      │
│ 55000.0      │
│ 48000.0      │
│ 70000.0      │
│ 52000.0      │
│ 48000.0      │
│ 65000.0      │
│ 51000.0      │
│ 55000.0      │
│ 72000.0      │
│ 49000.0      │
│ 60000.0      │
│ 53000.0      │
│ 68000.0      │
│ 47000.0      │
│ 71000.0      │
│ 54000.0      │
│ 49000.0      │
│ 63000.0      │
└──────────────┘
```
**Muestra la fecha actual.**
```sql
select current_date'Fecha';
┌────────────┐
│   Fecha    │
├────────────┤
│ 2024-01-17 │
└────────────┘
```
**Calcula el promedio de salarios de todos los empleados.**
```sql
select avg(salario) as media_salario from empleados;
┌───────────────┐
│ media_salario │
├───────────────┤
│ 57000.0       │
└───────────────┘
```
**Convierte la cadena '123' a un valor entero.**
```sql
select cast('123' as integer) as str_integer;
┌─────────────┐
│ str_integer │
├─────────────┤
│ 123         │
└─────────────┘
```
**Concatena el nombre y el departamento de cada empleado.**
```sql
select nombre || ' ' || departamento as nombre_depart from empleados;
┌───────────────────────────┐
│       nombre_depart       │
├───────────────────────────┤
│ Juan Ventas               │
│ María TI                  │
│ Carlos Ventas             │
│ Ana Recursos Humanos      │
│ Pedro TI                  │
│ Laura Ventas              │
│ Javier Recursos Humanos   │
│ Carmen TI                 │
│ Miguel Ventas             │
│ Elena Recursos Humanos    │
│ Diego TI                  │
│ Sofía Ventas              │
│ Andrés Recursos Humanos   │
│ Isabel TI                 │
│ Raúl Ventas               │
│ Patricia Recursos Humanos │
│ Alejandro TI              │
│ Natalia Ventas            │
│ Roberto Recursos Humanos  │
│ Beatriz TI                │
└───────────────────────────┘
```
**Concatena el nombre y el departamento de cada empleado con un guion como separador.**
```sql
select nombre || '-' || departamento as nombre_depart from empleados;
┌───────────────────────────┐
│       nombre_depart       │
├───────────────────────────┤
│ Juan-Ventas               │
│ María-TI                  │
│ Carlos-Ventas             │
│ Ana-Recursos Humanos      │
│ Pedro-TI                  │
│ Laura-Ventas              │
│ Javier-Recursos Humanos   │
│ Carmen-TI                 │
│ Miguel-Ventas             │
│ Elena-Recursos Humanos    │
│ Diego-TI                  │
│ Sofía-Ventas              │
│ Andrés-Recursos Humanos   │
│ Isabel-TI                 │
│ Raúl-Ventas               │
│ Patricia-Recursos Humanos │
│ Alejandro-TI              │
│ Natalia-Ventas            │
│ Roberto-Recursos Humanos  │
│ Beatriz-TI                │
└───────────────────────────┘
```
**Categoriza a los empleados según sus salarios.**
```sql
SELECT nombre, salario, case when salario < 40000 then 'low' when salario BETWEEN 40000 and 55000 then 'medium' when salario > 55000 then 'high' end as categoría from empleados;
┌───────────┬─────────┬───────────┐
│  nombre   │ salario │ categoría │
├───────────┼─────────┼───────────┤
│ Juan      │ 50000.0 │ medium    │
│ María     │ 60000.0 │ high      │
│ Carlos    │ 55000.0 │ medium    │
│ Ana       │ 48000.0 │ medium    │
│ Pedro     │ 70000.0 │ high      │
│ Laura     │ 52000.0 │ medium    │
│ Javier    │ 48000.0 │ medium    │
│ Carmen    │ 65000.0 │ high      │
│ Miguel    │ 51000.0 │ medium    │
│ Elena     │ 55000.0 │ medium    │
│ Diego     │ 72000.0 │ high      │
│ Sofía     │ 49000.0 │ medium    │
│ Andrés    │ 60000.0 │ high      │
│ Isabel    │ 53000.0 │ medium    │
│ Raúl      │ 68000.0 │ high      │
│ Patricia  │ 47000.0 │ medium    │
│ Alejandro │ 71000.0 │ high      │
│ Natalia   │ 54000.0 │ medium    │
│ Roberto   │ 49000.0 │ medium    │
│ Beatriz   │ 63000.0 │ high      │
└───────────┴─────────┴───────────┘
```
**Calcula la suma total de salarios de todos los empleados.**
```sql
select sum(salario) as suma_total from empleados;
┌────────────┐
│ suma_total │
├────────────┤
│ 1140000.0  │
└────────────┘
```
**Redondea el salario de todos los empleados a dos decimales.**
```sql
select round(salario, 2) as salario_redondeado from empleados;
┌────────────────────┐
│ salario_redondeado │
├────────────────────┤
│ 50000.0            │
│ 60000.0            │
│ 55000.0            │
│ 48000.0            │
│ 70000.0            │
│ 52000.0            │
│ 48000.0            │
│ 65000.0            │
│ 51000.0            │
│ 55000.0            │
│ 72000.0            │
│ 49000.0            │
│ 60000.0            │
│ 53000.0            │
│ 68000.0            │
│ 47000.0            │
│ 71000.0            │
│ 54000.0            │
│ 49000.0            │
│ 63000.0            │
└────────────────────┘
```
**Muestra la longitud de cada nombre de empleado.**
```sql
select length(nombre) as longitud_nombre from empleados;
┌─────────────────┐
│ longitud_nombre │
├─────────────────┤
│ 4               │
│ 5               │
│ 6               │
│ 3               │
│ 5               │
│ 5               │
│ 6               │
│ 6               │
│ 6               │
│ 5               │
│ 5               │
│ 5               │
│ 6               │
│ 6               │
│ 4               │
│ 8               │
│ 9               │
│ 7               │
│ 7               │
│ 7               │
└─────────────────┘
```
**Cuenta el número total de empleados en cada departamento.**
```sql
select count(nombre) as empleados, departamento from empleados group by departamento ;
┌───────────┬──────────────────┐
│ empleados │   departamento   │
├───────────┼──────────────────┤
│ 6         │ Recursos Humanos │
│ 7         │ TI               │
│ 7         │ Ventas           │
└───────────┴──────────────────┘
```
**Muestra la hora actual.**
```sql
select current_time'Hora';
┌──────────┐
│   Hora   │
├──────────┤
│ 22:10:22 │
└──────────┘
```
**Convierte el salario a un valor de punto flotante.**
```sql
select cast(salario as REAL) as 'salario a punto flotante' from empleados;
┌──────────────────────────┐
│ salario a punto flotante │
├──────────────────────────┤
│ 50000.0                  │
│ 60000.0                  │
│ 55000.0                  │
│ 48000.0                  │
│ 70000.0                  │
│ 52000.0                  │
│ 48000.0                  │
│ 65000.0                  │
│ 51000.0                  │
│ 55000.0                  │
│ 72000.0                  │
│ 49000.0                  │
│ 60000.0                  │
│ 53000.0                  │
│ 68000.0                  │
│ 47000.0                  │
│ 71000.0                  │
│ 54000.0                  │
│ 49000.0                  │
│ 63000.0                  │
└──────────────────────────┘
```
**Muestra los primeros tres caracteres de cada nombre de empleado.**
```sql
select SUBSTR(nombre, 1, 3) as 'Nombre acortado'  from empleados;
┌─────────────────┐
│ Nombre acortado │
├─────────────────┤
│ Jua             │
│ Mar             │
│ Car             │
│ Ana             │
│ Ped             │
│ Lau             │
│ Jav             │
│ Car             │
│ Mig             │
│ Ele             │
│ Die             │
│ Sof             │
│ And             │
│ Isa             │
│ Raú             │
│ Pat             │
│ Ale             │
│ Nat             │
│ Rob             │
│ Bea             │
└─────────────────┘
```

**Empleados en el departamento de 'Ventas' con salarios superiores a 52000.**
```sql
select nombre, departamento, salario from empleados WHERE departamento like "Ventas" and salario > 52000;
┌─────────┬──────────────┬─────────┐
│ nombre  │ departamento │ salario │
├─────────┼──────────────┼─────────┤
│ Carlos  │ Ventas       │ 55000.0 │
│ Raúl    │ Ventas       │ 68000.0 │
│ Natalia │ Ventas       │ 54000.0 │
└─────────┴──────────────┴─────────┘
```
**Empleados cuyos nombres contienen la letra 'a' y tienen salarios ordenados de manera ascendente.**

```sql
SELECT nombre, salario FROM empleados WHERE nombre like "%a%" ORDER BY salario ;

┌───────────┬─────────┐
│  nombre   │ salario │
├───────────┼─────────┤
│ Patricia  │ 47000.0 │
│ Ana       │ 48000.0 │
│ Javier    │ 48000.0 │
│ Sofía     │ 49000.0 │
│ Juan      │ 50000.0 │
│ Laura     │ 52000.0 │
│ Isabel    │ 53000.0 │
│ Natalia   │ 54000.0 │
│ Carlos    │ 55000.0 │
│ Elena     │ 55000.0 │
│ María     │ 60000.0 │
│ Andrés    │ 60000.0 │
│ Beatriz   │ 63000.0 │
│ Carmen    │ 65000.0 │
│ Raúl      │ 68000.0 │
│ Alejandro │ 71000.0 │
└───────────┴─────────┘
```
**Empleados en el departamento 'Recursos Humanos' con salarios entre 45000 y 55000.**
    
```sql
select nombre, departamento, salario FROM empleados WHERE departamento like 'Recursos Humanos' and salario BETWEEN 45000 and 55000;
┌──────────┬──────────────────┬─────────┐
│  nombre  │   departamento   │ salario │
├──────────┼──────────────────┼─────────┤
│ Ana      │ Recursos Humanos │ 48000.0 │
│ Javier   │ Recursos Humanos │ 48000.0 │
│ Elena    │ Recursos Humanos │ 55000.0 │
│ Patricia │ Recursos Humanos │ 47000.0 │
│ Roberto  │ Recursos Humanos │ 49000.0 │
└──────────┴──────────────────┴─────────┘
```
**Empleados con salarios en orden descendente, limitando a los primeros 5 resultados.**

```sql  
select nombre, salario FROM empleados order by salario DESC LIMIT 0,5;
┌───────────┬─────────┐
│  nombre   │ salario │
├───────────┼─────────┤
│ Diego     │ 72000.0 │
│ Alejandro │ 71000.0 │
│ Pedro     │ 70000.0 │
│ Raúl      │ 68000.0 │
│ Carmen    │ 65000.0 │
└───────────┴─────────┘
```
**Empleados cuyos nombres comienzan con 'M' o 'N' y tienen salarios superiores a 50000.**
```sql  
select nombre, salario FROM empleados WHERE nombre like 'M%' or nombre like 'N%' and salario >50000;
┌─────────┬─────────┐
│ nombre  │ salario │
├─────────┼─────────┤
│ María   │ 60000.0 │
│ Miguel  │ 51000.0 │
│ Natalia │ 54000.0 │
└─────────┴─────────┘
```
**Empleados en el departamento 'TI' o 'Ventas' ordenados alfabéticamente por nombre.**

```sql
select nombre, departamento FROM empleados WHERE departamento like 'TI' or departamento like 'Ventas' order by nombre;
┌───────────┬──────────────┐
│  nombre   │ departamento │
├───────────┼──────────────┤
│ Alejandro │ TI           │
│ Beatriz   │ TI           │
│ Carlos    │ Ventas       │
│ Carmen    │ TI           │
│ Diego     │ TI           │
│ Isabel    │ TI           │
│ Juan      │ Ventas       │
│ Laura     │ Ventas       │
│ María     │ TI           │
│ Miguel    │ Ventas       │
│ Natalia   │ Ventas       │
│ Pedro     │ TI           │
│ Raúl      │ Ventas       │
│ Sofía     │ Ventas       │
└───────────┴──────────────┘
```
**Empleados con salarios únicos (eliminando duplicados) en orden ascendente.**
```sql
select distinct nombre, salario from empleados group by salario order by salario;
┌───────────┬─────────┐
│  nombre   │ salario │
├───────────┼─────────┤
│ Patricia  │ 47000.0 │
│ Ana       │ 48000.0 │
│ Sofía     │ 49000.0 │
│ Juan      │ 50000.0 │
│ Miguel    │ 51000.0 │
│ Laura     │ 52000.0 │
│ Isabel    │ 53000.0 │
│ Natalia   │ 54000.0 │
│ Carlos    │ 55000.0 │
│ María     │ 60000.0 │
│ Beatriz   │ 63000.0 │
│ Carmen    │ 65000.0 │
│ Raúl      │ 68000.0 │
│ Pedro     │ 70000.0 │
│ Alejandro │ 71000.0 │
│ Diego     │ 72000.0 │
└───────────┴─────────┘
```  
**Empleados cuyos nombres terminan con 'o' o 'a' y están en el departamento 'Ventas'.**
```sql 
SELECT nombre, departamento FROM empleados WHERE nombre like '%o' or nombre like '%a' and departamento like 'Ventas';
┌───────────┬──────────────────┐
│  nombre   │   departamento   │
├───────────┼──────────────────┤
│ Pedro     │ TI               │
│ Laura     │ Ventas           │
│ Diego     │ TI               │
│ Sofía     │ Ventas           │
│ Alejandro │ TI               │
│ Natalia   │ Ventas           │
│ Roberto   │ Recursos Humanos │
└───────────┴──────────────────┘
```
**Empleados con salarios fuera del rango de 55000 a 70000, ordenados por departamento.**
```sql  
select nombre, salario FROM empleados where salario not BETWEEN 55000 and 70000 order by departamento ;
┌───────────┬─────────┐
│  nombre   │ salario │
├───────────┼─────────┤
│ Ana       │ 48000.0 │
│ Javier    │ 48000.0 │
│ Patricia  │ 47000.0 │
│ Roberto   │ 49000.0 │
│ Diego     │ 72000.0 │
│ Isabel    │ 53000.0 │
│ Alejandro │ 71000.0 │
│ Juan      │ 50000.0 │
│ Laura     │ 52000.0 │
│ Miguel    │ 51000.0 │
│ Sofía     │ 49000.0 │
│ Natalia   │ 54000.0 │
└───────────┴─────────┘
```
**Empleados en el departamento 'Recursos Humanos' con nombres que no contienen la letra 'e'.**
```sql
select nombre, departamento FROM empleados WHERE departamento like 'Recursos Humanos' and (nombre not like '%e%' and nombre not like '%é%');
┌──────────┬──────────────────┐
│  nombre  │   departamento   │
├──────────┼──────────────────┤
│ Ana      │ Recursos Humanos │
│ Patricia │ Recursos Humanos │
└──────────┴──────────────────┘
```
