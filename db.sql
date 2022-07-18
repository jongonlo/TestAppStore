CREATE DATABASE  IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `test`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Category 1'),(2,'Category 2'),(3,'Category 3'),(4,'Category 4');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `item_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKihmv7q173gqi1xqgtsvw4s96m` (`item_id`),
  CONSTRAINT `FKihmv7q173gqi1xqgtsvw4s96m` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, Ut enim ad minim veniam,','Usuario 8',8),(2,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, Ut enim ad minim veniam,','Usuario 9',9),(3,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, Ut enim ad minim veniam,','Usuario 10',10),(4,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, Ut enim ad minim veniam,','Usuario 11',11),(5,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, Ut enim ad minim veniam,','Usuario 12',12),(6,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, Ut enim ad minim veniam,','Usuario 13',13),(7,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, Ut enim ad minim veniam,','Usuario 14',14),(8,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, Ut enim ad minim veniam,','Usuario 15',15),(9,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, Ut enim ad minim veniam,','Usuario 16',16),(10,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, Ut enim ad minim veniam,','Usuario 17',17),(11,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, Ut enim ad minim veniam,','Usuario 18',18),(12,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, Ut enim ad minim veniam,','Usuario 19',19),(13,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, Ut enim ad minim veniam,','Usuario 20',20),(14,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, Ut enim ad minim veniam,','Usuario 21',21),(15,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, Ut enim ad minim veniam,','Usuario 22',22),(16,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, Ut enim ad minim veniam,','Usuario 23',23),(17,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, Ut enim ad minim veniam,','Usuario 24',24),(18,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, Ut enim ad minim veniam,','Usuario 25',25);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cover_img` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `developer` varchar(255) DEFAULT NULL,
  `installed` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` float NOT NULL DEFAULT '1.99',
  `profile_img` varchar(255) DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2n9w8d0dp4bsfra9dcg0046l4` (`category_id`),
  CONSTRAINT `FK2n9w8d0dp4bsfra9dcg0046l4` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'1','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,','Desarrollador 1',_binary '\0','App 1',1.99,'1',4,1),(2,'2','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,','Desarrollador 2',_binary '\0','App 2',1.99,'2',3,2),(3,'3','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,','Desarrollador 3',_binary '\0','App 3',1.99,'3',5,3),(4,'4','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,','Desarrollador 4',_binary '\0','App 4',1.99,'1',2,4),(5,'5','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,','Desarrollador 5',_binary '\0','App 5',1.99,'2',3,1),(6,'6','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,','Desarrollador 6',_binary '\0','App 6',1.99,'3',4,2),(7,'7','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,','Desarrollador 7',_binary '\0','App 7',1.99,'1',2,3),(8,'8','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,','Desarrollador 8',_binary '\0','App 8',1.99,'2',1,4),(9,'9','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,','Desarrollador 9',_binary '\0','App 9',1.99,'3',3,1),(10,'10','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,','Desarrollador 10',_binary '\0','App 10',1.99,'1',2,2),(11,'11','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,','Desarrollador 11',_binary '\0','App 11',1.99,'2',5,3),(12,'12','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,','Desarrollador 12',_binary '\0','App 12',1.99,'3',5,4),(13,'13','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,','Desarrollador 13',_binary '\0','App 13',1.99,'1',1,1),(14,'14','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,','Desarrollador 14',_binary '\0','App 14',1.99,'2',2,2),(15,'15','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,','Desarrollador 15',_binary '\0','App 15',1.99,'3',4,3),(16,'16','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,','Desarrollador 16',_binary '\0','App 16',1.99,'1',3,4),(17,'17','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,','Desarrollador 17',_binary '\0','App 17',1.99,'2',2,1),(18,'18','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,','Desarrollador 18',_binary '\0','App 18',1.99,'3',5,2),(19,'19','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,','Desarrollador 19',_binary '\0','App 19',1.99,'1',3,3),(20,'20','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,','Desarrollador 20',_binary '\0','App 20',1.99,'2',2,4),(21,'21','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,','Desarrollador 21',_binary '\0','App 21',1.99,'3',5,1),(22,'22','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,','Desarrollador 22',_binary '\0','App 22',1.99,'1',3,2),(23,'23','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,','Desarrollador 23',_binary '\0','App 23',1.99,'2',2,3),(24,'24','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,','Desarrollador 24',_binary '\0','App 24',1.99,'3',1,4),(25,'25','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,','Desarrollador 25',_binary '\0','App 25',1.99,'1',4,1);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-18 10:32:47
