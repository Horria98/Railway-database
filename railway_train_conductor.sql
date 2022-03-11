-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: railway
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `train_conductor`
--

DROP TABLE IF EXISTS `train_conductor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `train_conductor` (
  `Fname` varchar(15) NOT NULL,
  `Mname` varchar(15) DEFAULT NULL,
  `Lname` varchar(15) NOT NULL,
  `condc_id` char(8) NOT NULL,
  `condc_address` varchar(30) DEFAULT NULL,
  `drive_train_no` int NOT NULL,
  PRIMARY KEY (`condc_id`),
  KEY `drive_train_no` (`drive_train_no`),
  CONSTRAINT `train_conductor_ibfk_1` FOREIGN KEY (`drive_train_no`) REFERENCES `train` (`train_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train_conductor`
--

LOCK TABLES `train_conductor` WRITE;
/*!40000 ALTER TABLE `train_conductor` DISABLE KEYS */;
INSERT INTO `train_conductor` VALUES ('Bader','Ali','Qahtani','12345678','Makkah',10),('Abullah','Abid','Zahrani','12345688','Makkah',11),('Nasser','Mansoor','Qurashi','12345888','Jeddah',12),('Jameel','Hasan','Ansari','12348888','Madinah',13),('Bandar','Tariq','Qahtani','12388888','Madinah',14);
/*!40000 ALTER TABLE `train_conductor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-06 22:11:25
