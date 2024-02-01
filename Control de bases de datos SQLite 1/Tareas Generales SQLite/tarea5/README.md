1. Selección de libros cuyo título comienza con "H".

```sql
select * FROM libro where titulo regexp '^H';
```

No delvuelve ningún valor

2. Libros escritos por autores cuyos nombres terminan con "ing".

```sql
select libro.titulo as titulo, autor.nombre as autor FROM autor, libro where autor.id=libro.autor_id and autor.nombre regexp '^[a-zA-Z]ing$';
```

No delvuelve ningún valor

3. Libros con títulos que contienen la palabra "and" en cualquier posición.

```sql
select titulo FROM libro WHERE titulo REGEXP 'and';
┌──────────────────────────────────┐
│              titulo              │
├──────────────────────────────────┤
│ The Old Man and the Sea          │
│ Alice's Adventures in Wonderland │
│ War and Peace                    │
│ Crime and Punishment             │
└──────────────────────────────────┘
```

4. Libros cuyo título comienza con una vocal.

```sql
select titulo FROM libro WHERE titulo REGEXP '^[aeiouAEIOU]';
┌──────────────────────────────────┐
│              titulo              │
├──────────────────────────────────┤
│ One Hundred Years of Solitude    │
│ Alice's Adventures in Wonderland │
│ Anna Karenina                    │
└──────────────────────────────────┘
```

5. Libros cuyo autor tiene al menos una vocal repetida.

```sql
select autor.nombre as autor, libro.titulo as libro FROM autor, libro WHERE autor.nombre REGEXP '[aeiouAEIOU]{2,}' and autor.id=libro.autor_id;
┌───────────────┬─────────────────┐
│     autor     │      libro      │
├───────────────┼─────────────────┤
│ George Orwell │ Brave New World │
└───────────────┴─────────────────┘
```

6. Libros con precios que tienen dos dígitos decimales exactos.

```sql
SELECT titulo, precio FROM libro WHERE precio REGEXP '[0-9]+\.[0-9]{2}';
┌───────────────────────────────────┬────────┐
│              titulo               │ precio │
├───────────────────────────────────┼────────┤
│ The Great Gatsby                  │ 20.99  │
│ To Kill a Mockingbird             │ 15.95  │
│ The Catcher in the Rye            │ 18.75  │
│ Brave New World                   │ 17.99  │
│ The Hobbit                        │ 24.99  │
│ The Chronicles of Narnia          │ 28.99  │
│ The Odyssey                       │ 14.95  │
│ The Iliad                         │ 14.95  │
│ Moby-Dick                         │ 19.99  │
│ The Road                          │ 16.75  │
│ Wuthering Heights                 │ 12.99  │
│ The Old Man and the Sea           │ 18.95  │
│ The Count of Monte Cristo         │ 27.99  │
│ The Adventures of Sherlock Holmes │ 16.99  │
│ Frankenstein                      │ 13.25  │
│ The Prince                        │ 10.99  │
│ Don Quixote                       │ 26.75  │
│ Anna Karenina                     │ 23.99  │
│ Les Misérables                    │ 29.75  │
│ The Jungle Book                   │ 14.99  │
│ War and Peace                     │ 33.25  │
│ Crime and Punishment              │ 19.99  │
└───────────────────────────────────┴────────┘
```

7. Libros cuyos títulos tienen al menos tres palabras.

```sql
select titulo from libro where titulo regexp '^[a-zA-Z]+ [a-zA-Z]+ [a-zA-Z]+';
┌───────────────────────────────────┐
│              titulo               │
├───────────────────────────────────┤
│ The Great Gatsby                  │
│ To Kill a Mockingbird             │
│ The Catcher in the Rye            │
│ One Hundred Years of Solitude     │
│ Brave New World                   │
│ The Lord of the Rings             │
│ The Chronicles of Narnia          │
│ The Grapes of Wrath               │
│ The Old Man and the Sea           │
│ The Count of Monte Cristo         │
│ The Picture of Dorian Gray        │
│ The Adventures of Sherlock Holmes │
│ The Divine Comedy                 │
│ The Jungle Book                   │
│ The Wind in the Willows           │
│ War and Peace                     │
│ Crime and Punishment              │
└───────────────────────────────────┘
```

8. Obtener todos los autores cuyo nombre empieza con la letra "A":

```sql
select nombre from autor where nombre regexp '^A';
┌─────────────────┐
│     nombre      │
├─────────────────┤
│ Agatha Christie │
└─────────────────┘
```

