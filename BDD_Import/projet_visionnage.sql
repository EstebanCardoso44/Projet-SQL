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
-- Table structure for table `visionnage`
--

DROP TABLE IF EXISTS `visionnage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visionnage` (
  `id_visionnage` int NOT NULL,
  `id_episode` int DEFAULT NULL,
  `id_utilisateur` int DEFAULT NULL,
  `date_visionnage` date DEFAULT NULL,
  `commentaire` text,
  `note` int DEFAULT NULL,
  PRIMARY KEY (`id_visionnage`),
  KEY `id_episode` (`id_episode`),
  KEY `id_utilisateur` (`id_utilisateur`),
  CONSTRAINT `visionnage_ibfk_1` FOREIGN KEY (`id_episode`) REFERENCES `episode` (`id_episode`),
  CONSTRAINT `visionnage_ibfk_2` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visionnage`
--

LOCK TABLES `visionnage` WRITE;
/*!40000 ALTER TABLE `visionnage` DISABLE KEYS */;
INSERT INTO `visionnage` VALUES (1,1,1,'2022-01-01','J ai adoré cet épisode !',9),(2,2,1,'2022-01-02','Pas mal',6),(3,3,1,'2022-01-05',NULL,7),(4,4,2,'2022-01-03','J ai trouvé cet épisode assez décevant',4),(5,5,2,'2022-01-06','Une bonne surprise, j ai beaucoup aimé !',8),(6,6,2,'2022-01-07',NULL,7),(7,7,3,'2022-01-04','Un épisode intéressant, mais un peu lent',6),(8,8,3,'2022-01-08','Pas mal, mais rien d extraordinaire',6),(9,9,3,'2022-01-10','Une grosse déception, je ne regarderai pas la suite',2),(10,10,1,'2022-01-11','Un épisode prometteur, j ai hâte de voir la suite !',8);
/*!40000 ALTER TABLE `visionnage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-03 10:16:15
