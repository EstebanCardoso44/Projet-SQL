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
-- Table structure for table `episode`
--

DROP TABLE IF EXISTS `episode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `episode` (
  `id_episode` int NOT NULL,
  `id_serie` int DEFAULT NULL,
  `numero_episode` int DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL,
  `description` text,
  `date_diffusion` date DEFAULT NULL,
  PRIMARY KEY (`id_episode`),
  KEY `id_serie` (`id_serie`),
  CONSTRAINT `episode_ibfk_1` FOREIGN KEY (`id_serie`) REFERENCES `serie` (`id_serie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episode`
--

LOCK TABLES `episode` WRITE;
/*!40000 ALTER TABLE `episode` DISABLE KEYS */;
INSERT INTO `episode` VALUES (1,1,1,'L\'hiver vient','Les Stark accueillent une visite royale. Jon Snow rencontre des sauvageons.','2011-04-17'),(2,1,2,'La route royale','Catelyn prend un prisonnier. Arya entend une conversation importante.','2011-04-24'),(3,2,1,'Chute libre','Walter White, un professeur de chimie, apprend qu\'il est atteint d\'un cancer du poumon.','2008-01-20'),(4,2,2,'Le choix','Walter décide de fabriquer de la méthamphétamine pour payer ses factures médicales.','2008-01-27'),(5,3,1,'Celui qui déménage','Ross doit déménager et les amis l\'aident à faire ses cartons.','1994-09-22'),(6,3,2,'Celui qui a un rôle','Joey obtient un rôle dans une série télévisée, mais le tournage pose problème.','1994-09-29'),(7,1,3,'Lord Snow','Jon Snow découvre les difficultés de sa nouvelle vie. Ned doit prendre une décision difficile.','2011-05-01'),(8,1,4,'Infirmes, bâtards et choses brisées','Tyrion Lannister arrive à Port-Réal et est confronté aux conséquences de ses actions.','2011-05-08'),(9,2,3,'Débris humains','Walter et Jesse tentent de se débarrasser d\'un corps. Skyler soupçonne que son mari lui cache quelque chose.','2008-02-10'),(10,2,4,'Retour aux sources','Walter et Jesse rencontrent un ancien camarade de classe, qui a réussi à s\'en sortir sans trafic de drogue.','2008-02-17'),(11,3,3,'Celui qui avait un coeur d\'artichaut','Ross essaie de sauver une relation amoureuse. Chandler doit faire face à sa phobie des chiens.','1994-10-06'),(12,3,4,'Celui qui ne supportait pas les adieux','Ross a des difficultés à accepter le départ de Rachel pour son nouveau travail.','1994-10-13'),(13,1,5,'Loup-garou','Ned découvre la vérité sur la mort de son prédécesseur. Daenerys apprend à être une Khaleesi.','2011-05-15'),(14,1,6,'Une couronne en or','Viserys menace de tuer sa soeur pour obtenir une armée. Robert récompense Ned pour son service.','2011-05-22'),(15,2,5,'Grillon du foyer','Walter rencontre Gus Fring, le propriétaire d\'un fast-food qui cache un trafic de drogue.','2009-03-08');
/*!40000 ALTER TABLE `episode` ENABLE KEYS */;
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
