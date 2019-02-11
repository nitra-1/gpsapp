CREATE DATABASE  IF NOT EXISTS `gps` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `gps`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: gps
-- ------------------------------------------------------
-- Server version	5.5.57

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

--
-- Table structure for table `city_master`
--

DROP TABLE IF EXISTS `city_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_master` (
  `city_id` int(4) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(25) NOT NULL,
  `flag` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`city_id`),
  UNIQUE KEY `city_name` (`city_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_master`
--

LOCK TABLES `city_master` WRITE;
/*!40000 ALTER TABLE `city_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `city_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journey_master`
--

DROP TABLE IF EXISTS `journey_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journey_master` (
  `journey_id` int(4) NOT NULL AUTO_INCREMENT,
  `vehicle_type` varchar(25) DEFAULT NULL,
  `route_id` int(4) DEFAULT NULL,
  `total_distance_covered` int(4) DEFAULT NULL,
  `flag` varchar(25) DEFAULT NULL,
  `journey_status` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`journey_id`),
  KEY `r_id` (`route_id`),
  CONSTRAINT `journey_master_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `route_master` (`route_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journey_master`
--

LOCK TABLES `journey_master` WRITE;
/*!40000 ALTER TABLE `journey_master` DISABLE KEYS */;
INSERT INTO `journey_master` VALUES (1,'Tempo',1,1200,'10','closed'),(2,'Truck',2,2000,'10','closed'),(9,'Tempo',1,200,'2','transit'),(10,'Truck',2,200,'2','transit');
/*!40000 ALTER TABLE `journey_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route_master`
--

DROP TABLE IF EXISTS `route_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `route_master` (
  `route_id` int(4) NOT NULL AUTO_INCREMENT,
  `route_1` varchar(25) DEFAULT NULL,
  `route_2` varchar(25) DEFAULT NULL,
  `route_3` varchar(25) DEFAULT NULL,
  `route_4` varchar(25) DEFAULT NULL,
  `total_distance` int(4) DEFAULT NULL,
  `flag` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route_master`
--

LOCK TABLES `route_master` WRITE;
/*!40000 ALTER TABLE `route_master` DISABLE KEYS */;
INSERT INTO `route_master` VALUES (1,'pune','mumbai','ahmedabad','delhi',1000,'1'),(2,'Cochin','Hyderabad','chennai','mumbai',2000,'1');
/*!40000 ALTER TABLE `route_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-11 11:53:08
