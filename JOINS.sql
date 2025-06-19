-- Active: 1750363406677@@127.0.0.1@3307@mi_base_de_datos
-- Tipos de JOINS

-- INNER JOIN : Solo muestra lo que existe en ambas tablas

-- LEFT JOIN : Muestra todo de la tabla izquierda y lo que coincide de la derecha

-- RIGHT JOIN : Lo mismo pero al reves

-- FULL JOIN : Todo de ambas tablas

-- INNER JOIN

SELECT camper.id, camper.nombre, camper.fecha_nac
FROM camper 
INNER JOIN copia_usuarios ON camper.id = copia_usuarios.id;

-- LEFT JOIN

SELECT camper.id, camper.nombre, copia_usuarios.id
FROM camper 
LEFT JOIN copia_usuarios ON camper.id = copia_usuarios.id;

-- RIGHT JOIN

SELECT copia_usuarios.id, copia_usuarios.nombre, camper.fecha_nac
FROM camper
RIGHT JOIN copia_usuarios ON ccamper.id = copia_usuarios.id;

-- FULL OUTER JOIN 

SELECT camper.id, camper.nombre AS camper_nombre, copia_usuarios.nombre AS copia_nombre
FROM camper 
LEFT JOIN copia_usuarios ON camper.id = copia_usuarios.id

UNION

SELECT camper.id, camper.nombre AS camper_nombre, copia_usuarios.nombre AS copia_nombre
FROM camper 
RIGHT JOIN copia_usuarios ON camper.id = copia_usuarios.id;
