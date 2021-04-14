-- MySQL dump 10.13  Distrib 5.7.33-36, for Linux (x86_64)
--
-- Host: localhost    Database: Hospital
-- ------------------------------------------------------
-- Server version	5.7.33-36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!50717 SELECT COUNT(*) INTO @rocksdb_has_p_s_session_variables FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'session_variables' */;
/*!50717 SET @rocksdb_get_is_supported = IF (@rocksdb_has_p_s_session_variables, 'SELECT COUNT(*) INTO @rocksdb_is_supported FROM performance_schema.session_variables WHERE VARIABLE_NAME=\'rocksdb_bulk_load\'', 'SELECT 0') */;
/*!50717 PREPARE s FROM @rocksdb_get_is_supported */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;
/*!50717 SET @rocksdb_enable_bulk_load = IF (@rocksdb_is_supported, 'SET SESSION rocksdb_bulk_load = 1', 'SET @rocksdb_dummy_bulk_load = 0') */;
/*!50717 PREPARE s FROM @rocksdb_enable_bulk_load */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor` (
  `doctor_ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `speciality` varchar(50) DEFAULT NULL,
  `address` char(100) DEFAULT NULL,
  `town_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`doctor_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Marko','Markovic','+381644567890','Surgery','Svetosavska',1),(2,'Darko','Petrovic','+381644561234','Neurology','Pozeska',1),(3,'Marko','Popovic','+381644561223','Surgery','Makedonska',1),(4,'Lazar','Markovic','+381644561334','Psychiatry','Svetosavska',1),(5,'Darko','Petrovic','+381644561233','Surgery','Pozeska',1),(6,'Sasa','Popovic','+381644561111','Neurology','Pozeska',2),(7,'Marko','Lazarevic','+381644562222','Surgery','Svetosavska',2),(8,'Ivan','Petrovic','+381644563333','Psychiatry','Makedonska',2),(9,'Darko','Popovic','+381644564444','Surgery','Svetosavska',2),(10,'Ivan','Lazarevic','+381644564321','Neurology','Pozeska',2),(11,'Marko','Markovic','+381644565678','Surgery','Svetosavska',3),(12,'Darko','Petrovic','+381644565567','Psychiatry','Pozeska',3),(13,'Marko','Popovic','+381644565778','Surgery','Makedonska',3),(14,'Lazar','Markovic','+381644568765','Neurology','Svetosavska',3),(15,'Darko','Petrovic','+381644568876','Surgery','Pozeska',3),(16,'Sasa','Popovic','+381644567786','Psychiatry','Pozeska',4),(17,'Marko','Lazarevic','+381644565666','Surgery','Svetosavska',4),(18,'Ivan','Petrovic','+381644568888','Neurology','Makedonska',4),(19,'Darko','Popovic','+381644567777','Surgery','Svetosavska',4),(20,'Ivan','Lazarevic','+381654567655','Psychiatry','Pozeska',4);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `patient_ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` char(100) DEFAULT NULL,
  `town_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`patient_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'Marko','Markovic','+381654567890','Svetosavska',1),(2,'Darko','Petrovic','+381654561234','Pozeska',1),(3,'Marko','Popovic','+381654561223','Makedonska',1),(4,'Lazar','Markovic','+381654561334','Svetosavska',1),(5,'Darko','Petrovic','+381654561233','Pozeska',1),(6,'Sasa','Popovic','+381654561111','Pozeska',2),(7,'Marko','Lazarevic','+381654562222','Svetosavska',2),(8,'Ivan','Petrovic','+381654563333','Makedonska',2),(9,'Darko','Popovic','+381654564444','Svetosavska',2),(10,'Ivan','Lazarevic','+381654564321','Pozeska',2),(11,'Marko','Markovic','+381654565678','Svetosavska',3),(12,'Darko','Petrovic','+381654565567','Pozeska',3),(13,'Marko','Popovic','+381654565778','Makedonska',3),(14,'Lazar','Markovic','+381654568765','Svetosavska',3),(15,'Darko','Petrovic','+381654568876','Pozeska',3),(16,'Sasa','Popovic','+381654567786','Pozeska',4),(17,'Marko','Lazarevic','+381654565666','Svetosavska',4),(18,'Ivan','Petrovic','+381654568888','Makedonska',4),(19,'Darko','Popovic','+381654567777','Svetosavska',4),(20,'Ivan','Lazarevic','+381654567655','Pozeska',4);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `town`
