USE vehicledbs; 
/*
Function fue creada para traer un valor. 
1. FN_count_fuel_models: pasando los parametros correspondientes puedo saber cuantos vehiculos hay en total con un fuel pasado por parametro
2. FN_variant_description: enviando el numero de id de la variante y el modelo puedo saber que variante de modelo esta listado. 
3. FN_by_model_name: por el nombre del modelo, puedo consultar cuantos tengo listado segun el parametro que le pase. 
*/
-- First Function 
DROP FUNCTION IF EXISTS FN_count_fuel_models;
DELIMITER //

CREATE FUNCTION FN_count_fuel_models(p1 VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    
    SELECT COUNT(m.id_model) 
    INTO total
    FROM model m
    JOIN variant v ON m.id_model = v.id_model
    JOIN engine_variant ev ON v.id_variant = ev.id_variant
    JOIN engine e ON ev.id_engine = e.id_engine
    JOIN fuel f ON e.id_fuel = f.id_fuel
    WHERE f.description = p1;
    
    RETURN total;
END //

DELIMITER ;

-- Invocacion de la funcion 
select FN_count_fuel_models('petrol') as v_total;

-- Original request 
SELECT COUNT(m.id_model) as total_fuel_model
FROM model m
JOIN variant as v ON m.id_model = v.id_model
JOIN engine_variant as ev ON v.id_variant = ev.id_variant
JOIN engine as e ON ev.id_engine = e.id_engine
JOIN fuel as f ON e.id_fuel = f.id_fuel
WHERE f.description = 'Petrol';

-- -- Segunda funcion  
DROP FUNCTION IF EXISTS FN_variant_description;
delimiter // 
create function FN_variant_description (p_id_variant int, p_id_model int)

returns varchar(50) 
deterministic
begin  
declare v_result varchar(50);
-- ---
select description 
into v_result
from variant
where id_variant < p_id_variant
and id_model = p_id_model;  

return v_result;
end //

-- Invocacion de la funcion 
select FN_variant_description(4, 2) as v_result;

-- Original request
select description  -- AS v_result
-- , FN_description(7,9) as v_result_funcion
from variant
WHERE id_variant < 4 
AND id_model = 2

-- Tercera consulta: count model name
DROP FUNCTION IF EXISTS FN_by_model_name;
delimiter // 
create function FN_by_model_name (p__model_name varchar(45))

returns varchar(45) 
deterministic
begin  
declare v_model_name varchar(45);
-- ---
Select count(*)
into v_model_name
from model
where description like p__model_name;

return v_model_name;
end //

select FN_by_model_name('%DB_%');

-- Original syntaxis 
Select count(*) from model
where description like '%DB_%'

-- Cuarta funcion: consulta variant name 
DROP FUNCTION IF EXISTS FN_by_variant_name;
delimiter // 
create function FN_by_variant_name (p_id_variant int)
returns char(45)
deterministic
begin
declare v_variant_name char(45);
select description 
into v_variant_name
from variant
where id_variant = p_id_variant;
return v_variant_name;
end//
delimiter ; 

select FN_by_variant_name(4);

-- Consulta original
select description from variant
where id_variant = 4