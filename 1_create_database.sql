DROP SCHEMA IF EXISTS
vehicledbs;

CREATE SCHEMA IF NOT EXISTS
vehicledbs;

USE vehicledbs;
-- DROP TABLE IF EXISTS brand;
CREATE TABLE brand (
    id_brand INT NOT NULL AUTO_INCREMENT,
    description VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_brand)
);

-- DROP TABLE IF EXISTS model;
CREATE TABLE model (
    id_model INT NOT NULL AUTO_INCREMENT,
    description VARCHAR(45) NOT NULL,
    id_brand INT NOT NULL,
    PRIMARY KEY (id_model),
    FOREIGN KEY (id_brand)
        REFERENCES brand (id_brand)
);

-- DROP TABLE IF EXISTS variant;
CREATE TABLE variant (
    id_variant INT NOT NULL AUTO_INCREMENT,
    description VARCHAR(45) NOT NULL,
    id_model INT NOT NULL,
    PRIMARY KEY (id_variant),
    FOREIGN KEY (id_model)
        REFERENCES model (id_model)
);

-- DROP TABLE IF EXISTS feature;
CREATE TABLE feature (
    id_feature INT NOT NULL AUTO_INCREMENT,
    description VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_feature)
);


-- DROP TABLE IF EXISTS variant_feature;
CREATE TABLE variant_feature (
    id_variant INT NOT NULL,
    id_feature INT NOT NULL,
    PRIMARY KEY (id_variant , id_feature),
    FOREIGN KEY (id_variant)
        REFERENCES variant (id_variant),
    FOREIGN KEY (id_feature)
        REFERENCES feature (id_feature)
);
	 
-- DROP TABLE IF EXISTS fuel; 
CREATE TABLE fuel (
    id_fuel INT NOT NULL AUTO_INCREMENT,
    description VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_fuel)
);

-- DROP TABLE IF EXISTS engine;
CREATE TABLE engine (
    id_engine INT NOT NULL AUTO_INCREMENT,
    description VARCHAR(75),
    id_fuel INT NOT NULL,
    transmission VARCHAR(75),
    capacity VARCHAR(25) NOT NULL,
    power INT NOT NULL,
    cylinders VARCHAR(25) NOT NULL,
    PRIMARY KEY (id_engine),
    FOREIGN KEY (id_fuel)
        REFERENCES fuel (id_fuel)
);

-- DROP TABLE IF EXISTS engine_variant;
CREATE TABLE engine_variant (
    id_variant INT NOT NULL,
    id_engine INT NOT NULL,
    PRIMARY KEY (id_variant , id_engine),
    FOREIGN KEY (id_variant)
        REFERENCES variant (id_variant),
    FOREIGN KEY (id_engine)
        REFERENCES engine (id_engine)
);