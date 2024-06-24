### Introducción a SQL:
#### 1.1. Estructura de una base de datos
```sql
-- Mostrar la estructura de la tabla Libros
DESCRIBE Libros;

-- Mostrar la estructura de la tabla Usuarios
DESCRIBE Usuarios;

-- Mostrar la estructura de la tabla Prestamos
DESCRIBE Prestamos;
```

#### 1.2. Selección de campos
```sql
-- Seleccionar todos los campos de la tabla Libros
SELECT * 
FROM Libros;

-- Seleccionar solo el título y autor de la tabla Libros
SELECT titulo, autor 
FROM Libros;

-- Seleccionar nombre y email de la tabla Usuarios
SELECT nombre, email 
FROM Usuarios;
```

#### 1.3. Filtrado básico
```sql
-- Seleccionar libros del género 'Novela'
SELECT * 
FROM Libros 
WHERE genero = 'Novela';

-- Seleccionar usuarios cuyo nombre sea 'Juan Pérez'
SELECT * 
FROM Usuarios 
WHERE nombre = 'Juan Pérez';

-- Seleccionar préstamos hechos en enero de 2023
SELECT * 
FROM Prestamos 
WHERE fecha_prestamo 
BETWEEN '2023-01-01' AND '2023-01-31';
```

#### 1.4. Ordenamientos
```sql
-- Ordenar libros por año de publicación en orden ascendente
SELECT * 
FROM Libros 
ORDER BY año_publicacion ASC;

-- Ordenar usuarios por nombre en orden descendente
SELECT * 
FROM Usuarios 
ORDER BY nombre DESC;

-- Ordenar préstamos por fecha de préstamo en orden ascendente
SELECT * 
FROM Prestamos 
ORDER BY fecha_prestamo ASC;
```

### Agrupamientos:
#### 2.1. Funciones de agregación
```sql
-- Contar el número total de libros
SELECT COUNT(*) AS total_libros 
FROM Libros;

-- Calcular el promedio de años de publicación de los libros
SELECT AVG(año_publicacion) AS promedio_año_publicacion 
FROM Libros;

-- Contar el número total de usuarios
SELECT COUNT(*) AS total_usuarios 
FROM Usuarios;
```

#### 2.2. Agrupamientos
```sql
-- Contar el número de libros por género
SELECT genero, COUNT(*) AS total_libros 
FROM Libros 
GROUP BY genero;

-- Contar el número de préstamos por usuario
SELECT id_usuario, COUNT(*) AS total_prestamos 
FROM Prestamos 
GROUP BY id_usuario;

-- Contar el número de libros por año de publicación
SELECT año_publicacion, COUNT(*) AS total_libros 
FROM Libros 
GROUP BY año_publicacion;
```

#### 2.3. La cláusula having
```sql
-- Contar el número de libros por género, mostrando solo aquellos géneros con más de 5 libros
SELECT genero, COUNT(*) AS total_libros 
FROM Libros 
GROUP BY genero 
HAVING COUNT(*) > 5;

-- Contar el número de préstamos por usuario, mostrando solo aquellos usuarios con más de 3 préstamos
SELECT id_usuario, COUNT(*) AS total_prestamos 
FROM Prestamos 
GROUP BY id_usuario 
HAVING COUNT(*) > 3;
```

### Subconsultas:
#### 3.1. Subconsultas select
```sql
-- Seleccionar títulos de libros junto con el total de préstamos de cada libro utilizando una subconsulta en el SELECT
SELECT titulo,
       (SELECT COUNT(*) 
        FROM Prestamos 
        WHERE Prestamos.id_libro = Libros.id_libro) AS total_prestamos
FROM Libros;
```

```sql
-- Seleccionar los nombres de los usuarios junto con el número total de libros que han tomado prestados, utilizando una subconsulta en el SELECT
SELECT nombre,
       (SELECT COUNT(*) 
        FROM Prestamos 
        WHERE Prestamos.id_usuario = Usuarios.id_usuario) AS total_prestamos
FROM Usuarios;
```

#### 3.2. Subconsultas from
```sql
-- Seleccionar el total de libros por género, usando una subconsulta en FROM
SELECT genero, total_libros 
FROM (SELECT genero, COUNT(*) AS total_libros 
      FROM Libros 
      GROUP BY genero) AS subconsulta;

-- Seleccionar el total de préstamos por usuario, usando una subconsulta en FROM
SELECT id_usuario, total_prestamos 
FROM (SELECT id_usuario, COUNT(*) AS total_prestamos 
      FROM Prestamos 
      GROUP BY id_usuario) AS subconsulta;
```

#### 3.3. Subconsultas where
```sql
-- Seleccionar los libros publicados después del año promedio de publicación
SELECT * 
FROM Libros 
WHERE año_publicacion > (SELECT AVG(año_publicacion) 
                         FROM Libros);

-- Seleccionar los usuarios que han realizado más préstamos que el promedio
SELECT * 
FROM Usuarios 
WHERE id_usuario IN (SELECT id_usuario 
                     FROM Prestamos 
                     GROUP BY id_usuario 
                     HAVING COUNT(*) > (SELECT AVG(total_prestamos) 
                                        FROM (SELECT COUNT(*) AS total_prestamos 
                                              FROM Prestamos 
                                              GROUP BY id_usuario) AS subconsulta));
```

### Cruces:
#### 4.1. Inner Join
```sql
-- Seleccionar todos los préstamos con detalles de libros y usuarios
SELECT Prestamos.id_prestamo, Libros.titulo, Usuarios.nombre, Prestamos.fecha_prestamo, Prestamos.fecha_devolucion
FROM Prestamos
INNER JOIN Libros 
    ON Prestamos.id_libro = Libros.id_libro
INNER JOIN Usuarios 
    ON Prestamos.id_usuario = Usuarios.id_usuario;
```

#### 4.2. Left y right join
```sql
-- Seleccionar todos los usuarios y sus préstamos, si existen (Left Join)
SELECT Usuarios.nombre, Prestamos.id_prestamo, Prestamos.fecha_prestamo, Prestamos.fecha_devolucion
FROM Usuarios
LEFT JOIN Prestamos 
    ON Usuarios.id_usuario = Prestamos.id_usuario;

-- Seleccionar todos los préstamos y sus usuarios, si existen (Right Join)
SELECT Prestamos.id_prestamo, Usuarios.nombre, Prestamos.fecha_prestamo, Prestamos.fecha_devolucion
FROM Prestamos
RIGHT JOIN Usuarios 
    ON Prestamos.id_usuario = Usuarios.id_usuario;
```