9. Seleccionar los libros cuyo título contiene la palabra "SQL":

```sql
select titulo from libro where titulo regexp 'SQL';
```

No delvuelve ningún valor

10. Obtener todos los autores cuyo nombre termina con "ez":

```sql
select nombre from autor where nombre regexp 'ez$';
```

No delvuelve ningún valor

11. Obtener todos los autores cuyo nombre tiene al menos 5 caracteres:

```sql
select nombre from autor where nombre regexp '[a-zA-Z]{5,}';
┌─────────────────┐
│     nombre      │
├─────────────────┤
│ J.K. Rowling    │
│ Stephen King    │
│ George Orwell   │
│ Jane Austen     │
│ Agatha Christie │
└─────────────────┘
```

12. Seleccionar los libros cuya editorial es diferente de "EditorialX":

```sql
select titulo from libro where editorial regexp not '^EditorialX$';
```

No delvuelve ningún valor

13. Obtener todos los autores cuyo nombre contiene al menos una vocal:

```sql
select nombre FROM autor where nombre regexp '[aeiou]+';
┌─────────────────┐
│     nombre      │
├─────────────────┤
│ J.K. Rowling    │
│ Stephen King    │
│ George Orwell   │
│ Jane Austen     │
│ Agatha Christie │
└─────────────────┘
```

14. Seleccionar los libros cuyo título comienza con una letra mayúscula:

```sql
select titulo FROM libro WHERE titulo regexp '^[A-Z]';
┌───────────────────────────────────┐
│              titulo               │
├───────────────────────────────────┤
│ The Great Gatsby                  │
│ To Kill a Mockingbird             │
│ The Catcher in the Rye            │
│ One Hundred Years of Solitude     │
│ Brave New World                   │
│ The Hobbit                        │
│ The Lord of the Rings             │
│ The Chronicles of Narnia          │
│ The Odyssey                       │
│ The Iliad                         │
│ Moby-Dick                         │
│ The Road                          │
│ The Grapes of Wrath               │
│ Wuthering Heights                 │
│ The Old Man and the Sea           │
│ The Count of Monte Cristo         │
│ The Picture of Dorian Gray        │
│ The Adventures of Sherlock Holmes │
│ Frankenstein                      │
│ Alice's Adventures in Wonderland  │
│ The Prince                        │
│ Don Quixote                       │
│ The Divine Comedy                 │
│ Anna Karenina                     │
│ Les Misérables                    │
│ The Jungle Book                   │
│ The Wind in the Willows           │
│ War and Peace                     │
│ Crime and Punishment              │
└───────────────────────────────────┘
```

15. Obtener todos los autores cuyo nombre no contiene la letra "r":

```sql
select nombre from autor where nombre not regexp '[rR]';
┌──────────────┐
│    nombre    │
├──────────────┤
│ Stephen King │
│ Jane Austen  │
└──────────────┘
```

16. Seleccionar los libros cuya editorial empieza con la letra "P":

```sql
select titulo FROM libro where editorial regexp '^P';
┌───────────────────────────┐
│          titulo           │
├───────────────────────────┤
│ The Count of Monte Cristo │
└───────────────────────────┘
```

17. Obtener todos los autores cuyo nombre tiene exactamente 6 caracteres:

```sql
select nombre FROM autor WHERE nombre regexp '[/D]{6}';
```

No delvuelve ningún valor

18. Seleccionar los libros cuyo título contiene al menos un número:

```sql
select titulo FROM libro where titulo REGEXP '[1-9]+';
```

No delvuelve ningún valor

19. Obtener todos los autores cuyo nombre inicia con una vocal:

```sql
select nombre FROM autor WHERE nombre regexp '^[AEIOU]';
┌─────────────────┐
│     nombre      │
├─────────────────┤
│ Agatha Christie │
└─────────────────┘
```

20. Obtener todos los autores cuyo nombre no contiene espacios en blanco:

```sql
select nombre FROM autor WHERE nombre not regexp '\S';
```

No delvuelve ningún valor

21. Seleccionar los libros cuyo título termina con una vocal:

```sql
select titulo FROM libro  WHERE titulo REGEXP '^[AEIOU]';
┌──────────────────────────────────┐
│              titulo              │
├──────────────────────────────────┤
│ One Hundred Years of Solitude    │
│ Alice's Adventures in Wonderland │
│ Anna Karenina                    │
└──────────────────────────────────┘
```

