Cambiar el tipo de Pikachu a "Eléctrico/Rojo".
```sql
select * from pokemon, tipo where pokemon.nombre='Pikachu' and pokemon.id_tipo=tipo.id;
┌────┬─────────┬─────────┬───────┬────┬───────────┐
│ id │ nombre  │ id_tipo │ nivel │ id │  nombre   │
├────┼─────────┼─────────┼───────┼────┼───────────┤
│ 4  │ Pikachu │ 4       │ 15    │ 4  │ Eléctrico │
└────┴─────────┴─────────┴───────┴────┴───────────┘

update tipo set nombre='Electrico/Rojo' from Pokemon where pokemon.id_tipo=tipo.id and pokemon.nombre='Pikachu';
select * from pokemon, tipo where pokemon.nombre='Pikachu' and pokemon.id_tipo=tipo.id;
┌────┬─────────┬─────────┬───────┬────┬────────────────┐
│ id │ nombre  │ id_tipo │ nivel │ id │     nombre     │
├────┼─────────┼─────────┼───────┼────┼────────────────┤
│ 4  │ Pikachu │ 4       │ 15    │ 4  │ Electrico/Rojo │
└────┴─────────┴─────────┴───────┴────┴────────────────┘
```
Incrementar el nivel de todos los Pokémon de tipo Agua.
```sql
select * from pokemon;
┌────┬────────────┬─────────┬───────┐
│ id │   nombre   │ id_tipo │ nivel │
├────┼────────────┼─────────┼───────┤
│ 1  │ Bulbasaur  │ 3       │ 10    │
│ 2  │ Charmander │ 2       │ 12    │
│ 3  │ Squirtle   │ 1       │ 8     │
│ 4  │ Pikachu    │ 4       │ 15    │
│ 5  │ Geodude    │ 5       │ 11    │
│ 6  │ Vaporeon   │ 1       │ 25    │
│ 7  │ Flareon    │ 2       │ 27    │
│ 8  │ Ivysaur    │ 3       │ 18    │
│ 9  │ Jolteon    │ 4       │ 22    │
│ 10 │ Cubone     │ 5       │ 14    │
│ 11 │ Gyarados   │ 1       │ 30    │
│ 12 │ Arcanine   │ 2       │ 35    │
│ 13 │ Exeggutor  │ 3       │ 40    │
│ 14 │ Raichu     │ 4       │ 38    │
│ 15 │ Sandslash  │ 5       │ 33    │
│ 16 │ Venusaur   │ 3       │ 45    │
│ 17 │ Charizard  │ 2       │ 50    │
│ 18 │ Blastoise  │ 1       │ 55    │
│ 19 │ Electabuzz │ 4       │ 48    │
│ 20 │ Rhydon     │ 5       │ 52    │
│ 21 │ Dragonite  │ 2       │ 60    │
│ 22 │ Flareon    │ 2       │ 65    │
│ 23 │ Venusaur   │ 3       │ 70    │
│ 24 │ Zapdos     │ 4       │ 75    │
│ 25 │ Rhydon     │ 5       │ 80    │
└────┴────────────┴─────────┴───────┘

update pokemon set nivel=77 from tipo where tipo.nombre='Agua' and tipo.id=pokemon.id_tipo;
select * from pokemon;
┌────┬────────────┬─────────┬───────┐
│ id │   nombre   │ id_tipo │ nivel │
├────┼────────────┼─────────┼───────┤
│ 1  │ Bulbasaur  │ 3       │ 10    │
│ 2  │ Charmander │ 2       │ 12    │
│ 3  │ Squirtle   │ 1       │ 77    │
│ 4  │ Pikachu    │ 4       │ 15    │
│ 5  │ Geodude    │ 5       │ 11    │
│ 6  │ Vaporeon   │ 1       │ 77    │
│ 7  │ Flareon    │ 2       │ 27    │
│ 8  │ Ivysaur    │ 3       │ 18    │
│ 9  │ Jolteon    │ 4       │ 22    │
│ 10 │ Cubone     │ 5       │ 14    │
│ 11 │ Gyarados   │ 1       │ 77    │
│ 12 │ Arcanine   │ 2       │ 35    │
│ 13 │ Exeggutor  │ 3       │ 40    │
│ 14 │ Raichu     │ 4       │ 38    │
│ 15 │ Sandslash  │ 5       │ 33    │
│ 16 │ Venusaur   │ 3       │ 45    │
│ 17 │ Charizard  │ 2       │ 50    │
│ 18 │ Blastoise  │ 1       │ 77    │
│ 19 │ Electabuzz │ 4       │ 48    │
│ 20 │ Rhydon     │ 5       │ 52    │
│ 21 │ Dragonite  │ 2       │ 60    │
│ 22 │ Flareon    │ 2       │ 65    │
│ 23 │ Venusaur   │ 3       │ 70    │
│ 24 │ Zapdos     │ 4       │ 75    │
│ 25 │ Rhydon     │ 5       │ 80    │
└────┴────────────┴─────────┴───────┘
```
Eliminar a Jynx de la lista de Pokémon.
```sql
select * from pokemon;
┌────┬────────────┬─────────┬───────┐
│ id │   nombre   │ id_tipo │ nivel │
├────┼────────────┼─────────┼───────┤
│ 1  │ Bulbasaur  │ 3       │ 10    │
│ 2  │ Charmander │ 2       │ 12    │
│ 3  │ Squirtle   │ 1       │ 8     │
│ 4  │ Pikachu    │ 4       │ 15    │
│ 5  │ Geodude    │ 5       │ 11    │
│ 6  │ Vaporeon   │ 1       │ 25    │
│ 7  │ Flareon    │ 2       │ 27    │
│ 8  │ Ivysaur    │ 3       │ 18    │
│ 9  │ Jolteon    │ 4       │ 22    │
│ 10 │ Cubone     │ 5       │ 14    │
│ 11 │ Gyarados   │ 1       │ 30    │
│ 12 │ Arcanine   │ 2       │ 35    │
│ 13 │ Exeggutor  │ 3       │ 40    │
│ 14 │ Raichu     │ 4       │ 38    │
│ 15 │ Sandslash  │ 5       │ 33    │
│ 16 │ Venusaur   │ 3       │ 45    │
│ 17 │ Charizard  │ 2       │ 50    │
│ 18 │ Blastoise  │ 1       │ 55    │
│ 19 │ Electabuzz │ 4       │ 48    │
│ 20 │ Rhydon     │ 5       │ 52    │
│ 21 │ Dragonite  │ 2       │ 60    │
│ 22 │ Flareon    │ 2       │ 65    │
│ 23 │ Venusaur   │ 3       │ 70    │
│ 24 │ Zapdos     │ 4       │ 75    │
│ 25 │ Rhydon     │ 5       │ 80    │
└────┴────────────┴─────────┴───────┘

delete from pokemon where nombre='Jynx';
select nombre from pokemon where nombre='Jynx';
```
Eliminar el tipo "Hielo" de la lista de tipos de Pokémon.
```sql
select * from tipo;
┌────┬────────────────┐
│ id │     nombre     │
├────┼────────────────┤
│ 1  │ Agua           │
│ 2  │ Fuego          │
│ 3  │ Planta         │
│ 4  │ Electrico/Rojo │
│ 5  │ Tierra         │
└────┴────────────────┘
delete from tipo where nombre='Hielo';
select * from tipo;
┌────┬────────────────┐
│ id │     nombre     │
├────┼────────────────┤
│ 1  │ Agua           │
│ 2  │ Fuego          │
│ 3  │ Planta         │
│ 4  │ Electrico/Rojo │
│ 5  │ Tierra         │
└────┴────────────────┘
```
Obtener todos los Pokémon.
```sql
select nombre from pokemon;
┌────────────┐
│   nombre   │
├────────────┤
│ Bulbasaur  │
│ Charmander │
│ Squirtle   │
│ Pikachu    │
│ Geodude    │
│ Vaporeon   │
│ Flareon    │
│ Ivysaur    │
│ Jolteon    │
│ Cubone     │
│ Gyarados   │
│ Arcanine   │
│ Exeggutor  │
│ Raichu     │
│ Sandslash  │
│ Venusaur   │
│ Charizard  │
│ Blastoise  │
│ Electabuzz │
│ Rhydon     │
│ Dragonite  │
│ Flareon    │
│ Venusaur   │
│ Zapdos     │
│ Rhydon     │
└────────────┘
```
Obtener el nombre y nivel de los Pokémon de tipo Fuego.
```sql
select pokemon.nombre, pokemon.nivel, tipo.nombre from pokemon, tipo where tipo.nombre='Fuego'and tipo.id=pokemon.id_tipo;
┌────────────┬───────┬────────┐
│   nombre   │ nivel │ nombre │
├────────────┼───────┼────────┤
│ Charmander │ 12    │ Fuego  │
│ Flareon    │ 27    │ Fuego  │
│ Arcanine   │ 35    │ Fuego  │
│ Charizard  │ 50    │ Fuego  │
│ Dragonite  │ 60    │ Fuego  │
│ Flareon    │ 65    │ Fuego  │
└────────────┴───────┴────────┘
```
 Obtener el nombre de los Pokémon que tienen un nivel superior a 30.