--

DROP TABLE IF EXISTS `town`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `town` (
  `town_ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `code` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`town_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `town`
--

LOCK TABLES `town` WRITE;
/*!40000 ALTER TABLE `town` DISABLE KEYS */;
INSERT INTO `town` VALUES (1,'Belgrade','11000'),(2,'Nis','18000'),(3,'Novi Sad','21000'),(4,'Kragujevac','34000'),(5,'Valjevo','14000');
/*!40000 ALTER TABLE `town` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit`
--

DROP TABLE IF EXISTS `visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visit` (
  `visit_id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_ID` int(11) DEFAULT NULL,
  `patient_ID` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`visit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit`
--

LOCK TABLES `visit` WRITE;
/*!40000 ALTER TABLE `visit` DISABLE KEYS */;
INSERT INTO `visit` VALUES (1,1,5,'2021-04-01 00:00:00','1st examination'),(2,2,4,'2021-04-02 00:00:00','2st examination'),(3,3,3,'2021-04-03 00:00:00','3st examination'),(4,4,2,'2021-04-03 00:00:00','2st examination'),(5,5,1,'2021-04-02 00:00:00','1st examination'),(6,20,20,'2021-04-02 00:00:00','1st examination'),(7,6,10,'2021-04-01 00:00:00','2st examination'),(8,7,9,'2021-04-01 00:00:00','3st examination'),(9,8,8,'2021-04-03 00:00:00','2st examination'),(10,9,7,'2021-04-01 00:00:00','1st examination'),(11,10,6,'2021-04-01 00:00:00','1st examination'),(12,11,15,'2021-04-02 00:00:00','2st examination'),(13,12,14,'2021-04-03 00:00:00','3st examination'),(14,13,13,'2021-04-03 00:00:00','2st examination'),(15,14,12,'2021-04-02 00:00:00','1st examination'),(16,15,11,'2021-04-02 00:00:00','1st examination'),(17,16,19,'2021-04-01 00:00:00','2st examination'),(18,17,18,'2021-04-01 00:00:00','3st examination'),(19,18,17,'2021-04-03 00:00:00','2st examination'),(20,19,16,'2021-04-01 00:00:00','1st examination'),(21,1,5,'2021-04-02 00:00:00','2st examination'),(22,2,14,'2021-04-03 00:00:00','3st examination'),(23,3,13,'2021-04-04 00:00:00','4st examination'),(24,4,2,'2021-04-04 00:00:00','3st examination'),(25,5,11,'2021-04-03 00:00:00','2st examination'),(26,20,20,'2021-04-03 00:00:00','2st examination'),(27,6,10,'2021-04-02 00:00:00','3st examination'),(28,17,9,'2021-04-02 00:00:00','4st examination'),(29,8,8,'2021-04-04 00:00:00','3st examination'),(30,19,7,'2021-04-02 00:00:00','2st examination'),(31,10,6,'2021-04-02 00:00:00','2st examination'),(32,1,15,'2021-04-04 00:00:00','3st examination'),(33,2,14,'2021-04-04 00:00:00','4st examination'),(34,13,3,'2021-04-04 00:00:00','3st examination'),(35,14,1,'2021-04-03 00:00:00','2st examination'),(36,15,1,'2021-04-03 00:00:00','2st examination'),(37,1,19,'2021-04-02 00:00:00','3st examination'),(38,17,18,'2021-04-02 00:00:00','4st examination'),(39,8,17,'2021-04-04 00:00:00','3st examination'),(40,19,16,'2021-04-02 00:00:00','2st examination');
/*!40000 ALTER TABLE `visit` ENABLE KEYS */;
UNLOCK TABLES;
/*!50112 SET @disable_bulk_load = IF (@is_rocksdb_supported, 'SET SESSION rocksdb_bulk_load = @old_rocksdb_bulk_load', 'SET @dummy_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @disable_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 DEALLOCATE PREPARE s */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-14 17:33:03
