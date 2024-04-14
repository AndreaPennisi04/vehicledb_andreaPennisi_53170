USE vehicledbs;

-- SIMPLE SINTAXIS 
/*
Estas vistas me permiten ingresar a informacion que frecuentemente consulto y que algunas de ellas pueden ser compartidas con el cliente. 
En este caso y como la base de datos es pequeña, he creado una vista para: brand, engine, data base all columns, model using limit. 
*/

-- Primer View
CREATE OR REPLACE VIEW VW_DRESCRIPTION_ID_MODEL_ID_BRAND AS (
select 
distinct
b.id_brand, m.id_model, v.description
from variant as v join model as m join brand as b
on v.id_variant = m.id_model
and m.id_model = b.id_brand
where v.id_variant in (1,2)
);

select b.id_brand, m.id_model, v.description from VIEW VW_DRESCRIPTION_ID_MODEL_ID_BRAND; 

-- original sintaxis 
select count(*) from model; 
select count(*) from variant; 
select count(*) from fuel; 
select count(*) from engine; 

-- Segunda View
CREATE OR REPLACE VIEW VW_engine AS (
select * from engine 
where transmission like 'A%'
and id_engine = 24
);

-- select * from VW_engine from VW_engine;

-- Tercera View
CREATE OR REPLACE VIEW vw_brands_with_model_count AS

SELECT b.id_brand, b.description AS brand_description, COUNT(m.id_model) AS model_count

FROM brand b

LEFT JOIN model m ON b.id_brand = m.id_brand

GROUP BY b.id_brand;

-- select * from vw_brands_with_model_count

-- Cuarta View
CREATE OR REPLACE VIEW vw_all_schema AS
select * 
from brand
left join model on brand.id_brand = model.id_brand 
left join variant on model.id_model = variant.id_model
left join engine_variant on engine_variant.id_variant = variant.id_variant
left join engine on engine.id_engine = engine_variant.id_engine
left join fuel on fuel.id_fuel = engine.id_fuel
left join variant_feature on variant_feature.id_variant = variant.id_variant
left join feature on feature.id_feature = variant_feature.id_feature
ORDER BY variant.id_variant;

/*
select id_engine, transmission, power, capacity, cylinders
from engine
where brand = 'Aston Martin' from vw_all_schema;
*/

-- Quinta View
CREATE OR REPLACE VIEW vw_model_view AS
SELECT * FROM model
LIMIT 10; 

SELECT * FROM model_view;
