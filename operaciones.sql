 -- PARTE 1
-- 1. Crear Base de datos posts
 CREATE DATABASE posts;
 
 -- Crear tabla post, con los atributos id, nombre de usuario, fecha de creación, contenido, descripción 
 CREATE TABLE post( 
     id INT, 
     nombre_de_usuario VARCHAR(25), 
     fecha_de_creacion DATE,
     contenido VARCHAR(25),
     descripcion VARCHAR(25)
);

 -- Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos" 
INSERT INTO post (
    id,
    nombre_de_usuario,
    fecha_de_creacion,
    contenido,
    descripcion
)
VALUES (
    1,
    'Pamela',
    '2020-11-10',
    'contenido 1',
    'descripción 1'
);
INSERT INTO post (
    id,
    nombre_de_usuario,
    fecha_de_creacion,
    contenido,
    descripcion
)
VALUES (
    1,
    'Pamela',
    '2020-11-10',
    'contenido 2',
    'descripción 2'
);

INSERT INTO post (
    id,
    nombre_de_usuario,
    fecha_de_creacion,
    contenido,
    descripcion
)
VALUES (
    2,
    'Carlos',
    '2020-11-10',
    'contenido 1',
    'descripción 1'
);

-- Modificar la tabla post, agregando la columna título
ALTER TABLE post
ADD titulo VARCHAR(25);

-- Agregar título a las publicaciones ya ingresadas 
UPDATE post SET titulo='Titulo1' WHERE id = 1;
UPDATE post SET titulo='Titulo1' WHERE id = 2;

-- Insertar 2 post para el usuario "Pedro" 
INSERT INTO post (
    id,
    nombre_de_usuario,
    fecha_de_creacion,
    contenido,
    descripcion,
    titulo
)
VALUES (
    3,
    'Pedro',
    '2020-11-10',
    'contenido 1',
    'descripción 1',
    'Titulo 1'
);

INSERT INTO post (
    id,
    nombre_de_usuario,
    fecha_de_creacion,
    contenido,
    descripcion, titulo
)
VALUES (
    4,
    'Pedro',
    '2020-11-10',
    'contenido 2',
    'descripción 2',
    'Titulo 1'
);
-- Eliminar el post de Carlos 
DELETE FROM post WHERE nombre_de_usuario='Carlos';

-- Ingresar un nuevo post para el usuario "Carlos"
INSERT INTO post (
    id,
    nombre_de_usuario,
    fecha_de_creacion,
    contenido,
    descripcion,
    titulo

)
VALUES (
    5,
    'Carlos',
    '2020-11-10',
    'contenido 2',
    'descripción 2',
    'Titulo 1'
);

-- PARTE 2
--  Crear una nueva tabla, llamada comentarios, con los atributos id, fecha y hora de creación, 
-- contenido, que se relacione con la tabla posts.
CREATE TABLE comentarios( 
     id INT, 
     hora VARCHAR(255),
     fecha_de_creacion DATE,
     contenido VARCHAR(25)
);

-- Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos"
INSERT INTO comentarios (
    id,
    hora,
    fecha_de_creacion,
    contenido
)
VALUES (
    1,
    '20:00',
    '2020-11-10',
    'comentario 1'
);

INSERT INTO comentarios (
    id,
    hora,
    fecha_de_creacion,
    contenido
)
VALUES (
    1,
    '20:00',
    '2020-11-10',
    'comentario 2'
);

INSERT INTO comentarios (
    id,
    hora,
    fecha_de_creacion,
    contenido
)
VALUES (
    5,
    '20:00',
    '2020-11-10',
    'comentario 1'
);

INSERT INTO comentarios (
    id,
    hora,
    fecha_de_creacion,
    contenido
)
VALUES (
    5,
    '20:00',
    '2020-11-10',
    'comentario 2'
);
INSERT INTO comentarios (
    id,
    hora,
    fecha_de_creacion,
    contenido
)
VALUES (
    5,
    '20:00',
    '2020-11-10',
    'comentario 3'
);

INSERT INTO comentarios (
    id,
    hora,
    fecha_de_creacion,
    contenido
)
VALUES (
    5,
    '20:00',
    '2020-11-10',
    'comentario 4'
);

-- Crear un nuevo post para "Margarita" 
INSERT INTO post (
    id,
    nombre_de_usuario,
    fecha_de_creacion,
    contenido,
    descripcion
)

VALUES (
    6,
    'Margarita',
    '2020-11-10',
    'contenido 1',
    'descripción 1'
);

-- Ingresar 5 comentarios para el post de Margarita.
INSERT INTO comentarios (
    id,
    hora,
    fecha_de_creacion,
    contenido
)
VALUES (
    6,
    '20:00',
    '2020-11-10',
    'comentario 1'
);

INSERT INTO comentarios (
    id,
    hora,
    fecha_de_creacion,
    contenido
)
VALUES (
    6,
    '20:00',
    '2020-11-10',
    'comentario 2'
);

INSERT INTO comentarios (
    id,
    hora,
    fecha_de_creacion,
    contenido
)
VALUES (
    6,
    '20:00',
    '2020-11-10',
    'comentario 3'
);

INSERT INTO comentarios (
    id,
    hora,
    fecha_de_creacion,
    contenido
)
VALUES (
    6,
    '20:00',
    '2020-11-10',
    'comentario 4'
);

INSERT INTO comentarios (
    id,
    hora,
    fecha_de_creacion,
    contenido
)
VALUES (
    6,
    '20:00',
    '2020-11-10',
    'comentario 5'
);