```sql
select nombre, nivel from pokemon where nivel>30;
┌────────────┬───────┐
│   nombre   │ nivel │
├────────────┼───────┤
│ Squirtle   │ 77    │
│ Vaporeon   │ 77    │
│ Gyarados   │ 77    │
│ Arcanine   │ 35    │
│ Exeggutor  │ 40    │
│ Raichu     │ 38    │
│ Sandslash  │ 33    │
│ Venusaur   │ 45    │
│ Charizard  │ 50    │
│ Blastoise  │ 77    │
│ Electabuzz │ 48    │
│ Rhydon     │ 52    │
│ Dragonite  │ 60    │
│ Flareon    │ 65    │
│ Venusaur   │ 70    │
│ Zapdos     │ 75    │
│ Rhydon     │ 80    │
└────────────┴───────┘
```
Obtener el nombre de los Pokémon ordenados por nivel de forma descendente.
```sql
select nombre from pokemon order by nombre desc;
┌────────────┐
│   nombre   │
├────────────┤
│ Zapdos     │
│ Venusaur   │
│ Venusaur   │
│ Vaporeon   │
│ Squirtle   │
│ Sandslash  │
│ Rhydon     │
│ Rhydon     │
│ Raichu     │
│ Pikachu    │
│ Jolteon    │
│ Ivysaur    │
│ Gyarados   │
│ Geodude    │
│ Flareon    │
│ Flareon    │
│ Exeggutor  │
│ Electabuzz │
│ Dragonite  │
│ Cubone     │
│ Charmander │
│ Charizard  │
│ Bulbasaur  │
│ Blastoise  │
│ Arcanine   │
└────────────┘
```
Obtener la cantidad de Pokémon por tipo.
```sql
select count(pokemon.id) as 'Cantidad de pokemon', tipo.nombre from pokemon, tipo where pokemon.id_tipo=tipo.id group by pokemon.id_tipo;
┌─────────────────────┬────────────────┐
│ Cantidad de pokemon │     nombre     │
├─────────────────────┼────────────────┤
│ 4                   │ Agua           │
│ 6                   │ Fuego          │
│ 5                   │ Planta         │
│ 5                   │ Electrico/Rojo │
│ 5                   │ Tierra         │
└─────────────────────┴────────────────┘
```
Obtener la información completa de un Pokémon específico. Selecciona el que desees.
```sql
select * from pokemon, tipo where pokemon.nombre='Charmander' and pokemon.id_tipo=tipo.id;
┌────┬────────────┬─────────┬───────┬────┬────────┐
│ id │   nombre   │ id_tipo │ nivel │ id │ nombre │
├────┼────────────┼─────────┼───────┼────┼────────┤
│ 2  │ Charmander │ 2       │ 12    │ 2  │ Fuego  │
└────┴────────────┴─────────┴───────┴────┴────────┘
```
Obtener el promedio de niveles de todos los Pokémon.
```sql
select avg(nivel) as 'nivel promedio' from pokemon;
┌────────────────┐
│ nivel promedio │
├────────────────┤
│ 45.12          │
└────────────────┘
```
Obtener el nombre del Pokémon de mayor nivel.
```sql
select max(nivel) as 'Mayor nivel' from pokemon;
┌─────────────┐
│ Mayor nivel │
├─────────────┤
│ 80          │
└─────────────┘
```
Actualizar el nombre de Bulbasaur a "Bulbasaur Nv. 15":
```sql
select nombre from pokemon where nombre='Bulbasaur';
update pokemon set nombre="Bulbasaur Nv. 15" where nombre='Bulbasaur';
```
Obtener los Pokémon de tipo Planta con nivel superior a 20:
```sql
select pokemon.nombre, tipo.nombre as tipo, pokemon.nivel from pokemon, tipo where pokemon.nivel>20 and pokemon.id_tipo=tipo.id and tipo.nombre='Planta';
┌────────────┬────────────────┬───────┐
│   nombre   │      tipo      │ nivel │
├────────────┼────────────────┼───────┤
│ Exeggutor  │ Planta         │ 40    │
│ Venusaur   │ Planta         │ 45    │
│ Venusaur   │ Planta         │ 70    │
└────────────┴────────────────┴───────┘
```
Actualizar el tipo de Pikachu a "Eléctrico/Azul":
```sql
select * from pokemon, tipo where pokemon.nombre='Pikachu' and pokemon.id_tipo=tipo.id;
┌────┬─────────┬─────────┬───────┬────┬────────────────┐
│ id │ nombre  │ id_tipo │ nivel │ id │     nombre     │
├────┼─────────┼─────────┼───────┼────┼────────────────┤
│ 4  │ Pikachu │ 4       │ 15    │ 4  │ Electrico/Rojo │
└────┴─────────┴─────────┴───────┴────┴────────────────┘

update tipo set nombre='Electrico/Azul' from Pokemon where pokemon.id_tipo=tipo.id and pokemon.nombre='Pikachu';
┌────┬─────────┬─────────┬───────┬────┬────────────────┐
│ id │ nombre  │ id_tipo │ nivel │ id │     nombre     │
├────┼─────────┼─────────┼───────┼────┼────────────────┤
│ 4  │ Pikachu │ 4       │ 15    │ 4  │ Electrico/Azul │
└────┴─────────┴─────────┴───────┴────┴────────────────┘
```
Eliminar todos los Pokémon de tipo Planta.
```sql
select * from pokemon, tipo where tipo.nombre='Planta' and pokemon.id_tipo=tipo.id;
┌────┬───────────┬─────────┬───────┬────┬────────┐
│ id │  nombre   │ id_tipo │ nivel │ id │ nombre │
├────┼───────────┼─────────┼───────┼────┼────────┤
│ 1  │ Bulbasaur │ 3       │ 10    │ 3  │ Planta │
│ 8  │ Ivysaur   │ 3       │ 18    │ 3  │ Planta │
│ 13 │ Exeggutor │ 3       │ 40    │ 3  │ Planta │
│ 16 │ Venusaur  │ 3       │ 45    │ 3  │ Planta │
│ 23 │ Venusaur  │ 3       │ 70    │ 3  │ Planta │
└────┴───────────┴─────────┴───────┴────┴────────┘
delete from pokemon where id_tipo in(select id from tipo where nombre='Planta');
select * from pokemon, tipo where tipo.nombre='Planta' and pokemon.id_tipo=tipo.id;
```
Obtener los Pokémon con nombre y tipo ordenados alfabéticamente.
```sql
select pokemon.nombre as nombre, tipo.nombre as tipo from pokemon, tipo where tipo.id=pokemon.id_tipo order by pokemon.nombre;
┌────────────┬────────────────┐
│   nombre   │      tipo      │
├────────────┼────────────────┤
│ Arcanine   │ Fuego          │
│ Blastoise  │ Agua           │
│ Charizard  │ Fuego          │
│ Charmander │ Fuego          │
│ Cubone     │ Tierra         │
│ Dragonite  │ Fuego          │
│ Electabuzz │ Electrico/Azul │
│ Flareon    │ Fuego          │
│ Flareon    │ Fuego          │
│ Geodude    │ Tierra         │
│ Gyarados   │ Agua           │
│ Jolteon    │ Electrico/Azul │
│ Pikachu    │ Electrico/Azul │
│ Raichu     │ Electrico/Azul │
│ Rhydon     │ Tierra         │
│ Rhydon     │ Tierra         │
│ Sandslash  │ Tierra         │
│ Squirtle   │ Agua           │
│ Vaporeon   │ Agua           │
│ Zapdos     │ Electrico/Azul │
└────────────┴────────────────┘
```
Obtén todos los Pokémon cuyos nombres contienen las letras 'sa'.
```sql
select nombre from pokemon where nombre like '%as%';
┌───────────┐
│  nombre   │
├───────────┤
│ Sandslash │
│ Blastoise │
└───────────┘
```
 Encuentra todos los Pokémon cuyo nivel es 40, 50 o 60.
