
-- Creación de la base de datos biblioteca_digital.
CREATE SCHEMA `biblioteca_digital` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci ;


-- Creación de la tabla Libros
CREATE TABLE Libros (
    id_libro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255),
    autor VARCHAR(255),
    genero VARCHAR(100),
    año_publicacion YEAR,
    disponible BOOLEAN
);

-- Creación de la tabla Usuarios
CREATE TABLE Usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    email VARCHAR(255)
);

-- Creación de la tabla Prestamos
CREATE TABLE Prestamos (
    id_prestamo INT AUTO_INCREMENT PRIMARY KEY,
    id_libro INT,
    id_usuario INT,
    fecha_prestamo DATE,
    fecha_devolucion DATE,
    FOREIGN KEY (id_libro) REFERENCES Libros(id_libro),
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);


-- Inserción de datos en la tabla Usuarios
INSERT INTO Usuarios (nombre, email) VALUES
('Juan Pérez', 'juan.perez@email.com'),
('María López', 'maria.lopez@email.com'),
('Carlos Hernández', 'carlos.hernandez@email.com'),
('Ana Martínez', 'ana.martinez@email.com'),
('Luisa Fernández', 'luisa.fernandez@email.com'),
('Sergio Gómez', 'sergio.gomez@email.com'),
('Carmen Díaz', 'carmen.diaz@email.com'),
('Francisco Morales', 'francisco.morales@email.com'),
('Sofía Castillo', 'sofia.castillo@email.com'),
('Diego Álvarez', 'diego.alvarez@email.com'),
('Lucía Sánchez', 'lucia.sanchez@email.com'),
('Fernando Ramírez', 'fernando.ramirez@email.com'),
('Isabel Torres', 'isabel.torres@email.com'),
('Antonio Ruiz', 'antonio.ruiz@email.com'),
('Elena Gil', 'elena.gil@email.com'),
('Ricardo Romero', 'ricardo.romero@email.com'),
('Patricia Cruz', 'patricia.cruz@email.com'),
('Jorge Navarro', 'jorge.navarro@email.com'),
('Beatriz Jiménez', 'beatriz.jimenez@email.com'),
('Miguel Ángel Rey', 'miguelangel.rey@email.com');


-- Inserción de datos en la tabla Libros
INSERT INTO Libros (titulo, autor, genero, año_publicacion, disponible) VALUES
('El Camino del Sol', 'José Martín', 'Novela', 2010, TRUE),
('Amanecer Rojo', 'Laura Esquivel', 'Ciencia Ficción', 2015, TRUE),
('La Montaña Mágica', 'Carlos Ruiz', 'Aventura', 2005, TRUE),
('Historias de Medianoche', 'Ana García', 'Terror', 2008, TRUE),
('El Lago de los Sueños', 'Sergio Ramírez', 'Romance', 2012, TRUE),
('Vientos de Cambio', 'Luisa Mendoza', 'Historia', 2009, TRUE),
('Raíces Profundas', 'Carmen Torres', 'Biografía', 2011, TRUE),
('Mundos Paralelos', 'Francisco Gómez', 'Ciencia Ficción', 2013, TRUE),
('Olas Salvajes', 'Sofía Alvarez', 'Aventura', 2014, TRUE),
('Cumbres Borrascosas', 'Diego Hernández', 'Novela', 2000, TRUE),
('El Secreto de la Caverna', 'Lucía Sánchez', 'Misterio', 2016, TRUE),
('Días de Verano', 'Fernando Martín', 'Romance', 2017, TRUE),
('Noches Blancas', 'Isabel Peralta', 'Novela', 2006, TRUE),
('La Tormenta', 'Antonio Morales', 'Aventura', 2018, TRUE),
('El Desierto Rojo', 'Elena Soto', 'Historia', 2004, TRUE),
('Pasajes Oscuros', 'Ricardo López', 'Terror', 2003, TRUE),
('El Puente de los Sueños', 'Patricia Cruz', 'Romance', 2007, TRUE),
('La Ciudad Antigua', 'Jorge Castillo', 'Historia', 2002, TRUE),
('El Bosque de la Luna', 'Beatriz Ramírez', 'Fantasía', 2001, TRUE),
('Estrellas Distantes', 'Miguel Ángel Gómez', 'Ciencia Ficción', 2019, TRUE),
('Viaje al Centro del Corazón', 'Juan Pérez', 'Romance', 2020, TRUE),
('La Isla Misteriosa', 'María López', 'Aventura', 2021, TRUE),
('Los Guardianes del Tiempo', 'Carlos Hernández', 'Ciencia Ficción', 2022, TRUE),
('Sombras en el Espejo', 'Ana Martínez', 'Misterio', 2023, TRUE),
('Luces del Norte', 'Luisa Fernández', 'Fantasía', 2024, TRUE),
('El Regreso', 'Sergio Gómez', 'Novela', 1999, TRUE),
('La Última Puerta', 'Carmen Díaz', 'Terror', 1998, TRUE),
('Líneas Paralelas', 'Francisco Morales', 'Ciencia Ficción', 1997, TRUE),
('El Vuelo del Águila', 'Sofía Castillo', 'Historia', 1996, TRUE),
('Corrientes Ocultas', 'Diego Álvarez', 'Misterio', 1995, TRUE),
('Secretos del Pasado', 'Lucía Sánchez', 'Historia', 1994, TRUE),
('El Jardín Olvidado', 'Fernando Ramírez', 'Romance', 1993, TRUE),
('Ecos de la Ciudad', 'Isabel Torres', 'Novela', 1992, TRUE),
('El Castillo en el Cielo', 'Antonio Ruiz', 'Fantasía', 1991, TRUE),
('Laberintos de Poder', 'Elena Gil', 'Política', 1990, TRUE),
('Voces en la Niebla', 'Ricardo Romero', 'Terror', 1989, TRUE),
('El Arte de la Guerra', 'Patricia Cruz', 'Historia', 1988, TRUE),
('La Noche de los Cristales', 'Jorge Navarro', 'Historia', 1987, TRUE),
('El Sueño de la Razón', 'Beatriz Jiménez', 'Biografía', 1986, TRUE),
('Los Hijos del Tiempo', 'Miguel Ángel Rey', 'Ciencia Ficción', 1985, TRUE),
('El Arte de Vivir', 'Carlos Ruiz', 'Autoayuda', 2010, TRUE),
('El Jardín Secreto', 'Frances Hodgson', 'Infantil', 1911, TRUE),
('La Sombra del Viento', 'Carlos Ruiz Zafón', 'Novela', 2001, TRUE),
('Crónica de una Muerte Anunciada', 'Gabriel García Márquez', 'Novela', 1981, TRUE),
('Cien Años de Soledad', 'Gabriel García Márquez', 'Novela', 1967, TRUE),
('La Casa de los Espíritus', 'Isabel Allende', 'Novela', 1982, TRUE),
('Como Agua para Chocolate', 'Laura Esquivel', 'Novela', 1989, TRUE),
('Rayuela', 'Julio Cortázar', 'Novela', 1963, TRUE),
('Don Quijote de la Mancha', 'Miguel de Cervantes', 'Novela', 1905, TRUE),
('El Amor en los Tiempos del Cólera', 'Gabriel García Márquez', 'Novela', 1985, TRUE);


