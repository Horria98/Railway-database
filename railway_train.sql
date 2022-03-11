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
-- Table structure for table `train`
--

DROP TABLE IF EXISTS `train`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `train` (
  `train_name` varchar(15) NOT NULL,
  `train_no` int NOT NULL,
  `start_sta_id` char(5) NOT NULL,
  `start_dep_date` date NOT NULL,
  `start_dep_time` time NOT NULL,
  `stop_sta_id` char(5) NOT NULL,
  `stop_arr_date` date NOT NULL,
  `stop_arr_time` time NOT NULL,
  PRIMARY KEY (`train_no`),
  UNIQUE KEY `train_name` (`train_name`),
  KEY `start_sta_id` (`start_sta_id`),
  CONSTRAINT `train_ibfk_1` FOREIGN KEY (`start_sta_id`) REFERENCES `station` (`sta_id`),
  CONSTRAINT `train_ibfk_2` FOREIGN KEY (`start_sta_id`) REFERENCES `station` (`sta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train`
--

LOCK TABLES `train` WRITE;
/*!40000 ALTER TABLE `train` DISABLE KEYS */;
INSERT INTO `train` VALUES ('A-10',10,'09783','2021-04-22','12:30:00','09782','2021-04-22','17:00:00'),('A-11',11,'09784','2021-04-23','10:00:00','09782','2021-04-23','14:00:00'),('A-12',12,'09785','2021-04-24','18:45:00','09781','2021-04-24','22:45:00'),('A-13',13,'09783','2021-04-25','23:15:00','09781','2021-04-26','02:15:00'),('A-14',14,'09781','2021-04-26','06:30:00','09785','2021-04-26','10:30:00');
/*!40000 ALTER TABLE `train` ENABLE KEYS */;
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
