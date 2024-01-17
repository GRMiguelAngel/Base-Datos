    Empleados en el departamento de 'Ventas' con salarios superiores a 52000.

select nombre, departamento, salario from empleados WHERE departamento like "Ventas" and salario > 52000;
┌─────────┬──────────────┬─────────┐
│ nombre  │ departamento │ salario │
├─────────┼──────────────┼─────────┤
│ Carlos  │ Ventas       │ 55000.0 │
│ Raúl    │ Ventas       │ 68000.0 │
│ Natalia │ Ventas       │ 54000.0 │
└─────────┴──────────────┴─────────┘

    Empleados cuyos nombres contienen la letra 'a' y tienen salarios ordenados de manera ascendente.

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

    Empleados en el departamento 'Recursos Humanos' con salarios entre 45000 y 55000.
    
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

    Empleados con salarios en orden descendente, limitando a los primeros 5 resultados.
    
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

    Empleados cuyos nombres comienzan con 'M' o 'N' y tienen salarios superiores a 50000.
    
select nombre, salario FROM empleados WHERE nombre like 'M%' or nombre like 'N%' and salario >50000;
┌─────────┬─────────┐
│ nombre  │ salario │
├─────────┼─────────┤
│ María   │ 60000.0 │
│ Miguel  │ 51000.0 │
│ Natalia │ 54000.0 │
└─────────┴─────────┘

    Empleados en el departamento 'TI' o 'Ventas' ordenados alfabéticamente por nombre.
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

    Empleados con salarios únicos (eliminando duplicados) en orden ascendente.

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
    
    Empleados cuyos nombres terminan con 'o' o 'a' y están en el departamento 'Ventas'.
    
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

    Empleados con salarios fuera del rango de 55000 a 70000, ordenados por departamento.
    
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

    Empleados en el departamento 'Recursos Humanos' con nombres que no contienen la letra 'e'.

select nombre, departamento FROM empleados WHERE departamento like 'Recursos Humanos' and (nombre not like '%e%' and nombre not like '%é%');
┌──────────┬──────────────────┐
│  nombre  │   departamento   │
├──────────┼──────────────────┤
│ Ana      │ Recursos Humanos │
│ Patricia │ Recursos Humanos │
└──────────┴──────────────────┘

    Categoriza a los empleados según sus salarios.

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
