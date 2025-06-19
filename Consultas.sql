## Consultas
## 1. Consultar todos los datos de una tabla

SELECT * FROM campersinos;


## 2. Consultar datos con columnas especificas

SELECT nombre, fecha_nac FROM campersinos;


## 3. Filtrar (WHERE)

SELECT * FROM campersinos WHERE nombre = 'Nicolas Muskus Tarazona';


SELECT * FROM campersinos WHERE fecha_nac > '2007-01-01';


## 4. Ordenar resultados

SELECT * FROM campersinos ORDER BY fecha_nac ASC;
## ASC  (menor a mayor)
## DESC (mayor a menor)

## 5. Limitar resultados

SELECT * FROM campersinos LIMIT 3;
