-- Active: 1750363406677@@127.0.0.1@3307@mysql
-- Bases de Datos

CREATE DATABASE mi_base_de_datos; -- Crear base de datos

SHOW DATABASES; -- Mostrar Bases de datos

USE mi_base_de_datos; -- Usar base de datos

DROP DATABASE IF EXISTS mi_base_de_datos;

-- Tablas

SHOW TABLES; -- Ver todas las tablas existentes

CREATE TABLE camper ( -- Crear Tabla
    id         INT           NOT NULL AUTO_INCREMENT,
    nombre     VARCHAR(100)  NOT NULL,
    fecha_nac  DATE          NULL,
    PRIMARY KEY (id)
);

DESCRIBE camper; -- Ver estructura de una tabla


-- Modificar estructura de tablas

ALTER TABLE camper ADD COLUMN phone VARCHAR(15) AFTER nombre; -- Agregar columnas

ALTER TABLE camper MODIFY COLUMN nombre VARCHAR(200) NOT NULL DEFAULT ''; -- Modificar Columnas existentes de una tabla

ALTER TABLE camper DROP COLUMN phone; -- Eliminar Columna de una tabla

RENAME TABLE camper TO campersinos; -- Renombrar tabla

-- Datos

INSERT INTO camper (nombre, fecha_nac) VALUES -- Insertar datos a una tabla 
('Sara Sofia', '2007-03-15'),
('Nicolas Muskus Tarazona', '2006-08-22'),
('Danilo Muskus Tarazona', '2008-01-10');

SELECT * FROM camper; -- Mostrar todos los datos de una tabla