22. Obtener todos los autores cuyo nombre contiene la secuencia "er":

```sql
select nombre  FROM autor WHERE nombre REGEXP 'er';
```

No delvuelve ningún valor

23. Seleccionar los libros cuyo título empieza con la palabra "The":

```sql
select titulo FROM libro where titulo REGEXP '^The';
┌───────────────────────────────────┐
│              titulo               │
├───────────────────────────────────┤
│ The Great Gatsby                  │
│ The Catcher in the Rye            │
│ The Hobbit                        │
│ The Lord of the Rings             │
│ The Chronicles of Narnia          │
│ The Odyssey                       │
│ The Iliad                         │
│ The Road                          │
│ The Grapes of Wrath               │
│ The Old Man and the Sea           │
│ The Count of Monte Cristo         │
│ The Picture of Dorian Gray        │
│ The Adventures of Sherlock Holmes │
│ The Prince                        │
│ The Divine Comedy                 │
│ The Jungle Book                   │
│ The Wind in the Willows           │
└───────────────────────────────────┘
```

24. Obtener todos los autores cuyo nombre tiene al menos una letra mayúscula:

```sql
select nombre FROM autor WHERE nombre REGEXP '[A-Z]+';
┌─────────────────┐
│     nombre      │
├─────────────────┤
│ J.K. Rowling    │
│ Stephen King    │
│ George Orwell   │
│ Jane Austen     │
│ Agatha Christie │
└─────────────────┘
```

25. Seleccionar los libros cuyo precio es un número decimal con exactamente dos decimales:

```sql
SELECT titulo, precio FROM libro WHERE precio REGEXP '[0-9]+\.[0-9]{2}';
```

No delvuelve ningún valor

26. Obtener todos los autores cuyo nombre no contiene números:

```sql
SELECT nombre FROM autor WHERE nombre not REGEXP '[0-9]';
┌─────────────────┐
│     nombre      │
├─────────────────┤
│ J.K. Rowling    │
│ Stephen King    │
│ George Orwell   │
│ Jane Austen     │
│ Agatha Christie │
└─────────────────┘
```

27. Seleccionar los libros cuyo título contiene al menos tres vocales:

```sql
select titulo FROM libro WHERE titulo REGEXP '[aeiouAEIOU]{3,}';
```

No delvuelve ningún valor

28. Obtener todos los autores cuyo nombre inicia con una consonante:

```sql
select nombre FROM autor WHERE nombre not REGEXP '^[AEIOU]';
┌───────────────┐
│    nombre     │
├───────────────┤
│ J.K. Rowling  │
│ Stephen King  │
│ George Orwell │
│ Jane Austen   │
└───────────────┘
```

29. Seleccionar los libros cuyo título no contiene la palabra "Science":

```sql
select titulo FROM libro WHERE titulo not REGEXP 'Science';
┌───────────────────────────────────┐
│              titulo               │
├───────────────────────────────────┤
│ The Great Gatsby                  │
│ To Kill a Mockingbird             │
│ The Catcher in the Rye            │
│ One Hundred Years of Solitude     │
│ Brave New World                   │
│ The Hobbit                        │
│ The Lord of the Rings             │
│ The Chronicles of Narnia          │
│ The Odyssey                       │
│ The Iliad                         │
│ Moby-Dick                         │
│ The Road                          │
│ The Grapes of Wrath               │
│ Wuthering Heights                 │
│ The Old Man and the Sea           │
│ The Count of Monte Cristo         │
│ The Picture of Dorian Gray        │
│ The Adventures of Sherlock Holmes │
│ Frankenstein                      │
│ Alice's Adventures in Wonderland  │
│ The Prince                        │
│ Don Quixote                       │
│ The Divine Comedy                 │
│ Anna Karenina                     │
│ Les Misérables                    │
│ The Jungle Book                   │
│ The Wind in the Willows           │
│ War and Peace                     │
│ Crime and Punishment              │
└───────────────────────────────────┘
```

30. Obtener todos los autores cuyo nombre tiene al menos una letra repetida consecutivamente:
```sql

```

31. Obtener todos los autores cuyo nombre empieza con "M" o termina con "n":

```sql
select nombre FROM autor WHERE nombre REGEXP '^M|n$';

```

32. Obtener todos los autores cuyo nombre no contiene caracteres especiales:

```sql
select nombre FROM autor WHERE nombre REGEXP '/w';
```

No delvuelve ningún valor