```sql
select nombre, nivel from pokemon where nivel=40 or nivel=50 or nivel=60;
┌───────────┬───────┐
│  nombre   │ nivel │
├───────────┼───────┤
│ Charizard │ 50    │
│ Dragonite │ 60    │
└───────────┴───────┘
```
Obtén todos los Pokémon de tipo Fuego cuyos nombres comienzan con la letra 'C'.
```sql
select pokemon.nombre as nombre, tipo.nombre as tipo from pokemon, tipo where pokemon.nombre like 'C%' and tipo.nombre='Fuego' and tipo.id=pokemon.id_tipo;
┌────────────┬───────┐
│   nombre   │ tipo  │
├────────────┼───────┤
│ Charmander │ Fuego │
│ Charizard  │ Fuego │
└────────────┴───────┘
```º
Encuentra los nombres y tipos de los Pokémon cuyo nivel es mayor que el promedio de todos los Pokémon en la base de datos.
```sql
select pokemon.nombre as nombre, tipo.nombre as tipo, pokemon.nivel as nivel from pokemon, tipo where pokemon.nivel>(select avg(nivel) from pokemon) and tipo.id=pokemon.id_tipo;
┌────────────┬────────────────┬───────┐
│   nombre   │      tipo      │ nivel │
├────────────┼────────────────┼───────┤
│ Squirtle   │ Agua           │ 77    │
│ Vaporeon   │ Agua           │ 77    │
│ Gyarados   │ Agua           │ 77    │
│ Charizard  │ Fuego          │ 50    │
│ Blastoise  │ Agua           │ 77    │
│ Electabuzz │ Electrico/Azul │ 48    │
│ Rhydon     │ Tierra         │ 52    │
│ Dragonite  │ Fuego          │ 60    │
│ Flareon    │ Fuego          │ 65    │
│ Zapdos     │ Electrico/Azul │ 75    │
│ Rhydon     │ Tierra         │ 80    │
└────────────┴────────────────┴───────┘
```