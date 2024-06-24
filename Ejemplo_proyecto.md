### 1. Introducción

En un mundo cada vez más digitalizado, las bibliotecas enfrentan el desafío de adaptarse a las necesidades modernas de acceso a la información. Este proyecto propone la creación de una biblioteca digital, que permitirá a usuarios acceder a libros y otros recursos literarios de manera eficiente y remota. Al implementar una base de datos robusta, este sistema mejorará la gestión de inventario y el proceso de préstamos, ofreciendo una solución efectiva a las limitaciones de las bibliotecas tradicionales.

### 2. Objetivo general

Desarrollar una base de datos integral para una biblioteca digital que mejore significativamente el acceso a recursos literarios y académicos, optimizando los procesos de búsqueda, préstamo y gestión de inventario de libros.

### 3. Objetivos específicos

- **Diseñar una estructura de base de datos** que soporte catálogos detallados de libros por título, autor, género y año de publicación, facilitando operaciones de búsqueda avanzada, filtrado y ordenamiento.
- **Automatizar los procesos de préstamo y devolución** para garantizar un manejo eficiente del inventario de libros, reduciendo los errores manuales y mejorando la experiencia del usuario.
- **Implementar funcionalidades de usuario** para permitir registros sencillos y seguimiento de préstamos, haciendo el sistema accesible y fácil de usar para todos los usuarios.

### 4. Planteamiento del problema

Las bibliotecas tradicionales a menudo luchan con problemas de espacio, accesibilidad y eficiencia en la gestión de préstamos y devoluciones. Estos desafíos se traducen en una experiencia de usuario limitada y un aumento en los costos operativos y de mantenimiento. Sin una solución digital, muchas bibliotecas no pueden satisfacer las expectativas contemporáneas de acceso instantáneo y remoto a la información.

### 5. Posible solución

La solución propuesta se centra en el desarrollo y uso de una base de datos MySQL diseñada específicamente para gestionar una biblioteca digital. Esta base de datos facilitará consultas complejas y análisis de datos sin involucrar operaciones de actualización o modificación de datos, la solución incluirá:

- **Interfaz de búsqueda avanzada**: Implementación de consultas de selección en MySQL que permitan búsquedas por múltiples campos como título, autor y género, utilizando operaciones de filtrado básico y ordenamientos para mejorar la eficiencia de la búsqueda.
- **Consultas de reporte**: Desarrollo de consultas que utilicen funciones de agregación para generar reportes sobre los libros más prestados, categorías más populares y otros indicadores de interés para la gestión de la biblioteca.
- **Consultas de verificación de disponibilidad**: Creación de consultas que permitan verificar rápidamente la disponibilidad de libros para facilitar el proceso de consulta sin necesidad de modificar datos existentes.

### Consideraciones futuras

Dado que el curso es una introducción a bases de datos con MySQL, la implementación inicial se limitará a consultas de lectura. En etapas futuras, se podrían introducir funcionalidades que involucren la actualización y modificación de datos, así como la integración de la base de datos con interfaces de usuario más avanzadas y eventualmente, el desarrollo de una aplicación móvil para un acceso más extendido.

#### Esquema de la base de datos

1. **Tabla `Libros`**

   - `id_libro` (INT, PRIMARY KEY, AUTO_INCREMENT): Identificador único de cada libro.
   - `titulo` (VARCHAR): Título del libro.
   - `autor` (VARCHAR): Autor del libro.
   - `genero` (VARCHAR): Género literario del libro.
   - `año_publicacion` (YEAR): Año de publicación del libro.
   - `disponible` (BOOLEAN): Estado de disponibilidad para préstamo.

2. **Tabla `Usuarios`**

   - `id_usuario` (INT, PRIMARY KEY, AUTO_INCREMENT): Identificador único de cada usuario.
   - `nombre` (VARCHAR): Nombre del usuario.
   - `email` (VARCHAR): Correo electrónico del usuario.

3. **Tabla `Prestamos`**
   - `id_prestamo` (INT, PRIMARY KEY, AUTO_INCREMENT): Identificador único del préstamo.
   - `id_libro` (INT, FOREIGN KEY REFERENCES Libros(id_libro)): Libro prestado.
   - `id_usuario` (INT, FOREIGN KEY REFERENCES Usuarios(id_usuario)): Usuario que realiza el préstamo.
   - `fecha_prestamo` (DATE): Fecha en que se realiza el préstamo.
   - `fecha_devolucion` (DATE): Fecha prevista para la devolución.

### Conclusiones

La implementación de una base de datos MySQL para una biblioteca digital representa un paso significativo hacia la modernización y eficiencia en la gestión de recursos literarios. Al facilitar el acceso a la información y mejorar la experiencia del usuario, este sistema sienta las bases para futuras innovaciones en el campo de las bibliotecas y la educación en línea. Con un enfoque en la escalabilidad y la usabilidad, esta solución tiene el potencial de transformar la forma en que interactuamos con el conocimiento y la lectura en la era digital.


### Entregables

- **Script de la base de datos**: Se adjuntará un script SQL con la estructura de la base de datos y ejemplos de consultas.

- **Documentación del proyecto**: Se entregará un documento en formato Markdown que incluya la descripción del proyecto, los objetivos, la solución propuesta y el esquema de la base de datos.

- **Presentación en PowerPoint**: Se preparará una presentación en PowerPoint que resuma los aspectos más relevantes del proyecto y su importancia en el contexto actual de las bibliotecas digitales.

<!-- dumps de libros, prestamos, usuarios -->
- **Dumps de la base de datos**: Se adjuntarán archivos de volcado de la base de datos con datos de ejemplo para libros, usuarios y préstamos.

<!-- Diagrama Entidad Relacion -->
- **Diagrama Entidad-Relación (ER)**: Se incluirá un diagrama ER que muestre las relaciones entre las tablas de la base de datos y sus atributos.