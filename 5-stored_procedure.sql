USE vehicledbs; 

-- First Procedures: Lenght of MODEL. 
-- Enviando los parametros correspondientes podre saber cuantos modelos obtengo por cada parametro enviado. 
-- Tabla que la compone: Model description 
DROP PROCEDURE IF EXISTS SP_model;
DELIMITER $$

CREATE PROCEDURE SP_model(in p_letter char(3), out p_number int)
BEGIN
SELECT count(*) 
INTO p_number
FROM model
WHERE description like concat('%',p_letter,'%');
END$$

DELIMITER ;

-- Call procedure
CALL SP_model('ave',@quantity_ave);	
CALL SP_model('DB',@quantity_DB);	
CALL SP_model('GT',@quantity_GT);	
CALL SP_model('ur',@quantity_ur);	
select @quantity_ave as model_name_with_ave,@quantity_DB,@quantity_GT,@quantity_ur;

select * from model;


-- Second Procedures: En este ejemplo es saber a travez de "trasnmission" que modelos pertenecen al parametro pasado.
-- Tablas que la componen: Model y Engine 
DROP PROCEDURE IF EXISTS  SP_GetModelByTransmission;
DELIMITER $$

CREATE PROCEDURE SP_GetModelByTransmission (IN p_transmission VARCHAR(50))
BEGIN
    SELECT m.description AS model_description
    FROM engine e
    INNER JOIN model m ON e.id_engine = m.id_model
    WHERE e.transmission = p_transmission;
END$$

DELIMITER ;

CALL SP_GetModelByTransmission('automatic');


-- Consulta Original 
SELECT m.description AS model_description
    FROM engine e
    INNER JOIN model m ON e.id_model = m.id_model
    WHERE e.transmission = p_transmission;

-- Tercer prueba: usada como test. 
-- Esto fue una simple prueba para ver como funcionaban los SP en la tabla Engine
DROP PROCEDURE IF EXISTS SP_general_information;
DELIMITER // 
CREATE PROCEDURE SP_general_information (in c char(10), in p int, ca int)
BEGIN
select c as cylinder, p as power, ca as capacity;
end//
delimiter ;

call SP_general_information(10, 552, 4961);

-- Cuarto Procedures
-- Insertar mas marcas en la tabla Brand 
DROP PROCEDURE IF EXISTS sp_add_new_brand;
DELIMITER // 

CREATE PROCEDURE sp_add_new_brand (IN p_e VARCHAR(50), OUT p_return VARCHAR(100))
BEGIN
    IF p_e = '' THEN 
        SET p_return = 'Error, empty param';
    ELSE
        INSERT INTO brand VALUES (NULL, p_e); 
        SET p_return = 'OK';
    END IF;
END// 

DELIMITER ;

CALL sp_add_new_brand('Rolls-Royce', @p_return);
SELECT @p_return;

