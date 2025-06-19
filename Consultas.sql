-- Active: 1750363406677@@127.0.0.1@3307@mi_base_de_datos
## Consultas
## 1. Consultar todos los datos de una tabla

SELECT * FROM camper;


## 2. Consultar datos con columnas especificas

SELECT nombre, fecha_nac FROM camper;


## 3. Filtrar (WHERE)

SELECT * FROM camper WHERE nombre = 'Nicolas Muskus Tarazona';


SELECT * FROM camper WHERE fecha_nac > '2007-01-01';


## 4. Ordenar resultados

SELECT * FROM camper ORDER BY fecha_nac ASC;
## ASC  (menor a mayor)
## DESC (mayor a menor)

## 5. Limitar resultados

SELECT * FROM camper LIMIT 2;

## 6. Relaciones

CREATE TABLE copia_usuarios (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    fecha_nac DATE,
    FOREIGN KEY (id) REFERENCES camper(id)
);

## 7. Insertar datos con condicion

INSERT INTO copia_usuarios (id, nombre, fecha_nac)
SELECT id, nombre, fecha_nac
FROM camper
WHERE fecha_nac = '2006-08-22';
