USE vehicledbs;

/* Insert Brand */

INSERT INTO brand (description) VALUES ('AstonMartin'); 
INSERT INTO brand (description) VALUES ('Bentley'); 
INSERT INTO brand (description) VALUES ('Ferrari'); 
INSERT INTO brand (description) VALUES ('Lamborghini');

-- select * from brand;

/* Insert Models */ 

-- Aston Martin

INSERT INTO model (description, id_brand) VALUES ('DBS Coupe', 1); 
INSERT INTO model (description, id_brand) VALUES ('DBS Volante', 1); 
INSERT INTO model (description, id_brand) VALUES ('DB11 coupe', 1); 
INSERT INTO model (description, id_brand) VALUES ('DB11 Volante', 1); 
INSERT INTO model (description, id_brand) VALUES ('Vantage V8 Coupe', 1); 
INSERT INTO model (description, id_brand) VALUES ('Vantage V8 Roadster', 1); 
INSERT INTO model (description, id_brand) VALUES ('Vantage V12 Coupe', 1); 
INSERT INTO model (description, id_brand) VALUES ('Vantage V12 Roadster', 1); 
INSERT INTO model (description, id_brand) VALUES ('DBX', 1); 


-- Bentley
INSERT INTO model (description, id_brand) VALUES ('Bentayga EWB', 2); 
INSERT INTO model (description, id_brand) VALUES ('Continental GT', 2); 
INSERT INTO model (description, id_brand) VALUES ('Continental GTC', 2); 
INSERT INTO model (description, id_brand) VALUES ('Flyng Spur', 2); 

-- Ferrari
INSERT INTO model (description, id_brand) VALUES ('GTB', 3); 
INSERT INTO model (description, id_brand) VALUES ('Spider', 3); 
INSERT INTO model (description, id_brand) VALUES ('F8 Tributo', 3); 
INSERT INTO model (description, id_brand) VALUES ('GTS', 3); 
INSERT INTO model (description, id_brand) VALUES ('Aperta', 3); 
INSERT INTO model (description, id_brand) VALUES ('GTC4', 3); 
INSERT INTO model (description, id_brand) VALUES ('Speciale A', 3); 
INSERT INTO model (description, id_brand) VALUES ('Ferrari California', 3); 
INSERT INTO model (description, id_brand) VALUES ('GTO', 3);



-- Lamborghini
INSERT INTO model (description, id_brand) VALUES ('Urus', 4); 
INSERT INTO model (description, id_brand) VALUES ('Aventator', 4); 
INSERT INTO model (description, id_brand) VALUES ('Huracan', 4); 
INSERT INTO model (description, id_brand) VALUES ('Gallardo', 4); 
INSERT INTO model (description, id_brand) VALUES ('Heritage', 4); 
INSERT INTO model (description, id_brand) VALUES ('Limited Series', 4); 

-- select * from model;

/* Insert variants */

-- Aston Martin
INSERT INTO variant (description, id_model) VALUES ('DBS Coupe', 1);
INSERT INTO variant (description, id_model) VALUES ('DBS Superleggera', 1);
INSERT INTO variant (description, id_model) VALUES ('DBS Superleggera Volante', 2);
INSERT INTO variant (description, id_model) VALUES ('DBS Volante', 2);
INSERT INTO variant (description, id_model) VALUES ('DB11 V12 AMR Coupe', 3);
INSERT INTO variant (description, id_model) VALUES ('DB11 V12 Coupe', 3);
INSERT INTO variant (description, id_model) VALUES ('DB11 V8 Coupe', 3);
INSERT INTO variant (description, id_model) VALUES ('DB11 V8 Volante', 4);
INSERT INTO variant (description, id_model) VALUES ('Vantage 007 Edition Coupe', 5);
INSERT INTO variant (description, id_model) VALUES ('Vantage AMR Coupe', 5);
INSERT INTO variant (description, id_model) VALUES ('Vantage Coupe', 5);
INSERT INTO variant (description, id_model) VALUES ('Vantage F1 Edition Coupe', 5);
INSERT INTO variant (description, id_model) VALUES ('Vantage F1 Edition Roadster', 6);
INSERT INTO variant (description, id_model) VALUES ('Vantage Roadster', 6);
INSERT INTO variant (description, id_model) VALUES ('V12 Vantage Coupe', 7);
INSERT INTO variant (description, id_model) VALUES ('Vantage V12 Roadster', 8);
INSERT INTO variant (description, id_model) VALUES ('DBX SUV', 9);
INSERT INTO variant (description, id_model) VALUES ('DBX 707 SUV', 9);


