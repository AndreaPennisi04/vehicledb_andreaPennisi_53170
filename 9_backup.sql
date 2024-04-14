-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (x86_64)
--
-- Host: localhost    Database: vehicledbs
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `id_brand` int NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id_brand`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'AstonMartin'),(2,'Bentley'),(3,'Ferrari'),(4,'Lamborghini'),(5,'Rolls-Royce'),(6,'Rolls-Royce');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engine`
--

DROP TABLE IF EXISTS `engine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engine` (
  `id_engine` int NOT NULL AUTO_INCREMENT,
  `description` varchar(75) DEFAULT NULL,
  `id_fuel` int NOT NULL,
  `transmission` varchar(75) DEFAULT NULL,
  `capacity` varchar(25) NOT NULL,
  `power` int NOT NULL,
  `cylinders` varchar(25) NOT NULL,
  PRIMARY KEY (`id_engine`),
  KEY `id_fuel` (`id_fuel`),
  CONSTRAINT `engine_ibfk_1` FOREIGN KEY (`id_fuel`) REFERENCES `fuel` (`id_fuel`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine`
--

LOCK TABLES `engine` WRITE;
/*!40000 ALTER TABLE `engine` DISABLE KEYS */;
INSERT INTO `engine` VALUES (1,NULL,1,'Automatic','5935',715,'V12'),(2,NULL,1,'Automatic','5204',715,'V12'),(3,NULL,1,'Automatic','3982',502,'V8'),(4,NULL,1,'Automatic','5024',630,'V12'),(5,NULL,1,'Automatic','3982',503,'V8'),(6,NULL,1,'Automatic','3982',503,'V8'),(7,NULL,1,'Automatic','3982',503,'V8'),(8,NULL,1,'Automatic','3982',503,'V8'),(9,NULL,1,'Automatic','3982',528,'V8'),(10,NULL,1,'Automatic','3982',528,'V8'),(11,NULL,1,'Automatic','3982',503,'V8'),(12,NULL,1,'Automatic','5204',690,'V12'),(13,NULL,1,'Automatic','3982',503,'V12'),(14,NULL,1,'Automatic','3982',542,'V8'),(15,NULL,1,'Automatic','3982',697,'V8'),(16,NULL,1,'Automatic','5204',715,'V12'),(17,NULL,1,'Automatic','5935',715,'V12'),(18,NULL,1,'Automatic','5204',630,'V12'),(19,NULL,1,'Automatic','3996',542,'V8'),(20,NULL,1,'Automatic','3996',542,'V8'),(21,NULL,1,'Automatic','3996',542,'V8'),(22,NULL,1,'Automatic','5950',626,'W12'),(23,NULL,1,'Automatic','5950',626,'W12'),(24,NULL,1,'Automatic','3996',542,'V8'),(25,NULL,1,'Automatic','5950',542,'V8'),(26,NULL,1,'Automatic','3996',542,'V8'),(27,NULL,1,'Automatic','5950',650,'W12'),(28,NULL,1,'Automatic','3996',542,'V8'),(29,NULL,2,'Automatic','2900',536,'V6'),(30,NULL,1,'Automatic','3996',542,'V8'),(31,NULL,2,'Automatic','2995',536,'V6'),(32,NULL,1,'Automatic','5950',626,'W12'),(33,NULL,2,'F1 DCT 8-SPEED','2.9-liter ',830,'V6'),(34,NULL,1,'7-SPEED DUAL CLUTCH F1 GEARBOX','3.9-liter',492,'V8'),(35,NULL,1,'7-SPEED DUAL CLUTCH F1 GEARBOX','3.9-liter',670,'V8'),(36,NULL,4,'9-speed dual clutch F1 gearbox','4.0-liter',780,'V8'),(37,NULL,1,'7-SPEED DUAL CLUTCH F1 GEARBOX','3.9-liter',720,'V8'),(38,NULL,1,'7-speed dual clutch F1 gearbox','6.5-liter',800,'V12'),(39,NULL,1,'Automatic (Dual-clutch), 7-speed','6.3-liter',708,'V12'),(40,NULL,1,'manual','6.0-liter',670,'V12'),(41,NULL,1,'4RM EVO / 4WS / 7-SPEED DUAL CLUTCH F1 GEARBOX / E - DIFF','6.3-liter',507,'V12'),(42,NULL,1,'F1 DUAL CLUTCH, 7-SPEED','3.9-liter',449,'V8'),(43,NULL,1,'Automatic (Dual-clutch) 7-speed','4.5-liter',605,'V8'),(44,NULL,1,'F1 DUAL CLUTCH, 7-SPEED','4.3-liter',338,'V8'),(45,NULL,1,'Dual clutch F1 gearbox with 7 speeds + rev.','3.9-liter',412,'V8'),(46,NULL,1,'F1 gearbox with 6 speeds + Rev','6.0L',493,'V12'),(47,NULL,1,'Semi-Automatic','3996',650,'8'),(48,NULL,1,'Semi-Automatic','3996',666,'8'),(49,NULL,1,'Semi-Automatic','3996',666,'8'),(50,NULL,1,'Automatic','6498',378,'12'),(51,NULL,1,'Manual','6498',740,'12'),(52,NULL,1,'Manual','6498',740,'12'),(53,NULL,1,'Automatic Tiptronic','6498',740,'12'),(54,NULL,1,'Semi-Automatic','6498',750,'12'),(55,NULL,1,'Automatic Tiptronic','6498',566,'12'),(56,NULL,1,'Semi-Automatic','6498',770,'12'),(57,NULL,1,'Automatic','6498',780,'12'),(58,NULL,1,'Automatic','5204',580,'10'),(59,NULL,1,'Semi-Automatic','5204',610,'10'),(60,NULL,1,'Automatic Tiptronic','5204',610,'10'),(61,NULL,1,'DCT','5204',640,'10'),(62,NULL,1,'Automatic','5204',640,'10'),(63,'V10, 90°, MPI + Direct Stratified Injection',1,'DCT','5204',630,'10'),(64,NULL,1,'Semi-Automatic','5204',610,'10'),(65,NULL,1,'Semi-Automatic','4961',552,'10'),(66,NULL,1,'Semi-Automatic','4961',552,'10'),(67,NULL,1,'Automatic','4961',552,'10'),(68,NULL,1,'Semi-Automatic','6498',770,'12'),(69,NULL,1,'Semi-Automatic','6498',770,'12');
/*!40000 ALTER TABLE `engine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engine_variant`
--

DROP TABLE IF EXISTS `engine_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engine_variant` (
  `id_variant` int NOT NULL,
  `id_engine` int NOT NULL,
  PRIMARY KEY (`id_variant`,`id_engine`),
  KEY `id_engine` (`id_engine`),
  CONSTRAINT `engine_variant_ibfk_1` FOREIGN KEY (`id_variant`) REFERENCES `variant` (`id_variant`),
  CONSTRAINT `engine_variant_ibfk_2` FOREIGN KEY (`id_engine`) REFERENCES `engine` (`id_engine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine_variant`
--

LOCK TABLES `engine_variant` WRITE;
/*!40000 ALTER TABLE `engine_variant` DISABLE KEYS */;
INSERT INTO `engine_variant` VALUES (1,1),(2,2),(7,3),(5,4),(8,5),(9,6),(10,7),(11,8),(12,9),(13,10),(14,11),(15,12),(16,13),(17,14),(18,15),(3,16),(4,17),(6,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(48,47),(54,47),(55,47),(56,47),(57,47),(58,47),(59,47),(60,47),(61,47),(62,47),(63,47),(64,47),(65,47),(66,47),(67,47),(68,47),(69,47),(47,48),(49,48),(50,51),(52,52),(53,55);
/*!40000 ALTER TABLE `engine_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feature`
--

DROP TABLE IF EXISTS `feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feature` (
  `id_feature` int NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`id_feature`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feature`
--

LOCK TABLES `feature` WRITE;
/*!40000 ALTER TABLE `feature` DISABLE KEYS */;
/*!40000 ALTER TABLE `feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuel`
--

DROP TABLE IF EXISTS `fuel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fuel` (
  `id_fuel` int NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`id_fuel`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuel`
--

LOCK TABLES `fuel` WRITE;
/*!40000 ALTER TABLE `fuel` DISABLE KEYS */;
INSERT INTO `fuel` VALUES (1,'Petrol'),(2,'Hybrid'),(3,'Diesel'),(4,'Electric');
/*!40000 ALTER TABLE `fuel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LOG_AUDIT`
--

DROP TABLE IF EXISTS `LOG_AUDIT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LOG_AUDIT` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `insert_variant` varchar(10) DEFAULT NULL,
  `variant_table` varchar(50) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `date_ins` date DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOG_AUDIT`
--

LOCK TABLES `LOG_AUDIT` WRITE;
/*!40000 ALTER TABLE `LOG_AUDIT` DISABLE KEYS */;
/*!40000 ALTER TABLE `LOG_AUDIT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LOG_AUDIT_2`
--

DROP TABLE IF EXISTS `LOG_AUDIT_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LOG_AUDIT_2` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `newInsert_oldInsert` varchar(200) DEFAULT NULL,
  `insert_variant` varchar(10) DEFAULT NULL,
  `variant_table` varchar(50) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `date_ins` date DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOG_AUDIT_2`
--

LOCK TABLES `LOG_AUDIT_2` WRITE;
/*!40000 ALTER TABLE `LOG_AUDIT_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `LOG_AUDIT_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model` (
  `id_model` int NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL,
  `id_brand` int NOT NULL,
  PRIMARY KEY (`id_model`),
  KEY `id_brand` (`id_brand`),
  CONSTRAINT `model_ibfk_1` FOREIGN KEY (`id_brand`) REFERENCES `brand` (`id_brand`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (1,'DBS Coupe',1),(2,'DBS Volante',1),(3,'DB11 coupe',1),(4,'DB11 Volante',1),(5,'Vantage V8 Coupe',1),(6,'Vantage V8 Roadster',1),(7,'Vantage V12 Coupe',1),(8,'Vantage V12 Roadster',1),(9,'DBX',1),(10,'Bentayga EWB',2),(11,'Continental GT',2),(12,'Continental GTC',2),(13,'Flyng Spur',2),(14,'GTB',3),(15,'Spider',3),(16,'F8 Tributo',3),(17,'GTS',3),(18,'Aperta',3),(19,'GTC4',3),(20,'Speciale A',3),(21,'Ferrari California',3),(22,'GTO',3),(23,'Urus',4),(24,'Aventator',4),(25,'Huracan',4),(26,'Gallardo',4),(27,'Heritage',4),(28,'Limited Series',4);
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variant`
--

DROP TABLE IF EXISTS `variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `variant` (
  `id_variant` int NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL,
  `id_model` int NOT NULL,
  PRIMARY KEY (`id_variant`),
  KEY `id_model` (`id_model`),
  CONSTRAINT `variant_ibfk_1` FOREIGN KEY (`id_model`) REFERENCES `model` (`id_model`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variant`
--

LOCK TABLES `variant` WRITE;
/*!40000 ALTER TABLE `variant` DISABLE KEYS */;
INSERT INTO `variant` VALUES (1,'DBS Coupe',1),(2,'DBS Superleggera',1),(3,'DBS Superleggera Volante',2),(4,'DBS Volante',2),(5,'DB11 V12 AMR Coupe',3),(6,'DB11 V12 Coupe',3),(7,'DB11 V8 Coupe',3),(8,'DB11 V8 Volante',4),(9,'Vantage 007 Edition Coupe',5),(10,'Vantage AMR Coupe',5),(11,'Vantage Coupe',5),(12,'Vantage F1 Edition Coupe',5),(13,'Vantage F1 Edition Roadster',6),(14,'Vantage Roadster',6),(15,'V12 Vantage Coupe',7),(16,'Vantage V12 Roadster',8),(17,'DBX SUV',9),(18,'DBX 707 SUV',9),(19,'Bentayga EWB Azure V8',10),(20,'Bentayga EWB Azure First Edition V8',10),(21,'Continental GT Azure V8',11),(22,'Continental GT W12',11),(23,'Continental GT Mulliner W12',11),(24,'Continental GT V8',11),(25,'Continental GT S V8',11),(26,'Continental GTC Azure V8',12),(27,'Continental GTC Speed W12',12),(28,'Continental GTC Mulliner V8',12),(29,'Flying Spur Azure V6 hybrid',13),(30,'Flying Spur Azure V8',13),(31,'Flying Spur S V6 Hybrid',13),(32,'Flying Spur Speed W12',13),(33,'296 GTB',14),(34,'488 GTB',14),(35,'488 Spider',15),(36,'SF900 Spider',15),(37,'F8 Tributo',16),(38,'812 GTS',17),(39,'LaFerrari Aperta',18),(40,'SA Aperta',18),(41,'GTC4Lusso',19),(42,'GTC4Lusso T',19),(43,'458 Speciale A',20),(44,'Ferrari California',21),(45,'Ferrari California T',21),(46,'599 GTO',22),(47,'Urus S',23),(48,'Urus',23),(49,'Urus Performante',23),(50,'Aventator',24),(51,'Aventator Roadster',24),(52,'Aventator S',24),(53,'Aventator SV',24),(54,'Aventator SV Roadster',24),(55,'Aventator SVJ',24),(56,'Aventator SVJ Roadster',24),(57,'Aventator LP 780-4 Ultimate',24),(58,'Huracán',25),(59,'Huracán Spyder',25),(60,'Huracán RWD',25),(61,'Huracán Performante',25),(62,'Huracán EVO',25),(63,'Huracán EVO STO',25),(64,'Huracán Sterrato',25),(65,'Gallardo',26),(66,'Gallardo Spyder',26),(67,'Heritage',27),(68,'Centenario Roadster',28),(69,'Sián FKP 37',28);
/*!40000 ALTER TABLE `variant` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TRG_LOG_VARIANT_2` BEFORE INSERT ON `variant` FOR EACH ROW begin
insert into LOG_AUDIT_2 (DESCRIPTION, insert_variant , variant_table , variant_table, user, date_ins)
values ( new.description, new.id_variant, 'INSERT', 'variant', CURRENT_USER() , NOW());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TRG_LOG_VARIANT` BEFORE INSERT ON `variant` FOR EACH ROW BEGIN

INSERT INTO LOG_AUDIT (insert_variant , variant_table , user, date_ins)
VALUES ('INSERT' , 'variant' , CURRENT_USER() , NOW());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TRG_LOG_VARIANT_3` BEFORE UPDATE ON `variant` FOR EACH ROW BEGIN
INSERT INTO LOG_AUDIT_2 (newInsert_oldInsert, insert_variant , variant_table , user, date_ins)
VALUES (CONCAT('New field:',NEW.description, '- Old field:',OLD.description), 'UPDATE', 'VARIANT', CURRENT_USER(), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TRG_LOG_VARIANT_4` AFTER UPDATE ON `variant` FOR EACH ROW begin
insert into LOG_AUDIT_2 (id_variant, description, insert_variant , variant_table , user, date_ins)
VALUES (CONCAT( 'New field:',NEW.description, '- Old field:',OLD.description),
				new.id_variant, 
                'UPDATE',
                'VARIANT' ,
                CURRENT_USER() , 
                CURRENT_TIMESTAMP());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TRG_LOG_VARIANT_5` BEFORE DELETE ON `variant` FOR EACH ROW BEGIN
INSERT INTO LOG_AUDIT_2 (description, id_variant, insert_variant , variant_table , user, date_ins)
VALUES ( CONCAT(',old.description,', OLD.description),
         OLD.id_variant, 
        'delete' , 
        'variant' ,
        CURRENT_USER() , 
        CURRENT_TIMESTAMP());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `variant_feature`
--

DROP TABLE IF EXISTS `variant_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `variant_feature` (
  `id_variant` int NOT NULL,
  `id_feature` int NOT NULL,
  PRIMARY KEY (`id_variant`,`id_feature`),
  KEY `id_feature` (`id_feature`),
  CONSTRAINT `variant_feature_ibfk_1` FOREIGN KEY (`id_variant`) REFERENCES `variant` (`id_variant`),
  CONSTRAINT `variant_feature_ibfk_2` FOREIGN KEY (`id_feature`) REFERENCES `feature` (`id_feature`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variant_feature`
--

LOCK TABLES `variant_feature` WRITE;
/*!40000 ALTER TABLE `variant_feature` DISABLE KEYS */;
/*!40000 ALTER TABLE `variant_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_brands_with_model_count`
--

DROP TABLE IF EXISTS `vw_brands_with_model_count`;
/*!50001 DROP VIEW IF EXISTS `vw_brands_with_model_count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_brands_with_model_count` AS SELECT 
 1 AS `id_brand`,
 1 AS `brand_description`,
 1 AS `model_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_drescription_id_model_id_brand`
--

DROP TABLE IF EXISTS `vw_drescription_id_model_id_brand`;
/*!50001 DROP VIEW IF EXISTS `vw_drescription_id_model_id_brand`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_drescription_id_model_id_brand` AS SELECT 
 1 AS `id_brand`,
 1 AS `id_model`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_engine`
--

DROP TABLE IF EXISTS `vw_engine`;
/*!50001 DROP VIEW IF EXISTS `vw_engine`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_engine` AS SELECT 
 1 AS `id_engine`,
 1 AS `description`,
 1 AS `id_fuel`,
 1 AS `transmission`,
 1 AS `capacity`,
 1 AS `power`,
 1 AS `cylinders`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_model_view`
--

DROP TABLE IF EXISTS `vw_model_view`;
/*!50001 DROP VIEW IF EXISTS `vw_model_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_model_view` AS SELECT 
 1 AS `id_model`,
 1 AS `description`,
 1 AS `id_brand`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'vehicledbs'
--
/*!50003 DROP FUNCTION IF EXISTS `FN_by_model_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FN_by_model_name`(p__model_name varchar(45)) RETURNS varchar(45) CHARSET utf8mb4
    DETERMINISTIC
begin  
declare v_model_name varchar(45);
-- ---
Select count(*)
into v_model_name
from model
where description like p__model_name;

return v_model_name;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `FN_by_variant_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FN_by_variant_name`(p_id_variant int) RETURNS char(45) CHARSET utf8mb4
    DETERMINISTIC
begin
declare v_variant_name char(45);
select description 
into v_variant_name
from variant
where id_variant = p_id_variant;
return v_variant_name;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `FN_count_fuel_models` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FN_count_fuel_models`(p1 VARCHAR(50)) RETURNS int
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `FN_variant_description` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FN_variant_description`(p_id_variant int, p_id_model int) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
begin  
declare v_result varchar(50);
-- ---
select description 
into v_result
from variant
where id_variant < p_id_variant
and id_model = p_id_model;  

return v_result;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_new_brand` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_new_brand`(IN p_e VARCHAR(50), OUT p_return VARCHAR(100))
BEGIN
    IF p_e = '' THEN 
        SET p_return = 'Error, empty param';
    ELSE
        INSERT INTO brand VALUES (NULL, p_e); 
        SET p_return = 'OK';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_general_information` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_general_information`(in c char(10), in p int, ca int)
BEGIN
select c as cylinder, p as power, ca as capacity;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GetModelByTransmission` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_GetModelByTransmission`(IN p_transmission VARCHAR(50))
BEGIN
    SELECT m.description AS model_description
    FROM engine e
    INNER JOIN model m ON e.id_engine = m.id_model
    WHERE e.transmission = p_transmission;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_model` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_model`(in p_letter char(3), out p_number int)
BEGIN
SELECT count(*) 
INTO p_number
FROM model
WHERE description like concat('%',p_letter,'%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_brands_with_model_count`
--

/*!50001 DROP VIEW IF EXISTS `vw_brands_with_model_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_brands_with_model_count` AS select `b`.`id_brand` AS `id_brand`,`b`.`description` AS `brand_description`,count(`m`.`id_model`) AS `model_count` from (`brand` `b` left join `model` `m` on((`b`.`id_brand` = `m`.`id_brand`))) group by `b`.`id_brand` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_drescription_id_model_id_brand`
--

/*!50001 DROP VIEW IF EXISTS `vw_drescription_id_model_id_brand`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_drescription_id_model_id_brand` AS select distinct `b`.`id_brand` AS `id_brand`,`m`.`id_model` AS `id_model`,`v`.`description` AS `description` from ((`variant` `v` join `model` `m`) join `brand` `b` on(((`v`.`id_variant` = `m`.`id_model`) and (`m`.`id_model` = `b`.`id_brand`)))) where (`v`.`id_variant` in (1,2)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_engine`
--

/*!50001 DROP VIEW IF EXISTS `vw_engine`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_engine` AS select `engine`.`id_engine` AS `id_engine`,`engine`.`description` AS `description`,`engine`.`id_fuel` AS `id_fuel`,`engine`.`transmission` AS `transmission`,`engine`.`capacity` AS `capacity`,`engine`.`power` AS `power`,`engine`.`cylinders` AS `cylinders` from `engine` where ((`engine`.`transmission` like 'A%') and (`engine`.`id_engine` = 24)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_model_view`
--

/*!50001 DROP VIEW IF EXISTS `vw_model_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_model_view` AS select `model`.`id_model` AS `id_model`,`model`.`description` AS `description`,`model`.`id_brand` AS `id_brand` from `model` limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-14 18:03:46