-- Inserción de datos en la tabla Prestamos
INSERT INTO Prestamos (id_libro, id_usuario, fecha_prestamo, fecha_devolucion) VALUES
(1, 1, '2023-01-01', '2023-01-15'),
(2, 2, '2023-01-02', '2023-01-16'),
(3, 3, '2023-01-03', '2023-01-17'),
(4, 4, '2023-01-04', '2023-01-18'),
(5, 5, '2023-01-05', '2023-01-19'),
(6, 6, '2023-01-06', '2023-01-20'),
(7, 7, '2023-01-07', '2023-01-21'),
(8, 8, '2023-01-08', '2023-01-22'),
(9, 9, '2023-01-09', '2023-01-23'),
(10, 10, '2023-01-10', '2023-01-24'),
(11, 11, '2023-01-11', '2023-01-25'),
(12, 12, '2023-01-12', '2023-01-26'),
(13, 13, '2023-01-13', '2023-01-27'),
(14, 14, '2023-01-14', '2023-01-28'),
(15, 15, '2023-01-15', '2023-01-29'),
(16, 16, '2023-01-16', '2023-01-30'),
(17, 17, '2023-01-17', '2023-01-31'),
(18, 18, '2023-01-18', '2023-02-01'),
(19, 19, '2023-01-19', '2023-02-02'),
(20, 20, '2023-01-20', '2023-02-03'),
(21, 1, '2023-02-01', '2023-02-15'),
(22, 2, '2023-02-02', '2023-02-16'),
(23, 3, '2023-02-03', '2023-02-17'),
(24, 4, '2023-02-04', '2023-02-18'),
(25, 5, '2023-02-05', '2023-02-19'),
(26, 6, '2023-02-06', '2023-02-20'),
(27, 7, '2023-02-07', '2023-02-21'),
(28, 8, '2023-02-08', '2023-02-22'),
(29, 9, '2023-02-09', '2023-02-23'),
(30, 10, '2023-02-10', '2023-02-24'),
(31, 11, '2023-02-11', '2023-02-25'),
(32, 12, '2023-02-12', '2023-02-26'),
(33, 13, '2023-02-13', '2023-02-27'),
(34, 14, '2023-02-14', '2023-02-28'),
(35, 15, '2023-02-15', '2023-03-01'),
(36, 16, '2023-02-16', '2023-03-02'),
(37, 17, '2023-02-17', '2023-03-03'),
(38, 18, '2023-02-18', '2023-03-04'),
(39, 19, '2023-02-19', '2023-03-05'),
(40, 20, '2023-02-20', '2023-03-06'),
(41, 1, '2023-03-01', '2023-03-15'),
(42, 2, '2023-03-02', '2023-03-16'),
(43, 3, '2023-03-03', '2023-03-17'),
(44, 4, '2023-03-04', '2023-03-18'),
(45, 5, '2023-03-05', '2023-03-19'),
(46, 6, '2023-03-06', '2023-03-20'),
(47, 7, '2023-03-07', '2023-03-21'),
(48, 8, '2023-03-08', '2023-03-22'),
(49, 9, '2023-03-09', '2023-03-23'),
(50, 10, '2023-03-10', '2023-03-24');