-- Benltey
INSERT INTO variant (description, id_model) VALUES ('Bentayga EWB Azure V8', 10);
INSERT INTO variant (description, id_model) VALUES ('Bentayga EWB Azure First Edition V8', 10);
INSERT INTO variant (description, id_model) VALUES ('Continental GT Azure V8', 11);
INSERT INTO variant (description, id_model) VALUES ('Continental GT W12', 11);
INSERT INTO variant (description, id_model) VALUES ('Continental GT Mulliner W12', 11);
INSERT INTO variant (description, id_model) VALUES ('Continental GT V8', 11);
INSERT INTO variant (description, id_model) VALUES ('Continental GT S V8', 11);
INSERT INTO variant (description, id_model) VALUES ('Continental GTC Azure V8', 12);
INSERT INTO variant (description, id_model) VALUES ('Continental GTC Speed W12', 12);
INSERT INTO variant (description, id_model) VALUES ('Continental GTC Mulliner V8', 12);
INSERT INTO variant (description, id_model) VALUES ('Flying Spur Azure V6 hybrid', 13);
INSERT INTO variant (description, id_model) VALUES ('Flying Spur Azure V8', 13);
INSERT INTO variant (description, id_model) VALUES ('Flying Spur S V6 Hybrid', 13);
INSERT INTO variant (description, id_model) VALUES ('Flying Spur Speed W12', 13);


-- Ferrari 
INSERT INTO variant (description, id_model) VALUES ('296 GTB', 14);
INSERT INTO variant (description, id_model) VALUES ('488 GTB', 14);
INSERT INTO variant (description, id_model) VALUES ('488 Spider', 15);
INSERT INTO variant (description, id_model) VALUES ('SF900 Spider', 15);
INSERT INTO variant (description, id_model) VALUES ('F8 Tributo', 16);
INSERT INTO variant (description, id_model) VALUES ('812 GTS', 17);
INSERT INTO variant (description, id_model) VALUES ('LaFerrari Aperta', 18);
INSERT INTO variant (description, id_model) VALUES ('SA Aperta', 18);
INSERT INTO variant (description, id_model) VALUES ('GTC4Lusso', 19);
INSERT INTO variant (description, id_model) VALUES ('GTC4Lusso T', 19);
INSERT INTO variant (description, id_model) VALUES ('458 Speciale A', 20);
INSERT INTO variant (description, id_model) VALUES ('Ferrari California', 21);
INSERT INTO variant (description, id_model) VALUES ('Ferrari California T', 21);
INSERT INTO variant (description, id_model) VALUES ('599 GTO', 22);


-- Lamborghini
INSERT INTO variant (description, id_model) VALUES ('Urus S', 23);  
INSERT INTO variant (description, id_model) VALUES ('Urus', 23); 
INSERT INTO variant (description, id_model) VALUES ('Urus Performante', 23); 
INSERT INTO variant (description, id_model) VALUES ('Aventator', 24); 
INSERT INTO variant (description, id_model) VALUES ('Aventator Roadster', 24); 
INSERT INTO variant (description, id_model) VALUES ('Aventator S', 24); 
INSERT INTO variant (description, id_model) VALUES ('Aventator SV', 24); 
INSERT INTO variant (description, id_model) VALUES ('Aventator SV Roadster', 24);
INSERT INTO variant (description, id_model) VALUES ('Aventator SVJ', 24);
INSERT INTO variant (description, id_model) VALUES ('Aventator SVJ Roadster', 24);
INSERT INTO variant (description, id_model) VALUES ('Aventator LP 780-4 Ultimate', 24);
INSERT INTO variant (description, id_model) VALUES ('Huracán', 25);
INSERT INTO variant (description, id_model) VALUES ('Huracán Spyder', 25);
INSERT INTO variant (description, id_model) VALUES ('Huracán RWD', 25);
INSERT INTO variant (description, id_model) VALUES ('Huracán Performante', 25);
INSERT INTO variant (description, id_model) VALUES ('Huracán EVO', 25);
INSERT INTO variant (description, id_model) VALUES ('Huracán EVO STO', 25);
INSERT INTO variant (description, id_model) VALUES ('Huracán Sterrato', 25);
INSERT INTO variant (description, id_model) VALUES ('Gallardo', 26);
INSERT INTO variant (description, id_model) VALUES ('Gallardo Spyder', 26);
INSERT INTO variant (description, id_model) VALUES ('Heritage', 27);
INSERT INTO variant (description, id_model) VALUES ('Centenario Roadster', 28);
INSERT INTO variant (description, id_model) VALUES ('Sián FKP 37', 28);

 select * from variant;

