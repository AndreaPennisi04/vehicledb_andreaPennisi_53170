USE vehicledb; 

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

-- -------------------------------------
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
delimiter // 

call SP_general_information(10, 552, 4961);



/*
-- Forth Procedures:
-- 
DELIMITER $$
DROP PROCEDURE IF EXISTS sp_calcular_max_min_media$$
CREATE PROCEDURE sp_calcular_max_min_media(
  IN capacity int(10),
    OUT maximo int(255),
  OUT minimo varchar(50),
    OUT media int(100)
)
BEGIN
  SET maximo = (
    SELECT MAX(id_engine)
    FROM engine
        WHERE transmission = capacity);
  
  SET minimo = (
    SELECT MIN(id_engine)
    FROM engine
        WHERE transmission  = capacity);
  
  SET media = (
    SELECT AVG(id_engine)
    FROM engine
        WHERE transmission  = capacity);
END
$$

DELIMITER ;
-- NOTA para la tutora: este no me trae ningun valor. Lo que quier es ordenar de menos a mayo o vice versa la columna capacidad
CALL calcular_max_min_media(6498,@maximo, @minimo, @media);
SELECT @maximo, @minimo, @media;

-- Consulta
select capacity
from engine;

-- DROP PROCEDURE sp_calcular_max_min_media;

*/

-- --------------------------------------------------

/*
-- Origial syntaxis 

select * 
from brand
left join model on brand.id_brand = model.id_brand 
left join variant on model.id_model = variant.id_model
left join engine_variant on engine_variant.id_variant = variant.id_variant
left join engine on engine.id_engine = engine_variant.id_engine
left join fuel on fuel.id_fuel = engine.id_fuel
left join variant_feature on variant_feature.id_variant = variant.id_variant
-- left join feature on feature.id_feature = variant_feature.id_feature
ORDER BY brand.description;

*/ 
-- ---------------------------------------------------
