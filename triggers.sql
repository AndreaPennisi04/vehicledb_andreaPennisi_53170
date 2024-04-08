USE vehicledbs;

drop table if  exists LOG_AUDIT;
CREATE TABLE IF NOT EXISTS LOG_AUDIT
(
id_log INT AUTO_INCREMENT ,
insert_variant VARCHAR(10) ,
variant_table VARCHAR(50) ,
user VARCHAR(100) , 
date_ins DATE ,
PRIMARY KEY (id_log)
)
;

drop table if  exists LOG_AUDIT_2;
CREATE TABLE IF NOT EXISTS LOG_AUDIT_2 
(
id_log INT AUTO_INCREMENT ,
newInsert_oldInsert VARCHAR(200),
insert_variant VARCHAR(10) ,
variant_table VARCHAR(50) ,
user VARCHAR(100) , 
date_ins DATE ,
PRIMARY KEY (id_log)
)
;
select * from variant;


-- CREATE TRIGGER INSERT
-- Primer trigger
DROP TRIGGER IF EXISTS TRG_LOG_VARIANT; 
DELIMITER //
CREATE TRIGGER TRG_LOG_VARIANT 
BEFORE INSERT ON vehicledbs.variant
FOR EACH ROW 
BEGIN

INSERT INTO LOG_AUDIT (insert_variant , variant_table , user, date_ins)
VALUES ('INSERT' , 'variant' , CURRENT_USER() , NOW());

END//
DELIMITER //

SELECT * FROM variant ;
SELECT * FROM log_audit;

-- Segundo trigger 
DROP TRIGGER IF EXISTS TRG_LOG_VARIANT_2 
DELIMITER //
create trigger TRG_LOG_VARIANT_2 
before INSERT on vehicledbs.variant
for each row
begin
insert into LOG_AUDIT_2 (DESCRIPTION, insert_variant , variant_table , variant_table, user, date_ins)
values ( new.description, new.id_variant, 'INSERT', 'variant', CURRENT_USER() , NOW());
end//
DELIMITER ; 


-- SINTAXYS 
SELECT * FROM log_audit ;
SELECT * FROM log_audit_2 ;
SELECT CURRENT_DATE();
SELECT TIMESTAMP();
select * from model;

-- CREATE TRIGGER UPDATE
-- Third trigger 
DROP TRIGGER IF EXISTS TRG_LOG_VARIANT_3;
DELIMITER //
CREATE TRIGGER TRG_LOG_VARIANT_3
BEFORE UPDATE ON vehicledbs.variant
FOR EACH ROW 
BEGIN
INSERT INTO LOG_AUDIT_2 (newInsert_oldInsert, insert_variant , variant_table , user, date_ins)
VALUES (CONCAT('New field:',NEW.description, '- Old field:',OLD.description), 'UPDATE', 'VARIANT', CURRENT_USER(), NOW());
END//
DELIMITER //

SELECT * FROM variant ;
UPDATE vehicledbs.variant 
SET DESCRIPTION = 'Aventator-Roadster' 
WHERE ID_VARIANT = -- ID_VARIANT_NUMBER;
SELECT * FROM LOG_AUDIT_2 ;


-- QUARTO trigger 
DROP TRIGGER IF EXISTS TRG_LOG_VARIANT_4 
DELIMITER //
create trigger TRG_LOG_VARIANT_4 
AFTER UPDATE on vehicledbs.variant
for each row
begin
insert into LOG_AUDIT_2 (id_variant, description, insert_variant , variant_table , user, date_ins)
VALUES (CONCAT( 'New field:',NEW.description, '- Old field:',OLD.description),
				new.id_variant, 
                'UPDATE',
                'VARIANT' ,
                CURRENT_USER() , 
                CURRENT_TIMESTAMP());
end//
DELIMITER ; 

UPDATE vehicledbs.variant 
SET VARIANT = 'LaFerrari aperta' 
WHERE ID_VARIANT = 39;
select * from log_audit_2;

-- CREATE TRIGGER delete
-- Fifth trigger 
DROP TRIGGER IF EXISTS TRG_LOG_VARIANT_5;
DELIMITER //
CREATE TRIGGER TRG_LOG_VARIANT_5
BEFORE DELETE ON vehicledbs.variant
FOR EACH ROW 
BEGIN
INSERT INTO LOG_AUDIT_2 (description, id_variant, insert_variant , variant_table , user, date_ins)
VALUES ( CONCAT(',old.description,', OLD.description),
         OLD.id_variant, 
        'delete' , 
        'variant' ,
        CURRENT_USER() , 
        CURRENT_TIMESTAMP());
END//
DELIMITER //

SELECT * FROM vehicledbs.variant WHERE id_variant = 51;
DELETE FROM vehicledbs.variant WHERE id_variant = 69;
SELECT * FROM log_audit_2;


-- Sixth trigger 
DROP TRIGGER IF EXISTS TRG_LOG_VARIANT_6; 
DELIMITER //
CREATE TRIGGER TRG_LOG_VARIANT_6 
AFTER DELETE ON vehicledb.variant
FOR EACH ROW
BEGIN
INSERT INTO LOG_AUDIT_2 (description, id_variant, insert_variant , variant_table , user, date_ins)
VALUES ( CONCAT(',old.description,', OLD.description),
         OLD.id_variant, 
        'delete' , 
        'variant' ,
        CURRENT_USER() , 
        CURRENT_TIMESTAMP());
END//
DELIMITER ; 


-- INSERT INFO USING TRIGGER

INSERT INTO variant (`DESCRIPTION`, `ID_VARIANT`) VALUES ('La Ferrari Aperta',39); -- LaFerrari Aperta(VARIANT). LAMBORGHINI (BRAND)