/* Insert Fuel */ 

INSERT INTO fuel (description) VALUES ('Petrol'); 
INSERT INTO fuel (description) VALUES ('Hybrid');
INSERT INTO fuel (description) VALUES ('Diesel');
INSERT INTO fuel (description) VALUES ('Electric');

-- Select * from fuel;


/* Insert Engine */ 

-- Aston Martin
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12', '5935', '715', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12', '5204', '715', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8',  '3982', '502', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12', '5024', '630', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8',  '3982', '503', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8',  '3982', '503', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8',  '3982', '503', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8',  '3982', '503', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8',  '3982', '528', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8',  '3982', '528', 'Automatic', 1);  
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8',  '3982', '503', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12', '5204', '690', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12', '3982', '503', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8',  '3982', '542', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8',  '3982', '697', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12',  '5204', '715', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12',  '5935', '715', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12',  '5204', '630', 'Automatic', 1); 


-- Bentley 

INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '3996', '542', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '3996', '542', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '3996', '542', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('W12', '5950', '626', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('W12', '5950', '626', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '3996', '542', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '5950', '542', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '3996', '542', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('W12', '5950', '650', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '3996', '542', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V6', '2900', '536', 'Automatic', 2); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '3996', '542', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V6', '2995', '536', 'Automatic', 2); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('W12', '5950', '626', 'Automatic', 1); 


-- Ferrari
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V6', '2.9-liter ', '830', 'F1 DCT 8-SPEED', 2); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '3.9-liter', '492', '7-SPEED DUAL CLUTCH F1 GEARBOX', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '3.9-liter', '670', '7-SPEED DUAL CLUTCH F1 GEARBOX', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '4.0-liter', '780', '9-speed dual clutch F1 gearbox', 4); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '3.9-liter', '720', '7-SPEED DUAL CLUTCH F1 GEARBOX', 1);
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12', '6.5-liter', '800', '7-speed dual clutch F1 gearbox', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12', '6.3-liter', '708', 'Automatic (Dual-clutch), 7-speed', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12', '6.0-liter', '670', 'manual', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12', '6.3-liter', '507', '4RM EVO / 4WS / 7-SPEED DUAL CLUTCH F1 GEARBOX / E - DIFF', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '3.9-liter', '449', 'F1 DUAL CLUTCH, 7-SPEED', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '4.5-liter', '605', 'Automatic (Dual-clutch) 7-speed', 1 );
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '4.3-liter', '338', 'F1 DUAL CLUTCH, 7-SPEED' , 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '3.9-liter', '412', 'Dual clutch F1 gearbox with 7 speeds + rev.', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12', '6.0L' , '493', 'F1 gearbox with 6 speeds + Rev', 1); 


-- Lamborghini (First inserts)
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (8, '3996', '650', 'Semi-Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (8, '3996', '666', 'Semi-Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (8, '3996', '666', 'Semi-Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '378', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '740', 'Manual', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '740', 'Manual', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '740', 'Automatic Tiptronic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '750', 'Semi-Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '566', 'Automatic Tiptronic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '770', 'Semi-Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '780', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '5204', '580', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '5204', '610', 'Semi-Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '5204', '610', 'Automatic Tiptronic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '5204', '640', 'DCT', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '5204', '640', 'Automatic', 1); 
INSERT INTO engine (description, cylinders, capacity, power, transmission, id_fuel ) VALUES ('V10, 90°, MPI + Direct Stratified Injection', 10, '5204', '630', 'DCT', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '5204', '610', 'Semi-Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '4961', '552', 'Semi-Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '4961', '552', 'Semi-Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '4961', '552', 'Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '770', 'Semi-Automatic', 1); 
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '770', 'Semi-Automatic', 1); 

-- select * from engine;

/* RENATIONAL TABLES: ENGINE AND VARIANT*/ 

-- Aston Martin
insert into engine_variant (id_engine, id_variant) values (1, 1); 
insert into engine_variant (id_engine, id_variant) values (2, 2); 
insert into engine_variant (id_engine, id_variant) values (16, 3);
insert into engine_variant (id_engine, id_variant) values (17, 4); 
insert into engine_variant (id_engine, id_variant) values (4, 5); 
insert into engine_variant (id_engine, id_variant) values (18, 6); 
insert into engine_variant (id_engine, id_variant) values (3, 7); 
insert into engine_variant (id_engine, id_variant) values (5, 8); 
insert into engine_variant (id_engine, id_variant) values (6, 9); 
insert into engine_variant (id_engine, id_variant) values (7, 10); 
insert into engine_variant (id_engine, id_variant) values (8, 11); 
insert into engine_variant (id_engine, id_variant) values (9, 12); 
insert into engine_variant (id_engine, id_variant) values (10, 13); 
insert into engine_variant (id_engine, id_variant) values (11, 14); 
insert into engine_variant (id_engine, id_variant) values (12, 15); 
insert into engine_variant (id_engine, id_variant) values (13, 16); 
insert into engine_variant (id_engine, id_variant) values (14, 17); 
insert into engine_variant (id_engine, id_variant) values (15, 18); 

-- Bentley
insert into engine_variant (id_engine, id_variant) values (19, 19); 
insert into engine_variant (id_engine, id_variant) values (20, 20); 
insert into engine_variant (id_engine, id_variant) values (21, 21); 
insert into engine_variant (id_engine, id_variant) values (22, 22); 
insert into engine_variant (id_engine, id_variant) values (23, 23); 
insert into engine_variant (id_engine, id_variant) values (24, 24);  
insert into engine_variant (id_engine, id_variant) values (25, 25); 
insert into engine_variant (id_engine, id_variant) values (26, 26); 
insert into engine_variant (id_engine, id_variant) values (27, 27); 
insert into engine_variant (id_engine, id_variant) values (28, 28); 
insert into engine_variant (id_engine, id_variant) values (29, 29); 
insert into engine_variant (id_engine, id_variant) values (30, 30); 
insert into engine_variant (id_engine, id_variant) values (31, 31); 
insert into engine_variant (id_engine, id_variant) values (32, 32); 

-- Ferrari
insert into engine_variant (id_engine, id_variant) values (33, 33); 
insert into engine_variant (id_engine, id_variant) values (34, 34); 
insert into engine_variant (id_engine, id_variant) values (35, 35); 
insert into engine_variant (id_engine, id_variant) values (36, 36); 
insert into engine_variant (id_engine, id_variant) values (37, 37); 
insert into engine_variant (id_engine, id_variant) values (38, 38); 
insert into engine_variant (id_engine, id_variant) values (39, 39); 
insert into engine_variant (id_engine, id_variant) values (40, 40); 
insert into engine_variant (id_engine, id_variant) values (41, 41); 
insert into engine_variant (id_engine, id_variant) values (42, 42); 
insert into engine_variant (id_engine, id_variant) values (43, 43); 
insert into engine_variant (id_engine, id_variant) values (44, 44); 
insert into engine_variant (id_engine, id_variant) values (45, 45); 
insert into engine_variant (id_engine, id_variant) values (46, 46); 


-- Lamborghini
insert into engine_variant (id_engine, id_variant) values (47,48); 
insert into engine_variant (id_engine, id_variant) values (48,47); 
insert into engine_variant (id_engine, id_variant) values (48,49); 
insert into engine_variant (id_engine, id_variant) values (51,50); 
insert into engine_variant (id_engine, id_variant) values (52,52); 
insert into engine_variant (id_engine, id_variant) values (55,53); 
insert into engine_variant (id_engine, id_variant) values (47,54); 
insert into engine_variant (id_engine, id_variant) values (47,55); 
insert into engine_variant (id_engine, id_variant) values (47,56); 
insert into engine_variant (id_engine, id_variant) values (47,57); 
insert into engine_variant (id_engine, id_variant) values (47,58); 
insert into engine_variant (id_engine, id_variant) values (47,59); 
insert into engine_variant (id_engine, id_variant) values (47,60); 
insert into engine_variant (id_engine, id_variant) values (47,61); 
insert into engine_variant (id_engine, id_variant) values (47,62); 
insert into engine_variant (id_engine, id_variant) values (47,63); 
insert into engine_variant (id_engine, id_variant) values (47,64); 
insert into engine_variant (id_engine, id_variant) values (47,65); 
insert into engine_variant (id_engine, id_variant) values (47,66); 
insert into engine_variant (id_engine, id_variant) values (47,67); 
insert into engine_variant (id_engine, id_variant) values (47,68); 
insert into engine_variant (id_engine, id_variant) values (47,69); 

-- select * from engine_variant;

-- Revisión de todas las tablas y su relación 
/*
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
*/