-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: projet
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `acteur_episode`
--

DROP TABLE IF EXISTS `acteur_episode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acteur_episode` (
  `id_acteur_episode` int NOT NULL,
  `id_acteur` int DEFAULT NULL,
  `id_episode` int DEFAULT NULL,
  PRIMARY KEY (`id_acteur_episode`),
  KEY `id_acteur` (`id_acteur`),
  KEY `id_episode` (`id_episode`),
  CONSTRAINT `acteur_episode_ibfk_1` FOREIGN KEY (`id_acteur`) REFERENCES `acteur` (`id_acteur`),
  CONSTRAINT `acteur_episode_ibfk_2` FOREIGN KEY (`id_episode`) REFERENCES `episode` (`id_episode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acteur_episode`
--

LOCK TABLES `acteur_episode` WRITE;
/*!40000 ALTER TABLE `acteur_episode` DISABLE KEYS */;
INSERT INTO `acteur_episode` VALUES (1,1,1),(2,2,1),(3,1,2),(4,2,2),(5,1,7),(6,2,7),(7,1,8),(8,2,8),(9,1,13),(10,2,13),(11,1,14),(12,2,14),(13,3,3),(14,4,3),(15,3,4),(16,4,4),(17,3,9),(18,4,9),(19,3,10),(20,4,10),(21,3,15),(23,4,15),(24,5,5),(25,6,5),(26,5,6),(27,6,6),(28,5,11),(29,6,11),(30,5,12),(31,6,12);
/*!40000 ALTER TABLE `acteur_episode` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-03 10:16:14
