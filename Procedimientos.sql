-- Active: 1750369939890@@127.0.0.1@3307@mi_base_de_datos

-- Sintaxis
DELIMITER //
CREATE PROCEDURE nombre_procedimiento()
BEGIN
    -- Logica
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE mostrar_campers()
BEGIN
   SELECT * FROM camper;
END //
DELIMITER ;

CALL mostrar_campers(); -- Llama al procedimiento

-- Estructuras de Control

DELIMITER //
CREATE PROCEDURE verificar_edad(IN edad INT)
BEGIN
    IF edad >= 18 THEN
        SELECT 'Mayor de edad';
    ELSE
        SELECT 'Menor de edad';
    END IF;
END //
DELIMITER ;

CALL verificar_edad(10)

-- Agrager Datos

DELIMITER //
CREATE PROCEDURE insertar_camper(
    IN nombre_camper VARCHAR(100),
    IN fecha_nac DATE
)
BEGIN
    INSERT INTO camper(nombre, fecha_nac)
    VALUES(nombre_camper, fecha_nac);
END //
DELIMITER ;

CALL insertar_camper('Julian', '2008-01-10');
